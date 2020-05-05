<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Jadwal;
use Illuminate\Http\Request;

class PembuktianController extends Controller
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
    public function index()
    {
        $nis = Auth::user()->siswa->nis;
        $jadwal = Jadwal::with('mapel')->with('aktifitas')
            ->where('nis', $nis)
            ->whereDate('tanggal', date('Y-m-d'))
            ->get();

        return view('murid.pembuktian', compact('jadwal'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function alihkan(Request $request)
    {
        $tgl = $request->tanggal;
        return redirect()->route('pembuktian.cari', $tgl);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function cari($tgl)
    {
        $nis = Auth::user()->siswa->nis;
        $jadwal = Jadwal::with('mapel')->with('aktifitas')
            ->where('nis', $nis)
            ->whereDate('tanggal', $tgl)
            ->get();

        return view('murid.pembuktian', compact('jadwal'));
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
    public function update(Request $request, $id_jadwal)
    {
        $jadwal = Jadwal::find($id_jadwal);
        $nama_aktifitas = $jadwal->aktifitas->nama_aktifitas;
        $nama_mapel = $jadwal->mapel->nama_mapel;
        $rombel = Auth::user()->siswa->rombel;

        //cari jadwal berdasarkan id_jadwal
        $updateJadwal = Jadwal::where('id_jadwal', $id_jadwal);

        //cek kondisi ketika ada keduanya
        if($request->bukti && $request->bukti_lainnya){

            $nama_bukti = Auth::user()->siswa->nama.' '.$nama_aktifitas.' '.mt_rand().'.'.$request->bukti->extension();
            $updateJadwal->update([
                'bukti' => $nama_bukti,
                'bukti_lainnya' => $request->bukti_lainnya
            ]);
            if ($updateJadwal){
                $request->file('bukti')->move(public_path('bukti/'.$rombel.'/'.$nama_mapel.'/'), $nama_bukti );
            }

        //cek kondisi ketika cuma ada file bukti
        } else if($request->bukti) {
           
            $nama_bukti = Auth::user()->siswa->nama.' '.$nama_aktifitas.' '.mt_rand().'.'.$request->bukti->extension();
            
            $updateJadwal->update([
                'bukti' => $nama_bukti
            ]);
            if ($updateJadwal){
                $request->file('bukti')->move(public_path('bukti/'.$rombel.'/'.$nama_mapel.'/'), $nama_bukti );
            }
        //cek kondisi ketika cuma ada text bukti
        } else {
            $updateJadwal->update([
                'bukti_lainnya' => $request->bukti_lainnya
            ]);
        }

        return redirect()->route('pembuktian.index');
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
