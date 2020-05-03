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
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $nis = Auth::user()->siswa->nis;
        
        $jadwal = Jadwal::with('mapel')->with('aktifitas')
            ->where('nis', $nis)
            ->whereDate('tanggal', date('ymd'))
            ->get();
        $mapel = Mapel::all();
        $aktifitas = Aktifitas::all();

        return view('murid.setjadwal', compact('jadwal','mapel','aktifitas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        $jadwal = Jadwal::create([
            'nis' => $nis,
            'tanggal' => $request->tanggal,
            'jam_mulai' => $request->jam_mulai,
            'jam_akhir' => $request->jam_akhir,
            'id_aktifitas' => $request->id_aktifitas,
            'id_mapel' => $request->id_mapel,
            'validasi' => 'no'
        ]);
        return redirect()->route('jadwal.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
