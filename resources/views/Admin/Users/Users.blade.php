@extends('layout.app')

@section('content')

<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                @if(session()->has('success'))
                    <div class="alert alert-success">
                        {{ session()->get('success') }}
                    </div>
                @endif
                    <div class="d-flex">
                        <div class="pt-4 pl-4">
                            <h3 class=""><b>All Users</b></h3>
                        </div>
                        <div class="ml-auto pt-4 ">
                            <!-- <button type="button" data-toggle="modal" data-target="#modal-default" class="btn btn-primary"> Add Lottery</button> -->
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example2" class="table table-bordered">
                            <thead>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>User Name</th>
                                    <th>Email</th>
                                    <th>Phone Number</th>
                                    <th>Is Social Login</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach($User as $users)
                                <tr>
                                    <td>{{ $users->id }}</td>
                                    <td>{{ $users->name }}</td>
                                    <td>{{ $users->email }}</td>
                                    <td>{{ $users->phoneNumber }}</td>
                                    <td>{{ $users->isSocial }}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Modal Start -->
<div class="modal fade" id="modal-default">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">User</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <div class="modal-body">
            <form id="quickForm1" action="{{ url('Add_lottery') }}" method="POST" enctype="multipart/form-data">
                @csrf
                    <input type="hidden" name="id" id="id">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Lottery Type</label>
                        <select name="lottery_type" id="lottery_type" class="form-control">
                            <option value="">Select</option>
                            <option value="ThreeDigits">Three Digits</option>
                            <option value="FourDigits">Four Digits</option>
                            <option value="CardDigits">Card Digits</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Lottery Date</label>
                        <input type="date" name="lottery_date" onchange="loadFile(event)" class="form-control" id="lottery_date" >
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Lottery Time</label>
                        <input type="time" name="lottery_time" onchange="loadFile(event)" class="form-control" id="lottery_time" >
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Winning Digit</label>
                        <input type="number" name="winningdigit" onchange="loadFile(event)" class="form-control" id="winningdigit" >
                    </div>
                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
            </form>
        </div>

        </div>
        <!-- /.modal-content -->
    </div>
</div>

<!-- Modal End -->

@endsection
