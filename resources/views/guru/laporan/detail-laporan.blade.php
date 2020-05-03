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
        </div>

        <table class="table table-bordered" id="table">
            <thead align="center">
                <tr>
                    <th>Hari, Tanggal</th>
                    <th>Aktifitas</th>
                    <th>Mata Pelajaran</th>
                    @if ( $pembuktian['tanggal_mengumpulkan'] == null )
                    <th>Tgl Mengumpulkan & Bukti</th>
                    @else
                    <th>Tgl Mengumpulkan</th>
                    <th>Bukti</th>
                    @endif
                </tr>
            </thead>
            <tbody align="center">
                @foreach( $laporans as $laporan )
                <tr>
                    <td>{{ $laporan->tanggal }}</td>
                    <td>{{ $laporan->activity->nama_aktifitas }}</td>
                    <td>{{ $laporan->mapel->nama_mapel }}</td>
                    @if ( $pembuktian['tanggal_mengumpulkan'] == null )
                        <td colspan="2" class="text-danger">Belum Mengumpulkan</td>
                    @else
                        <td>{{ $pembuktian['tanggal_mengumpulkan'] }}</td>
                        <td>{{ $pembuktian['bukti'] }}</td>
                    @endif
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