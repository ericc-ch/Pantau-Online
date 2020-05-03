<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Guru;
use App\Jadwalkegiatan;
use App\Detailjadwal;
use App\Siswa;
use App\Pembuktian;
use Auth;

class GuruController extends Controller
{
    public function siswa_pj()
    {
        $pj = Auth::user()->guru->pj;
        
        $siswas = Siswa::where('rombel', $pj)->orderBy('nama', 'ASC')->get();
        
        return view('guru.siswa', compact('siswas'));
    }

    public function siswa_ps()
    {
        $ps = Auth::user()->guru->ps;
        
        $siswas = Siswa::where('rayon', $ps)->orderBy('nama', 'ASC')->get();
        
        return view('guru.siswa', compact('siswas'));
    }

    public function laporan_siswa()
    {
        $laporans = Siswa::where('rombel', Auth::user()->guru->pj)->get();
        
        return view('guru.laporan.laporan-siswa', compact('laporans'));
    }
    
    public function laporan_siswa_detail($nis)
    {
        $pembuktians = Pembuktian::first();
        $siswa = Siswa::select('nis', 'nama')->where('nis', $nis)->first();

        if(empty($pembuktians)){
            $laporans = Detailjadwal::join('jadwal_kegiatan', 'jadwal_kegiatan.id_jadwal', '=', 'detail_jadwal.id_jadwal')
                                    ->join('siswas', 'jadwal_kegiatan.nis', '=', 'siswas.nis')
                                    ->where('jadwal_kegiatan.nis', $nis)
                                    ->get();
            $laporan = $laporans->first();
            $pembuktian = Pembuktian::where('id_jadwal', $laporan->id_jadwal)->first();
        }else {
            $laporans = Detailjadwal::join('jadwal_kegiatan', 'jadwal_kegiatan.id_jadwal', '=', 'detail_jadwal.id_jadwal')
                                    ->join('siswas', 'jadwal_kegiatan.nis', '=', 'siswas.nis')
                                    ->join('pembuktian', 'detail_jadwal.id_jadwal', '=', 'pembuktian.id_jadwal')
                                    ->where('jadwal_kegiatan.nis', $nis)
                                    ->get();
        }

        return view('guru.laporan.detail-laporan', compact('laporans', 'siswa', 'pembuktian'));
    }
    // LAPORAN BERDASARKAN RAYON
    public function laporan_siswa_rayon()
    {
        $laporans = Siswa::where('rayon', Auth::user()->guru->ps)->get();
        
        return view('guru.laporan.laporan-siswa', compact('laporans'));
    }
    public function laporan_siswa_rayon_detail($nis)
    {
        $pembuktians = Pembuktian::first();
        $siswa = Siswa::select('nis', 'nama')->where('nis', $nis)->first();

        if(empty($pembuktians)){
            $laporans = Detailjadwal::join('jadwal_kegiatan', 'jadwal_kegiatan.id_jadwal', '=', 'detail_jadwal.id_jadwal')
                                    ->join('siswas', 'jadwal_kegiatan.nis', '=', 'siswas.nis')
                                    ->where('jadwal_kegiatan.nis', $nis)
                                    ->get();
            $laporan = $laporans->first();
            $pembuktian = Pembuktian::where('id_jadwal', $laporan->id_jadwal)->first();
        }else {
            $laporans = Detailjadwal::join('jadwal_kegiatan', 'jadwal_kegiatan.id_jadwal', '=', 'detail_jadwal.id_jadwal')
                                    ->join('siswas', 'jadwal_kegiatan.nis', '=', 'siswas.nis')
                                    ->join('pembuktian', 'detail_jadwal.id_jadwal', '=', 'pembuktian.id_jadwal')
                                    ->where('jadwal_kegiatan.nis', $nis)
                                    ->get();
        }

        return view('guru.laporan.detail-laporan', compact('laporans', 'siswa', 'pembuktian'));
    }
}
