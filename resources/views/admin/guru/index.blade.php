@extends('layouts.admin.main')

@section('content')
<div class="content-wrapper">
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
    <section class="content">
        <!-- Main content -->
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Data Guru</h3>
            </div>
            <div class="card-body">
                <table id="table" class="table table-bordered">
                    <thead>
                        <tr>
                            <th style="width: 5%">No</th>
                            <th>Nama</th>
                            <th>NIP</th>
                            <th>PS</th>
                            <th>PJ</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach( $gurus as $guru )
                        <tr>
                            <td align="center">{{ $loop->iteration }}</td>
                            <td>{{ $guru->nama }}</td>
                            <td>{{ $guru->nip }}</td>
                            <td>{{ $guru->ps }}</td>
                            <td>{{ $guru->pj }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>

            </div>
            <!-- /.card-body -->

            <!-- /.card-footer-->
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
