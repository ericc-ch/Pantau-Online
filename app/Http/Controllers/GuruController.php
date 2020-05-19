<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Guru;
use App\Siswa;
use App\Jadwal;
use Illuminate\Support\Facades\Auth;

class GuruController extends Controller
{
    public function __construct()
    {
        $this->middleware('cekuser:guru');
    }

    public function siswa_pj()
    {
        $pj = Auth::user()->guru->pj;
        
        $siswas = Siswa::where('rombel', $pj)->orderBy('nama', 'ASC')->get();
        
        return view('guru.siswa', compact('siswas'));
    }

    public function siswa_ps()
    {
        $ps_all = Auth::user()->guru->ps;
        if ( strpos($ps_all, ',') != false ) {
            $ps = explode(', ', $ps_all);
            $siswas = Siswa::where('rayon', $ps[0])->orderBy('nama', 'ASC')->get();
        }else{
            $ps = $ps_all;
            $siswas = Siswa::where('rayon', $ps)->orderBy('nama', 'ASC')->get();
        }
        
        return view('guru.siswa', compact('siswas'));
    }

    public function siswa_ps_kedua()
    {
        $ps_all = Auth::user()->guru->ps;
        if ( strpos($ps_all, ',') != false ) {
            $ps = explode(', ', $ps_all);
            $siswas = Siswa::where('rayon', $ps[1])->orderBy('nama', 'ASC')->get();
        }else{
            $ps = $ps_all;
            $siswas = Siswa::where('rayon', $ps)->orderBy('nama', 'ASC')->get();
        }
        
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
        $ps_all = Auth::user()->guru->ps;
        if ( strpos($ps_all, ',') != false ) {
            $ps = explode(', ', $ps_all);
            $laporans = Siswa::where('rayon', $ps[0])->get();
        }else{
            $ps = $ps_all;
            $laporans = Siswa::where('rayon', $ps)->get();
        }
        
        return view('guru.laporan.laporan-siswa', compact('laporans'));
    }
    public function laporan_siswa_rayon_kedua()
    {
        $ps_all = Auth::user()->guru->ps;
        if ( strpos($ps_all, ',') != false ) {
            $ps = explode(', ', $ps_all);
            $laporans = Siswa::where('rayon', $ps[1])->get();
        }else{
            $ps = $ps_all;
            $laporans = Siswa::where('rayon', $ps)->get();
        }
        
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

    //laporan seluruh
    public function laporan_siswa_seluruh(){
        $laporans = Siswa::all();    
        return view('guru.laporan.laporan-siswa', compact('laporans'));
    }

    //detail laporan seluruh siswa
    public function laporan_siswa_seluruh_detail($nis)
    {
        $ps = Auth::user()->guru->ps;

        $siswa = Siswa::select('nis', 'nama', 'rombel')->where('nis', $nis)->first();

        $laporans = Jadwal::join('siswas', 'jadwal.nis', '=', 'siswas.nis')
                    ->where('jadwal.nis', $nis)
                    ->get();

        return view('guru.laporan.detail-laporan', compact('laporans', 'siswa'));
    }
}
