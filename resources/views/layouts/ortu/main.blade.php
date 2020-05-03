<!DOCTYPE html>
<html>

<head>
   @include('layouts.ortu.head')
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Navbar -->
        @include('layouts.ortu.header')
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
       @include('layouts.ortu.sidebar')

        <!-- Content Wrapper. Contains page content -->
        @yield('content')
        <!-- /.content-wrapper -->

        <!-- footer -->
       @include('layouts.ortu.footer')
        <!-- end footer -->

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

   @include('layouts.ortu.script')
</body>

</html>
