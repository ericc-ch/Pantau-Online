<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
        <span class="brand-text font-weight-light">Monitoring Agenda Harian<br><center>Siswa</center></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
               @if( !empty(Auth::user()->guru->pj) )
                <li class="nav-item has-treeview menu-open">
                    <a href="{{ route('guru.siswa.pj') }}" class="nav-link active">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Siswa {{ Auth::user()->guru->pj }}
                        </p>
                    </a>
                </li>
                @endif
                @if( !empty(Auth::user()->guru->ps) )
                    @if ( strpos(Auth::user()->guru->ps, ',') )
                        <li class="nav-item has-treeview menu-open">
                            <a href="{{ route('guru.siswa.ps') }}" class="nav-link">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Siswa {{ explode(',', Auth::user()->guru->ps)[0] }}
                                </p>
                            </a>
                        </li>
                        <li class="nav-item has-treeview menu-open">
                            <a href="{{ route('guru.siswa.ps.kedua') }}" class="nav-link">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Siswa {{ explode(',', Auth::user()->guru->ps)[1] }}
                                </p>
                            </a>
                        </li>
                    @else
                        <li class="nav-item has-treeview menu-open">
                            <a href="{{ route('guru.siswa.ps') }}" class="nav-link">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Siswa {{ Auth::user()->guru->ps }}
                                </p>
                            </a>
                        </li>
                    @endif
                @endif
                @if( !empty(Auth::user()->guru->pj) )
                <li class="nav-item">
                    <a href="{{ route('guru.laporansiswa') }}" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Laporan Siswa {{ Auth::user()->guru->pj }}
                        </p>
                    </a>
                </li>
                @endif
                @if( !empty(Auth::user()->guru->ps) )
                    @if ( strpos(Auth::user()->guru->ps, ',') )
                        <li class="nav-item">
                            <a href="{{ route('guru.laporansiswa.rayon') }}" class="nav-link">
                                <i class="nav-icon fas fa-th"></i>
                                <p>
                                    Laporan Siswa {{ explode(',', Auth::user()->guru->ps)[0] }}
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('guru.laporansiswa.rayon.kedua') }}" class="nav-link">
                                <i class="nav-icon fas fa-th"></i>
                                <p>
                                    Laporan Siswa {{ explode(',', Auth::user()->guru->ps)[1] }}
                                </p>
                            </a>
                        </li>
                    @else
                        <li class="nav-item">
                            <a href="{{ route('guru.laporansiswa.rayon') }}" class="nav-link">
                                <i class="nav-icon fas fa-th"></i>
                                <p>
                                    Laporan Siswa {{ Auth::user()->guru->ps }}
                                </p>
                            </a>
                        </li>
                    @endif
                @endif
                 @if( !empty(Auth::user()->guru->id_mapel) )
                    @if(Auth::user()->guru->id_mapel == 'Pendidikan Agama Islam' || Auth::user()->guru->id_mapel == 'Pendidikan Kewarganegaraan' || Auth::user()->guru->id_mapel == 'PJOK' || Auth::user()->guru->id_mapel == 'Sejarah Indonesia')
                    <li class="nav-item">
                            <a href="{{ route('guru.laporansiswa.seluruh') }}" class="nav-link">
                                <i class="nav-icon fas fa-th"></i>
                                <p>
                                    Laporan Seluruh siswa
                                </p>
                            </a>
                        </li>
                    @endif
                @endif
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
