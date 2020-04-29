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
                    <form method="post" class="form-data" id="form-data" action="{{route('jadwal.store')}}">
                        @csrf
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>NIS</label>
                                    <input type="text" name="nama" id="nama" class="form-control"
                                        required="true" value="{{$murid->nis}}">
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input type="text" name="nama" id="nama" class="form-control"
                                        required="true" value="{{$murid->nis}}">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label>JK</label>
                                    <input type="radio" name="jk" value="L">Laki-laki 
                                    <input type="radio" name="jk" value="P">Perempuan
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label>Rombel</label>
                                    <select name="id_aktifitas" id="id_aktifitas" class="form-control" required="true">
                                        <option value=""></option>
                                        <option value="1">Sistem Informasi</option>
                                        <option value="2">Teknik Informatika</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label>Rayon</label>
                                    <select name="id_aktifitas" id="id_aktifitas" class="form-control" required="true">
                                        <option value=""></option>
                                        <option value="1">Sistem Informasi</option>
                                        <option value="2">Teknik Informatika</option>
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
