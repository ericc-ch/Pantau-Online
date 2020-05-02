<?php

namespace App\Http\Controllers;
use App\Aktifitas;
use Illuminate\Http\Request;

class AktifitasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $aktifitas = Aktifitas::all();
        return view('admin.aktifitas.index', compact('aktifitas'));
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
        $aktifitas = Aktifitas::find($id_aktifitas);
        return view('admin.aktifitas.edit', compact('aktifitas'));
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
            'nama_aktifitas' => $request->nama_aktifitas
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
