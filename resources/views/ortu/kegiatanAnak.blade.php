@extends('layouts.ortu.main')

@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Kegiatan Anak</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="/murid">Home</a></li>
                        <li class="breadcrumb-item active">Kegiatan Anak</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card card-default">
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-title">Jadwal </h3>
                        </div>
                        <div class="col-md-6">
                            <form action="{{route('ortu.alihkan')}}" class="form-data" method="post">
                                @csrf
                                <div class="row">
                                    <div class="col-sm-10">
                                        <input type="date" name="tanggal" id="tanggal"
                                            class="form-control float-lg-right" required="true">
                                    </div>
                                    <div class="col-sm-2">
                                        <button type="submit" id="simpan" class="btn btn-primary float-lg-right">
                                            <i class="fa fa-seacrh"></i> cari
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>


                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="row">
                                <div class="col-sm-12 table-responsive">
                                    <table class="table table hover">
                                        <thead>
                                            <tr>
                                                <th>Nomor</th>
                                                <th>Waktu</th>
                                                <th>Aktifitas</th>
                                                <th>Mapel</th>
                                                <th>Bukti</th>
                                                <th>Status Verifikasi</th>
                                                <th>Verifikasi</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($jadwal as $data)
                                            <tr>
                                                <td>{{$loop->iteration}}</td>
                                                <td>{{$data->jam_mulai}} - {{$data->jam_akhir}}</td>
                                                <td>{{$data->aktifitas->nama_aktifitas}}</td>
                                                <td>{{$data->mapel->nama_mapel}}</td>
                                                <td>
                                                    @if ($data->bukti)
                                                    <img src="{{asset('storage/bukti/'.$data->siswa->rombel.'/'.$data->mapel->nama_mapel.'/'.$data->bukti)}}" width="70px">
                                                    @else
                                                        Belum ada bukti
                                                    @endif
                                                </td>
                                                <td>
                                                    @if ($data->bukti)
                                                        @if ($data->validasi == 'yes')
                                                            <div class="alert alert-success">
                                                                Sudah
                                                            </div>
                                                        @else
                                                            <div class="alert alert-danger">
                                                                Belum
                                                            </div>
                                                        @endif
                                                    @else
                                                        Belum ada bukti
                                                    @endif
                                                </td>
                                                <td>
                                                <form method="POST"
                                                        action="{{route('ortu.update', $data->id_jadwal)}}">
                                                        @method('patch')
                                                        @csrf
                                                        <button type="submit" class="btn btn-primary">Verifikasi</button>
                                                    </form>
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- /.card-body -->
                            <!-- /.card -->
                        </div>
                    </div>

                </div>
                <!-- /.row -->
            </div>
            <!-- /.card-body -->

        </div>
</div>
</section>
<!-- /.content -->
</div>

@endsection
