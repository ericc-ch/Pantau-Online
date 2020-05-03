@extends('layouts.guru.main')

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                   
                </div><!-- /.col -->
                <div class="col-sm-6">
                    
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
    <div class="callout callout-info">
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label for="nis">NIS</label>
                    <input type="text" name="nis" id="nis" readonly class="form-control" value="{{ $siswa->nis }}">
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" name="nama" id="nama" readonly class="form-control" value="{{ $siswa->nama }}">
                </div>
            </div>
            @if (request()->routeIs('guru.laporansiswa.detail'))
            <div class="col-md-4">
                <div class="form-group">
                    <label for="rayon">Rayon</label>
                    <input type="text" name="rayon" id="rayon" readonly class="form-control" value="{{ $siswa->rayon }}">
                </div>
            </div>
            @else
            <div class="col-md-4">
                <div class="form-group">
                    <label for="rombel">Rombel</label>
                    <input type="text" name="rombel" id="rombel" readonly class="form-control" value="{{ $siswa->rombel }}">
                </div>
            </div>
            @endif
        </div>

        <table class="table table-bordered" id="table">
            <thead align="center">
                <tr>
                    <th>Hari, Tanggal</th>
                    <th>Aktifitas</th>
                    <th>Mata Pelajaran</th>
                    <th>Tgl Mengumpulkan</th>
                    <th>Bukti</th>
                    <th>Verifikasi ortu</th>
                </tr>
            </thead>
            <tbody align="center">
                @foreach( $laporans as $laporan )
                <tr>
                    <td>{{ $laporan->tanggal }}</td>
                    <td>{{ $laporan->aktifitas->nama_aktifitas }}</td>
                    <td>{{ $laporan->mapel->nama_mapel }}</td>
                    <td>{{ $laporan->updated_at->format('d M Y') }}</td>
                    <td>{{ $laporan->bukti }}</td>
                    <td>{{ $laporan->validasi == null ? 'Belum diverifikasi Ortu' : $laporan->validasi }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    </section>
    <!-- /.content -->
</div>
@endsection

@section('js')
    <script>
        $(function () {
            $("#table").DataTable();
        });
    </script>
@endsection