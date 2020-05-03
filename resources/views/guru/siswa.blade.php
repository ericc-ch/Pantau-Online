@extends('layouts.guru.main')

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
              <h5><i class="fas fa-info"></i> Note:</h5>
              <table id="table" class="table table-bordered">
                  <thead>
                      <tr>
                          <th>No</th>
                          <th>NIS</th>
                          <th>Nama</th>
                          <th>Rombel</th>
                          <th>Rayon</th>
                      </tr>
                  </thead>
                  <tbody>
                      @foreach( $siswas as $siswa )
                      <tr>
                          <td>{{ $loop->iteration }}</td>
                          <td>{{ $siswa->nis }}</td>
                          <td>{{ $siswa->nama }}</td>
                          <td>{{ $siswa->rombel }}</td>
                          <td>{{ $siswa->rayon }}</td>
                      </tr>
                      @endforeach
                  </tbody>
              </table>
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