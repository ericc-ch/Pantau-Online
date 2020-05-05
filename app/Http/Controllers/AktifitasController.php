<?php

namespace App\Http\Controllers;
use App\Aktifitas;
use App\Mapel;
use Illuminate\Http\Request;

class AktifitasController extends Controller
{
    public function __construct()
    {
        $this->middleware('cekuser:admin');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $mapel = Mapel::all();
        $aktifitas = Aktifitas::with('mapel')->get();
        return view('admin.aktifitas.index', compact('aktifitas', 'mapel'));
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
        Aktifitas::create($request->all());
        return redirect()->route('admin.aktifitas.index')->with('status', 'Data berhasil Di Simpan');
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
    public function edit($id_aktifitas)
    {
        $mapel = Mapel::all();
        $aktifitas = Aktifitas::find($id_aktifitas);
        return view('admin.aktifitas.edit', compact('aktifitas', 'mapel'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_aktifitas)
    {
        Aktifitas::where('id_aktifitas', $id_aktifitas)
        ->update([
            'nama_aktifitas' => $request->nama_aktifitas,
            'id_mapel' => $request->id_mapel
        ]);
    return redirect()->route('admin.aktifitas.index')->with('status', 'Data Berhasil Di update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id_aktifitas)
    {
        Aktifitas::destroy($id_aktifitas);
        return redirect()->route('admin.aktifitas.index')->with('status', 'Data Berhasil Di Delete');
    }
}
