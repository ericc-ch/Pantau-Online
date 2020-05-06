@extends('layouts.murid.main')

@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Edit Jadwal</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="/murid">Home</a></li>
                        <li class="breadcrumb-item active">Edit Jadwal</li>
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
                    <form method="post" class="form-data" id="form-data" action="{{route('jadwal.update', $jadwal->id_jadwal)}}">
                        @method('patch')
                        @csrf
                        <div class="row">
                            <div class="col-lg-12">
                                <label>Tanggal <span class="text-danger">*</span></label>
                                <input type="date" name="tanggal" id="tanggal" class="form-control" required="true" value="{{$jadwal->tanggal}}">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Jam Mulai <span class="text-danger">*</span></label>
                                    <input type="time" name="jam_mulai" id="jam_mulai" class="form-control"
                                        required="true" value="{{$jadwal->jam_mulai}}">
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Jam Akhir <span class="text-danger">*</span></label>
                                    <input type="time" name="jam_akhir" id="jam_akhir" class="form-control"
                                        required="true" value="{{$jadwal->jam_akhir}}">
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Mata pelajaran <span class="text-danger">*</span></label>
                                    <select name="id_mapel" id="mapel" class="form-control" required="true">
                                        @foreach($mapel as $pel)
                                        @if($jadwal->id_mapel == $pel->id_mapel)
                                        <option value="{{$pel->id_mapel}}" selected>{{$pel->nama_mapel}}</option>
                                        @else
                                        <option value="{{$pel->id_mapel}}">{{$pel->nama_mapel}}</option>
                                        @endif
                                        @endforeach
                                    </select>
                                    <p class="text-danger">{{ $errors->first('id_mapel') }}</p>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Aktifitas <span class="text-danger">*</span></label>
                                    <select name="id_aktifitas" id="aktifitas" class="form-control" required="true">
                                    </select>
                                    <p class="text-danger">{{ $errors->first('id_aktifitas') }}</p>
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

@section('script')
<script>
    $( document ).ready(function() {
        var id_mapel = $('#mapel').val();
        $.ajax({
            url: "{{ route('murid.chained') }}",
            type: "GET",
            data: {
                id_mapel: id_mapel
            },
            success: function (html) {
                $('#aktifitas').empty()
                $.each(html.data, function (key, item) {
                    $('#aktifitas').append('<option value="' + item.id_aktifitas + '">' +
                        item.nama_aktifitas + '</option>')
                })
            }
        });
    });
    $('#mapel').on('change', function () {
        $.ajax({
            url: "{{ route('murid.chained') }}",
            type: "GET",
            data: {
                id_mapel: $(this).val()
            },
            success: function (html) {
                $('#aktifitas').empty()
                $('#aktifitas').append('<option value="">Pilih Aktifitas</option>')
                $.each(html.data, function (key, item) {
                    $('#aktifitas').append('<option value="' + item.id_aktifitas + '">' +
                        item.nama_aktifitas + '</option>')
                })
            }
        });
    });
</script>
@endsection
