@extends('mapel.layout')

@section('content')

    <div class="row">

        <div class="col-lg-12 margin-tb">

            <div class="pull-left">

                <h2> Show Mapel</h2>

            </div>

            <div class="pull-right">

                <a class="btn btn-primary" href="{{ route('mapel.index') }}"> Back</a>

            </div>

        </div>

    </div>

   

    <div class="row">

        <div class="col-xs-12 col-sm-12 col-md-12">

            <div class="form-group">

                <strong>Nama Mapel:</strong>
                
                {{ $mapel->id_mapel }}
                {{ $mapel->nama_mapel }}

            </div>

        </div>

    </div>

@endsection