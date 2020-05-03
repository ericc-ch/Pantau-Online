<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use App\Jadwal;
use Illuminate\Http\Request;

class OrtuController extends Controller
{
    public function kegiatanAnak()
    {
        $nis = Auth::user()->ortu->nis;
        $jadwal = Jadwal::with('mapel')->with('aktifitas')->with('siswa')
            ->where('nis', $nis)
            ->whereDate('tanggal', date('ymd'))
            ->get();
        return view('ortu.kegiatanAnak', compact('jadwal'));
    }
    public function update($id_jadwal)
    {
        Jadwal::where('id_jadwal', $id_jadwal)
        ->update([
            'validasi' => 'yes'
        ]);
        return redirect()->route('ortu.kegiatanAnak');
    }
    public function alihkan(Request $request )
    {
        $tgl = $request->tanggal;
        return redirect()->route('ortu.cari', $tgl);
    }
    public function cari($tgl){
        $nis = Auth::user()->ortu->nis;
        $jadwal = Jadwal::with('mapel')->with('aktifitas')->with('siswa')
            ->where('nis', $nis)
            ->whereDate('tanggal', $tgl)
            ->get();
        return view('ortu.kegiatanAnak', compact('jadwal'));
    }
}
