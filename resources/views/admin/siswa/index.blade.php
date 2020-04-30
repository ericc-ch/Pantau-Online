@extends('layouts.admin.main')

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
        {{-- <h5><i class="fas fa-info"></i> Note:</h5> --}}
        <table id="table" class="table table-bordered">
            <thead>
                <tr>
                    <th style="width: 5%">No</th>
                    <th>Nama</th>
                    <th>NIS</th>
                    <th>Rombel</th>
                    <th>Rayon</th>
                </tr>
            </thead>
            <tbody>
                @foreach( $users as $user )
                <tr>
                    <td align="center">{{ $loop->iteration }}</td>
                    <td>{{ $user->nama }}</td>
                    <td>{{ $user->nis }}</td>
                    <td>{{ $user->rombel }}</td>
                    <td>{{ $user->rayon }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
              
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