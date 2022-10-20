<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\Auth\LoginRequest;
use App\Mail\OTPMail;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function registerUser(Request $request){

        if($request->isSocial == 0 || $request->isSocial == null){

            $messages = [
                'fullName.required' => 'FullName is required',
                'email.required' => 'Email is required',
                'email.email' => 'Invalid Email Format',
                'email.unique' => 'This email has already been taken',
                'phone.numeric' => 'Invalid phone number format',
                'password.required' => 'Password is required',
              ];

            $validator = Validator::make($request->all(), [
                'fullName' => 'required',
                'email' => 'required|email|unique:users',
                'phone' => 'numeric',
                'password' => 'required',
                'isSocial' => 'numeric',
            ], $messages);

            if ($validator->fails()) {
                return response()->json($validator->errors(), 422);
                // return response()->json($validator->errors(), 422);
            }
            $user = new User();
            $user->name = $request->input('fullName');
            $user->email = $request->input('email');
            $user->phoneNumber = $request->input('phoneNumber');
            $user->password = Hash::make($request->input('password'));
            $user->isSocial = '0';
            $user->save();
        } else if($request->isSocial == 1){

            $messages = [
                'email.required' => 'Email is required',
                'email.email' => 'Invalid Email Format',
                'email.unique' => 'This email has already been taken',
              ];

            $validator = Validator::make($request->all(), [
                'email' => 'required|email|unique:users',
                'isSocial' => 'numeric',
            ],$messages);
            if ($validator->fails()) {

                return response()->json($validator->errors(), 422);
            }

            $user = new User();
            $user->name = $request->input('fullName');
            $user->email = $request->input('email');
            if($request->input('phoneNumber')){
            $user->phoneNumber = $request->input('phoneNumber');
            }
            if($request->input('password')){
                $user->phoneNumber = $request->input('password');
            }
            $user->isSocial = '1';
            $user->save();
        }
         return response()->json(['message'=>'User Registered successfully','user'=>$user]);
    }

    public function loginUser(Request $request)
    {
        // dd($request->all());
        $email =  $request->input('email');
        $password = Hash::make($request->input('password'));
        $isSocial = $request->input('isSocial');

        if($request->isSocial == 0)
        {
            $messages = [
                'email.required' => 'Email is required',
                'email.email' => 'Invalid Email Format',
                'password.required' => 'Password is required',
              ];

            $validator = Validator::make($request->all(), [
                'email' => 'required|email',
                'password' => 'required',
            ], $messages);


            if ($validator->fails()) {
                return response()->json($validator->errors(), 422);
            }


            else{
                $user = User::where('email', '=',  $email)->first();
                if(!$user || !Hash::check($request->password, $user->password))
                {
                    // dd('not set');
                    return response([
                        'message' => ['These credentials does not match our records']
                    ], 404);
                }
                else
                {
                    $token = $user->createToken('my-app-token')->plainTextToken;

                    $user->update([
                        $user->accessToken = $token,
                    ]);

                    $response = [
                        'user' => $user,
                        'token' => $token
                    ];
                    return response($response, 201);
                }

               }

            }
    }

    public function ResetPasswordRequest(Request $request)
    {
        $email = $request->input('email');

        $messages = [
            'email.required' => 'Email is required',
            'email.email' => 'Invalid Email Format',
          ];

        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
        ], $messages);


        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        $user = User::where('email', '=',  $email)->first();

        if(!$user)
        {
            return response([
                'message' => ['This email does not match our record']
            ], 422);
        }
        else
        {

            $otp = rand(123165,787934);
            Mail::to($user->email)->send(new OTPMail($otp));
                if (Mail::failures()) {
                    return response([
                        'otpErrorMessage' => ['Sorry! Please try again later']
                    ], 422);
                }
                else
                {
                    $user->update([
                        $user->otp = $otp,
                    ]);
                     return response([
                        'otpErrorMessage' => ['OTP send successfully on your email address please check email inbox']
                    ], 201);
                }
        }

    }

    public function otpVerification(Request $request)
    {
        $email = $request->input('email');
        $userPinCode = $request->input('pinCode');

        $messages = [
            'email.required' => 'Email is required',
            'email.email' => 'Invalid Email Format',
            'pinCode.required' => 'OTP verification Code is Required',
            'pinCode.digits' => 'Please input 6 digits OTP verification Code',
          ];

        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'pinCode' => 'required|digits:6',
        ], $messages);


        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        $user = User::where('email', '=',  $email)->first();

        if(!$user)
        {
            return response([
                'message' => ['This email does not match our record']
            ], 404);
        }
        else
        {
            if ($user->otp == $userPinCode)
            {
                return response([
                    'otpVerified' => 1,
                ], 201);
            }
            else
            {
                return response([
                    'otpNotVerified' => 0,
                ], 422);
            }
        }

    }

    public function resetPassword(Request $request)
    {
        $email = $request->input('email');
        $userPinCode = $request->input('pinCode');
        $newPassword = $request->input('newPassword');

        $messages = [
            'email.required' => 'Email is required',
            'email.email' => 'Invalid Email Format',
            'pinCode.required' => 'OTP verification Code is Required',
            'pinCode.digits' => 'Please input 6 digits OTP verification Code',
            'newPassword.required' => 'Password is required',
          ];

        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'pinCode' => 'required|digits:6',
            'newPassword' => 'required',
        ], $messages);


        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        $user = User::where('email', '=',  $email)->first();

        if(!$user)
        {
            return response([
                'message' => ['This email does not match our record']
            ], 404);
        }
        else
        {
            if (!($user->otp == $userPinCode))
            {
                return response([
                    'otpNotVerified' => ['Please input 6 digits valid otp'],
                ], 422);
            }
            else
            {
                $user->update([
                    $user->password = Hash::make($newPassword),
                    $user->otp = '',
                ]);

                $response = [
                    'message' => ['Password Updated Successfully'],
                ];
                return response($response, 201);
            }
        }

    }

    public function updatePassword(Request $request)
    {
        $token = $request->bearerToken();
        $user = User::where('accessToken',$token)->where('email',$request->input('email'))->first();
        // return $user;
        if($user){

        $email = $request->input('email');
        $oldPassword = $request->input('oldPassword');
        $newPassword = $request->input('newPassword');

        $messages = [
            'email.required' => 'Email is required',
            'email.email' => 'Invalid Email Format',
            'oldPassword.required' => 'Old password is Required',
            'newPassword.required' => 'New password is required',
          ];

        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'oldPassword' => 'required',
            'newPassword' => 'required',
        ], $messages);


        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        if(!$user)
        {
            return response([
                'message' => ['This email does not match our record']
            ], 404);
        }
        else
        {
            if(!Hash::check($oldPassword, $user->password))
            {
                return response([
                    'message' => 'This password does not match our record',
                ], 404);
            }
            else
            {
                $user->update([
                    $user->password = Hash::make($newPassword),
                ]);
                 return response([
                    'passwordUpdated' => 'Password Updated Successfully',
                ], 201);
            }
        }
        }else{
            return response([
                'message' => ['you are not logged in']
            ], 404);
        }
    }

}

