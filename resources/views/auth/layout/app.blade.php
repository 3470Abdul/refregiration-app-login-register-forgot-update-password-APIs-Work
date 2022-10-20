<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE 3 | Validation Form</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ url('Admin/plugins/fontawesome-free/css/all.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ url('Admin/Admin/css/adminlte.min.css') }}">

    <!-- DataTables -->
    <link rel="stylesheet" href="{{ url('Admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ url('Admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ url('Admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ url('dist/css/adminlte.min.css') }}">
</head>
    <body class="hold-transition sidebar-mini">

        @include('layout.header')

        @yield('content')

        @include('layout.footer')
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- jQuery -->
        <script src="{{url('Admin/plugins/jquery/jquery.min.js')}}"></script>
        <!-- Bootstrap 4 -->
        <script src="{{url('Admin/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
        <!-- jquery-validation -->
        <script src="{{url('Admin/plugins/jquery-validation/jquery.validate.min.js')}}"></script>
        <script src="{{url('Admin/plugins/jquery-validation/additional-methods.min.js')}}"></script>
        <!-- AdminLTE App -->
        <script src="{{url('Admin/Admin/js/adminlte.min.js')}}"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="{{url('Admin/Admin/js/demo.js')}}"></script>
        <!-- Page specific script -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

        <script src="{{url('Admin/plugins/datatables/jquery.dataTables.min.js')}}"></script>
        <script src="{{url('Admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
        <script src="{{url('Admin/plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
        <script src="{{url('Admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>
        <script src="{{url('Admin/plugins/datatables-buttons/js/dataTables.buttons.min.js')}}"></script>
        <script src="{{url('Admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js')}}"></script>
        <script src="{{url('Admin/plugins/jszip/jszip.min.js')}}"></script>
        <script src="{{url('Admin/plugins/pdfmake/pdfmake.min.js')}}"></script>
        <script src="{{url('Admin/plugins/pdfmake/vfs_fonts.js')}}"></script>
        <script src="{{url('Admin/plugins/datatables-buttons/js/buttons.html5.min.js')}}"></script>
        <script src="{{url('Admin/plugins/datatables-buttons/js/buttons.print.min.js')}}"></script>
        <script src="{{url('Admin/plugins/datatables-buttons/js/buttons.colVis.min.js')}}"></script>




        <script>
       
            var loadFile = function(event) {
                var image = document.getElementById('output');
                image.src = URL.createObjectURL(event.target.files[0]);
            };

            var APP_URL = {!! json_encode(url('/')) !!}
            
            $(".lotterywinner").on('click',function(){

                $('#id').val($(this).attr('data-id'));
                $('#userName').val($(this).attr('data-userName'));
                $('#bet_type').val($(this).attr('data-betType'));
                $('#amount').val($(this).attr('data-winnerAmount'));
                // document.getElementById("output").src = APP_URL+ "/product/product/"+$(this).attr('data-product_pic');
            })



            $(".edit11").on('click',function(){
                console.log($(this).attr('data-lottery_DateTime_Start'));
                $('#id').val($(this).attr('data-id'));
                $('#lottery_type').val($(this).attr('data-lotteryType'));
                $('#lottery_Start_Date_time').val($(this).attr('data-lottery_DateTime_Start'));
                $('#lottery_End_Date_time').val($(this).attr('data-lottery_DateTime_End'));
                $('#winningdigit').val($(this).attr('data-winningDigits'));

                // document.getElementById("output").src = APP_URL+ "/product/product/"+$(this).attr('data-product_pic');
            })

            $('.show-alert-delete-box').click(function(event){
                var form =  $(this).closest("form");
                var name = $(this).data("name");
                event.preventDefault();
                swal({
                    title: "Are you sure you want to delete this record?",
                    text: "If you delete this, it will be gone forever.",
                    icon: "warning",
                    type: "warning",
                    buttons: ["Cancel","Yes!"],
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((willDelete) => {
                    if (willDelete) {
                        form.submit();
                    }
                });
            });
            
            $(function () {
                $("#example1").DataTable({
                    "responsive": true, "lengthChange": false, "autoWidth": false,
                    "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
                }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
                $('#example2').DataTable({
                    "paging": true,
                    "lengthChange": false,
                    "searching": true,
                    "ordering": true,
                    "info": true,
                    "autoWidth": false,
                    "responsive": true,
                });
            });
        </script>
        <script src="{{url('Admin/plugins/chart.js/Chart.min.js')}}"></script>
    </body>
</html>    