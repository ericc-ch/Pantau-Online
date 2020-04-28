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
        $aktifitas = Aktifitas::latest()->paginate(5);

        return view('aktifitas.index',compact('aktifitas'))

            ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('aktifitas.create');
    }
    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama_aktifitas' => 'required',
        ]);

        Aktifitas::create($request->all());
        return redirect()->route('aktifitas.index')
                        ->with('success','Aktifitas created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Aktifitas  $aktifitas
     * @return \Illuminate\Http\Response
     */
    public function show(Aktifitas $aktifitas)
    {
        return view('aktifitas.show',compact('aktifitas'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Aktifitas  $aktifitas
     * @return \Illuminate\Http\Response
     */
    public function edit(Aktifitas $aktifitas)
    {
        return view('aktifitas.edit',compact('aktifitas'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Aktifitas  $aktifitas
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Aktifitas $aktifitas)
    {
        $request->validate([
            'nama_aktifitas' => 'required',
        ]);

        $aktifitas::update($request->all());
        return redirect()->route('aktifitas.index')
                        ->with('success','Aktifitas created successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Aktifitas  $aktifitas
     * @return \Illuminate\Http\Response
     */
    public function destroy(Aktifitas $aktifitas)
    {
        $aktifitas->delete();
        return redirect()->route('aktifitas.index')
                        ->with('success','Aktifitas deleted successfully');
    }
}
