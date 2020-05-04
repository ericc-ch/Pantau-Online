<!DOCTYPE html>
<html>

<head>
   @include('layouts.murid.head')
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Navbar -->
        @include('layouts.murid.header')
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
       @include('layouts.murid.sidebar')

        <!-- Content Wrapper. Contains page content -->
        @yield('content')
        <!-- /.content-wrapper -->

        <!-- footer -->
       @include('layouts.murid.footer')
        <!-- end footer -->

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

   @include('layouts.murid.script')
   @yield('script')
</body>

</html>
