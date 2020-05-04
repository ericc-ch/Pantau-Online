<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mapel;

class MapelController extends Controller
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
        $mapels = Mapel::all();
        return view('admin.mapel.index', compact('mapels'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_mapel' => 'required|string'
        ]);
        Mapel::create($request->all());
        return redirect()->route('admin.mapel.index')->with('status', 'Data berhasil Di Simpan');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $mapels = Mapel::find($id);
        return view('admin.mapel.edit', compact('mapels'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_mapel)
    {
        Mapel::where('id_mapel', $id_mapel)
        ->update([
            'nama_mapel' => $request->nama_mapel
        ]);
    return redirect()->route('admin.mapel.index')->with('status', 'Data Berhasil Di update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id_mapel)
    {
        Mapel::destroy($id_mapel);
        return redirect()->route('admin.mapel.index')->with('status', 'Data Berhasil Di Delete');
    }
}
