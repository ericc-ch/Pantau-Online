<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Mapel;
use Illuminate\Support\Facades\DB;
use App\Detailjadwal;
use App\Aktifitas;
use App\Jadwalkegiatan;

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
        $id = $nis. date('dmy');
        settype($id,"integer");

        $detailjadwal = Detailjadwal::with('mapel')->with('activity')
            ->where('id_jadwal','=', $id)
            ->get();
        $mapel = Mapel::all();
        $aktifitas = Aktifitas::all();

        return view('murid.setjadwal', compact('detailjadwal', 'id','mapel','aktifitas'));
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
        //id
        $nis = Auth::user()->siswa->nis;
        $id = $nis. date('dmy');
        //cek db
        $jadwalKegiatan = DB::table('jadwal_kegiatan')
            ->where('tanggal','=', date('dmy'))
            ->get();
        if (count($jadwalKegiatan) < 1) {
            Jadwalkegiatan::create([
                'id_jadwal' => $id,
                'nis' => $nis,
                'tanggal' => date('dmy')
            ]);
        }
        $detailJadwal = Detailjadwal::create($request->all());
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
