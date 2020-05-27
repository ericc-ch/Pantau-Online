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
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label for="nis">NIS</label>
                    <input type="text" name="nis" id="nis" readonly class="form-control" value="{{ $siswa->nis }}">
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" name="nama" id="nama" readonly class="form-control" value="{{ $siswa->nama }}">
                </div>
            </div>
            @if (request()->routeIs('guru.laporansiswa.detail'))
            <div class="col-md-4">
                <div class="form-group">
                    <label for="rayon">Rayon</label>
                    <input type="text" name="rayon" id="rayon" readonly class="form-control" value="{{ $siswa->rayon }}">
                </div>
            </div>
            @else
            <div class="col-md-4">
                <div class="form-group">
                    <label for="rombel">Rombel</label>
                    <input type="text" name="rombel" id="rombel" readonly class="form-control" value="{{ $siswa->rombel }}">
                </div>
            </div>
            @endif
        </div>
        <div class="table-responsive">
        <table class="table table-bordered" id="table">
            <thead align="center">
                <tr>
                    <th>Hari, Tanggal</th>
                    <th>Aktifitas</th>
                    <th>Mata Pelajaran</th>
                    <th>Bukti</th>
                    <th>Lihat</th>
                </tr>
            </thead>
            <tbody align="center">
                @foreach( $laporans as $lap )
                <tr>
                    <td>{{ $lap->tanggal }}</td>
                    <td style="text-align:left">{{ $lap->aktifitas->nama_aktifitas }}</td>
                    <td style="text-align:left">{{ $lap->mapel->nama_mapel }}</td>
                    @if ( empty($lap->bukti) )
                        <td><span class="badge badge-warning">Belum mengumpulkan</span></td>
                        <td><span class="badge badge-warning">Belum mengumpulkan</span></td>
                    @else
                        <td><img src="{{ asset('bukti/'. $lap->rombel .'/'. $lap->mapel->nama_mapel .'/'. $lap->bukti) }}" width="70px" alt="Gambar Bukti"></td>
                        <td>
                            <button type="button" class="btn btn-sm btn-info" data-toggle="modal" data-target="#modalpop"
                                    data-src="{{ asset('bukti/'. $lap->rombel .'/'. $lap->mapel->nama_mapel .'/'. $lap->bukti) }}">
                                Lihat
                            </button>
                        </td>
                    @endif
                </tr>
                @endforeach
            </tbody>
        </table>
        </div>
    </div>
    </section>
    <!-- /.content -->
</div>

  
  <!-- Modal -->
  <div class="modal" tabindex="-1" role="dialog" id="modalpop">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content m-0">
        <div class="modal-body">
          <div class="product-zoom">
            <img src="" width="465px">
          </div>
        </div>
      </div>
    </div>
  </div>

@endsection

@section('js')
    <script type="text/javascript">
        $(function () {
            $("#table").DataTable();
        });

        $(document).ready(function(){
        
          $('#modalpop').on('show.bs.modal', function(e){
            $(this).find('img').attr('src', $(e.relatedTarget).data('src'));
          });
    
        });
      </script>
@endsection