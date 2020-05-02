<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Detailjadwal;
use Illuminate\Http\Request;

class PembuktianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $nis = Auth::user()->siswa->nis;
        $id = $nis. date('dmy');
        settype($id,"integer");

        $detailjadwal = Detailjadwal::with('mapel')->with('activity')
        ->where('id_jadwal','=', $id)
        ->get();

        return view('murid.pembuktian', compact('detailjadwal'));
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
        $nama_aktifitas = $request->get('aktifitas');
        $nama_mapel = $request->get('mapel');
        $rombel = Auth::user()->siswa->rombel;
        //nama file bukti
        $nama_bukti = Auth::user()->siswa->nama.' '.$nama_aktifitas.'.'.$request->bukti->extension();
        $new_bukti = new \App\Pembuktian;
        $new_bukti->id_jadwal = $request->get('id_jadwal');
        $new_bukti->id_aktifitas = $request->get('id_aktifitas');
        $new_bukti->tanggal_mengumpulkan = date('ymd');
        if($request->file('bukti')){
             $new_bukti->bukti = $nama_bukti;
             $request->file('bukti')->move(public_path('bukti/'.$rombel.'/'.$nama_mapel.'/'), $nama_bukti );
        }
        $new_bukti->save();
        return redirect()->route('pembuktian.index');

        

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
