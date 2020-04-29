@extends('aktifitas.layout')

@section('content')

    <div class="row">

        <div class="col-lg-12 margin-tb">

            <div class="pull-left">

                <h2>Laravel 5.8 CRUD Example from scratch - ItSolutionStuff.com</h2>

            </div>

            <div class="pull-right">

                <a class="btn btn-success" href="{{ route('aktifitas.create') }}"> Create New Aktifitas</a>

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

            <th>Nama Aktifitas</th>

            <th width="280px">Action</th>

        </tr>

        @foreach ($aktifitas as $aktif)

        <tr>

            <td>{{ ++$i }}</td>
            
            <td>{{ $aktif->nama_aktifitas }}</td>

            <td>

                <form action="{{ route('aktifitas.destroy',$aktif->id_aktifitas) }}" method="POST">

                    <a class="btn btn-info" href="{{ route('aktifitas.show',$aktif->id_aktifitas) }}">Show</a>

                    <a class="btn btn-primary" href="{{ route('aktifitas.edit',$aktif->id_aktifitas) }}">Edit</a>

                    @csrf
                    @method('DELETE')

                    <button type="submit" class="btn btn-danger">Delete</button>

                </form>

            </td>

        </tr>

        @endforeach

    </table>

    {!! $aktifitas->links() !!}

@endsection