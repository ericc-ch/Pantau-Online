<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Mapel;
use Illuminate\Support\Facades\DB;
use App\Aktifitas;
use App\Jadwal;

class JadwalController extends Controller
{
    public function __construct()
    {
        $this->middleware('cekuser');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $nis = Auth::user()->siswa->nis;
        $tgl = date('Y-m-d');
        $jadwal = Jadwal::with('mapel')->with('aktifitas')
            ->where('nis', $nis)
            ->whereDate('tanggal', $tgl)
            ->get();
    
        $mapel = Mapel::all();
        $aktifitas = Aktifitas::all();

        return view('murid.setjadwal', compact('jadwal','mapel','aktifitas', 'tgl'));
    }
    public function getAktifitas()
    {
        $aktifitas = Aktifitas::where('id_mapel', request()->id_mapel)->get();
        
        return response()->json(['status'=>'success', 'data'=>$aktifitas]);
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $nis = Auth::user()->siswa->nis;

        $this->validate($request, [
            'tanggal'=>'required',
            'jam_mulai'=>'required',
            'jam_akhir'=>'required',
            'id_aktifitas'=>'required',
            'id_mapel'=>'required',
        ]);

        $jadwal = Jadwal::create([
            'nis' => $nis,
            'tanggal' => $request->tanggal,
            'jam_mulai' => $request->jam_mulai,
            'jam_akhir' => $request->jam_akhir,
            'id_aktifitas' => $request->id_aktifitas,
            'id_mapel' => $request->id_mapel,
            'validasi' => 'no'
        ]);
        return redirect()->route('jadwal.cari', $request->tanggal);
    }

    public function cari($tgl){
        $nis = Auth::user()->siswa->nis;
        
        $jadwal = Jadwal::with('mapel')->with('aktifitas')
            ->where('nis', $nis)
            ->whereDate('tanggal', $tgl)
            ->get();
    
        $mapel = Mapel::all();
        $aktifitas = Aktifitas::all();

        return view('murid.setjadwal', compact('jadwal','mapel','aktifitas','tgl'));
    }

    public function edit($id_jadwal){
        $mapel = Mapel::all();
        $jadwal = Jadwal::find($id_jadwal);
        return view('murid.editJadwal', compact('jadwal','mapel'));
    }

    public function update(Request $request, $id_jadwal){
        $updateJadwal = Jadwal::where('id_jadwal', $id_jadwal);
        $updateJadwal->update([
            'tanggal' => $request->tanggal,
            'jam_mulai' => $request->jam_mulai,
            'jam_akhir' => $request->jam_akhir,
            'id_aktifitas' => $request->id_aktifitas,
            'id_mapel' => $request->id_mapel,
        ]);
        return redirect()->route('jadwal.index');
    }

    public function destroy(Request $request, $id_jadwal){
        Jadwal::destroy($id_jadwal);
        return redirect()->route('jadwal.cari', $request->tanggal);
    }   

}
