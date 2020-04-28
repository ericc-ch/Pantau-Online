@extends('mapel.layout')

@section('content')

    <div class="row">

        <div class="col-lg-12 margin-tb">

            <div class="pull-left">

                <h2>Data Mapel</h2>

            </div>

            <div class="pull-right">

                <a class="btn btn-success" href="{{ route('mapel.create') }}"> Create New Mapel</a>

            </div>

        </div>

    </div>

    @if ($message = Session::get('success'))

        <div class="alert alert-success">

            <p>{{ $message }}</p>

        </div>

    @endif

    <table class="table table-bordered">

        <tr>

            <th>No</th>

            <th>Nama Mapel</th>

            <th width="280px">Action</th>

        </tr>

        @foreach ($mapel as $pel)

        <tr>

            <td>{{ ++$i }}</td>

            <td>{{ $pel->nama_mapel }}</td>

            <td>

                <form action="{{ route('mapel.destroy',$pel->id_mapel) }}" method="POST">

                    <a class="btn btn-info" href="{{ route('mapel.show',$pel->id_mapel) }}">Show</a>

                    <a class="btn btn-primary" href="{{ route('mapel.edit',$pel->id_mapel) }}">Edit</a>

                    @csrf

                    @method('DELETE')

                    <button type="submit" class="btn btn-danger">Delete</button>

                </form>

            </td>

        </tr>

        @endforeach

    </table>

    {!! $mapel->links() !!}

@endsection