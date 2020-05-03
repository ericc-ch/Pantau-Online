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
                <h3 class="card-title">Data orang tua siswa</h3>
            </div>
            <div class="card-body">
                <table id="table" class="table table-bordered">
                    <thead>
                        <tr>
                            <th style="width: 5%">No</th>
                            <th>Nama</th>
                            <th>NIK</th>
                            <th>Nama Anak</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse( $ortus as $ortu )
                        <tr>
                            <td align="center">{{ $loop->iteration }}</td>
                            <td>{{ $ortu->nama }}</td>
                            <td>{{ $ortu->nik }}</td>
                            <td>{{ $ortu->siswa->nama }}</td>
                        </tr>
                        @empty
                            <p>No Data</p>
                        @endforelse
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
