<?php

use App\Http\Controllers\Api\Auth\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::post('register',[AuthController::class, 'registerUser'])->name('register');
Route::post('login',[AuthController::class, 'loginUser'])->name('login');
Route::post('resetPasswordRequest',[AuthController::class, 'ResetPasswordRequest'])->name('ResetPasswordRequest');
Route::post('otpVerification',[AuthController::class, 'otpVerification'])->name('otpVerification');
Route::post('resetPassword',[AuthController::class, 'resetPassword'])->name('resetPassword');




Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::group(['middleware'=>'auth:api'], function(){
    Route::post('updatePassword',[AuthController::class, 'updatePassword'])->name('updatePassword');
});
