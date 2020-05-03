<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Guru;
use App\Siswa;
use App\Jadwal;
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
        $pj = Auth::user()->guru->pj;

        $siswa = Siswa::select('nis', 'nama', 'rayon')->where('nis', $nis)->first();

        $laporans = Jadwal::join('siswas', 'jadwal.nis', '=', 'siswas.nis')
                        ->where('jadwal.nis', $nis)
                        ->where('siswas.rombel', $pj)
                        ->get();

        return view('guru.laporan.detail-laporan', compact('laporans', 'siswa'));
    }
    
    // LAPORAN BERDASARKAN RAYON
    public function laporan_siswa_rayon()
    {
        $laporans = Siswa::where('rayon', Auth::user()->guru->ps)->get();
        
        return view('guru.laporan.laporan-siswa', compact('laporans'));
    }
    public function laporan_siswa_rayon_detail($nis)
    {
        $ps = Auth::user()->guru->ps;

        $siswa = Siswa::select('nis', 'nama', 'rombel')->where('nis', $nis)->first();

        $laporans = Jadwal::join('siswas', 'jadwal.nis', '=', 'siswas.nis')
                        ->where('jadwal.nis', $nis)
                        ->where('siswas.rayon', $ps)
                        ->get();

        return view('guru.laporan.detail-laporan', compact('laporans', 'siswa'));
    }
}
