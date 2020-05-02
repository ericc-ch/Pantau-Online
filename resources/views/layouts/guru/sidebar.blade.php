<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
        <img src="{{asset('assets/dist/img/AdminLTELogo.png')}}" alt="AdminLTE Logo"
            class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">DaftarCeria</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item has-treeview menu-open">
                    <a href="{{ route('guru.siswa.pj') }}" class="nav-link active">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Data Siswa {{ Auth::user()->guru->pj }}
                        </p>
                    </a>
                </li>
                @if( !empty(Auth::user()->guru->ps) )
                    <li class="nav-item has-treeview menu-open">
                        <a href="{{ route('guru.siswa.ps') }}" class="nav-link">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Data Siswa {{ Auth::user()->guru->ps }}
                            </p>
                        </a>
                    </li>
                @endif
                <li class="nav-item">
                    <a href="{{ route('guru.laporansiswa') }}" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Laporan Siswa {{ Auth::user()->guru->pj }}
                        </p>
                    </a>
                </li>
                @if( !empty(Auth::user()->guru->ps) )
                <li class="nav-item">
                    <a href="{{ route('guru.laporansiswa.rayon') }}" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Laporan Siswa {{ Auth::user()->guru->ps }}
                        </p>
                    </a>
                </li>
                @endif
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
