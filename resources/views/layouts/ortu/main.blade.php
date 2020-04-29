<!DOCTYPE html>
<html>

<head>
   @include('layouts.guru.head')
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Navbar -->
        @include('layouts.guru.header')
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
       @include('layouts.guru.sidebar')

        <!-- Content Wrapper. Contains page content -->
        @yield('content')
        <!-- /.content-wrapper -->

        <!-- footer -->
       @include('layouts.guru.footer')
        <!-- end footer -->

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

   @include('layouts.guru.script')
</body>

</html>
