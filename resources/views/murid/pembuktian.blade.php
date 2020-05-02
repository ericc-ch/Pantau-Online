@extends('layouts.murid.main')

@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Pembuktian</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="/murid">Home</a></li>
                        <li class="breadcrumb-item active">Pembuktian</li>
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
                    <div class="row">
                        <div class="col-12">
                                <div class="row">
                                    <div class="col-sm-12 table-responsive">
                                        <table class="table table hover">
                                            <thead>
                                                <tr>
                                                    <th>Nomor</th>
                                                    <th>Jam Mulai</th>
                                                    <th>Jam Akhir</th>
                                                    <th>Aktifitas</th>
                                                    <th>Mapel</th>
                                                    <th>Bukti</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($detailjadwal as $data)
                                                <tr>
                                                    <td>{{$loop->iteration}}</td>
                                                    <td>{{$data->jam_mulai}}</td>
                                                    <td>{{$data->jam_akhir}}</td>
                                                    <td>{{$data->activity->nama_aktifitas}}</td>
                                                    <td>{{$data->mapel->nama_mapel}}</td>
                                                    <td>
                                                        <form method="POST" enctype="multipart/form-data" action="{{route('pembuktian.store')}}">
                                                            @csrf
                                                            <input type="file" name="bukti" required>
                                                            <input type="hidden" name="id_aktifitas" value="{{$data->id_aktifitas}}">
                                                            <input type="hidden" name="id_jadwal" value="{{$data->id_jadwal}}">
                                                            <input type="hidden" name="mapel" value="{{$data->mapel->nama_mapel}}">
                                                            <input type="hidden" name="aktifitas" value="{{$data->activity->nama_aktifitas}}">
                                                            <button type="submit" class="btn btn-primary">Upload</button>
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
