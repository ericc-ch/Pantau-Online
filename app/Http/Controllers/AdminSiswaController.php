<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class AdminSiswaController extends Controller
{
    public function __construct()
    {
        $this->middleware('cekuser:admin');   
    }

    public function dashboard()
    {
        return view('admin.index');
    }

    protected function rombel()
    {
        return array(
            'RPL X-1', 'RPL X-2', 'RPL X-3', 'RPL X-4', 'RPL XI-1', 'RPL XI-2', 'RPL XI-3', 'RPL XI-4', 'RPL XII-1', 'RPL XII-2', 'RPL XII-3', 'RPL XII-4',
            'TKJ X-1', 'TKJ X-2', 'TKJ X-3', 'TKJ X-4', 'TKJ XI-1', 'TKJ XI-2', 'TKJ XI-3', 'TKJ XI-4', 'TKJ XII-1', 'TKJ XII-2', 'TKJ XII-3', 'TKJ XII-4', 
            'MMD X-1', 'MMD X-2', 'MMD XI-1', 'MMD XI-2', 'MMD XII-1', 'MMD XII-2', 
            'OTKP X-1', 'OTKP X-2', 'OTKP XI-1', 'OTKP XI-2', 'OTKP XII-1', 'OTKP XII-2', 
            'BDP X-1', 'BDP X-2', 'BDP XI-1', 'BDP XI-2', 'BDP XII-1', 'BDP XII-2', 
            'TBG X-1', 'TBG X-2', 'TBG XI-1', 'TBG XI-2', 'TBG XI-1', 'TBG XI-2', 
            'HTL X-1', 'HTL X-2', 'HTL XI-1', 'HTL XI-2', 'HTL XII-1', 'HTL XII-2', 
        );
    }

    protected function rayon()
    {
        return array(
            'Ciawi 1', 'Ciawi 2', 'Ciawi 3', 'Ciawi 4', 'Ciawi 5',
            'Cibedug 1', 'Cibedug 2', 'Cibedug 3',
            'Tajur 1', 'Tajur 2', 'Tajur 3', 'Tajur 4', 'Tajur 5',
            'Cicurug 1', 'Cicurug 2', 'Cicurug 3', 'Cicurug 4', 'Cicurug 5', 'Cicurug 6', 'Cicurug 7',
            'Cisarua 1', 'Cisarua 2', 'Cisarua 3', 'Cisarua 4', 'Cisarua 5', 'Cisarua 6',
            'Sukasari 1', 'Sukasari 2', 
            'Wikrama 1', 'Wikrama 2', 'Wikrama 3', 'Wikrama 4', 'Wikrama 5',
        );
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $rombels = $this->rombel();
        $rayons = $this->rayon();

        $users = User::orderBy('nama', 'ASC')->get();

        return view('admin.siswa.index', compact('users', 'rombels', 'rayons'));
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        //
    }
}
