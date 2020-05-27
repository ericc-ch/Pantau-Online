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
                <h3 class="card-title">Data siswa</h3>
            </div>
            <div class="card-body">
                @isset($edit)
                <form method='post' action='/admin/siswa/{{$edit->nis}}'>
                @else
                <form action="{{route('admin.siswa.store')}}" class="form-data" method="post">
                 @endisset
                    
                    {{ csrf_field() }}
                    <table>
                        <tr>
                            <td>NIS</td>
                            <td><input type="text" name="nis" id="nis" value="@isset($edit) {{$edit->nis}} @endisset"></td>
                        </tr>
                        <tr>
                            <td>Nama</td>
                            <td><input type="text" name="nama" id="nama" value="@isset($edit) {{$edit->nama}} @endisset"></td>
                        </tr>
                        <tr>
                            <td>JK</td>
                            <td>
                                <select name='jk'>
                                    <option value="L" >Laki-laki</option>
                                    <option value="P" >Perempuan</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Rombel</td>
                            <td><input type="text" name="rombel" id="rombel" value="@isset($edit) {{$edit->rombel}} @endisset"></td>
                        </tr>
                        <tr>
                            <td>Rayon</td>
                            <td><input type="text" name="rayon" id="rayon" value="@isset($edit) {{$edit->rayon}} @endisset"></td>
                        </tr>
                        <tr>
                            <td>ID Akun</td>
                            <td><input type="text" name="id_akun" id="id_akun" value="@isset($edit) {{$edit->id_akun}} @endisset"></td>
                        </tr>
                    </select>
                </td>
            </tr>
            <tr>
                <td></td>
                @isset($edit)
                {{method_field('PUT')}}
                <td><input type="submit" value="Update"><a href="/admin/siswa">Batal</a></td>
                @else
                <td><input type="submit" value="Simpan"></td>
                @endisset
                
            </tr>
                    </table>
                </form>
            </div>
        </div>
        
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Data siswa</h3>
            </div>
            <div class="card-body">
                <table id="table" class="table table-bordered">
                    <thead>
                        <tr>
                            <th style="width: 5%">No</th>
                            <th>Nama</th>
                            <th>NIS</th>
                            <th>Rombel</th>
                            <th>Rayon</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach( $siswas as $siswa )
                        <tr>
                            <td align="center">{{ $loop->iteration }}</td>
                            <td>{{ $siswa->nama }}</td>
                            <td>{{ $siswa->nis }}</td>
                            <td>{{ $siswa->rombel }}</td>
                            <td>{{ $siswa->rayon }}</td>
                            <td>
                                <a href="/admin/siswa/{{$siswa->nis}}/edit">Edit</a>
                            </td>
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
