@extends('layouts.murid.main')

@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Set Jadwal</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="/murid">Home</a></li>
                        <li class="breadcrumb-item active">Set Jadwal</li>
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
                    <h3 class="card-title">Jadwal </h3>

                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <form method="post" class="form-data" id="form-data" action="{{route('jadwal.store')}}">
                        @csrf
                        <div class="row">
                            <div class="col-lg-12">
                            <label>Tanggal</label>
                                <input type="date" name="tanggal" id="tanggal" class="form-control"
                                    required="true">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Jam Mulai</label>
                                    <input type="time" name="jam_mulai" id="jam_mulai" class="form-control"
                                        required="true">
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Jam Akhir</label>
                                    <input type="time" name="jam_akhir" id="jam_akhir" class="form-control"
                                        required="true">
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Mata pelajaran</label>
                                    <select name="id_mapel" id="id_mapel" class="form-control" required="true">
                                        <option value=""></option>
                                        @foreach($mapel as $pel)
                                        <option value="{{$pel->id_mapel}}">{{$pel->nama_mapel}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Aktifitas</label>
                                    <select name="id_aktifitas" id="id_aktifitas" class="form-control" required="true">
                                        <option value=""></option>
                                        @foreach($aktifitas as $aktif)
                                        <option value="{{$aktif->id_aktifitas}}">{{$aktif->nama_aktifitas}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <button type="submit" name="simpan" id="simpan" class="btn btn-primary">
                                <i class="fa fa-save"></i> Simpan
                            </button>
                        </div>
                    </form>
                    <hr>

                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">Jadwal Hari Ini</h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="row">
                                    <div class="col-sm-12 table-responsive">
                                        <table class="table table hover">
                                            <thead>
                                                <tr>
                                                    <th>Nomor</th>
                                                    <th>Waktu</th>
                                                    <th>Aktifitas</th>
                                                    <th>Mapel</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($jadwal as $data)
                                                <tr>
                                                    <td>{{$loop->iteration}}</td>
                                                    <td>{{$data->jam_mulai}} - {{$data->jam_akhir}} </td>
                                                    <td>{{$data->aktifitas->nama_aktifitas}}</td>
                                                    <td>{{$data->mapel->nama_mapel}}</td>
                                                </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                            </div>
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
