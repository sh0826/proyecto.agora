<?php

namespace App\Http\Controllers;

use App\Models\Boleta;
use App\Models\Evento;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BoletaController extends Controller
{
    public function index()
    {
        $boletas = Boleta::with('evento','user')->get();
        return view('cliente.boletas.index', compact('boletas'));
    }

    public function create()
    {
        $usuarios = Auth::user();
        $eventos = Evento::all();
        return view('cliente.boletas.create', compact('usuarios','eventos'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'id' => 'required|exists:users,id',
            'id_evento' => 'required|exists:evento,id_evento',
            'cantidad_boletos' => 'required|integer|min:1'
        ]);

        Boleta::create($request->all());
        return redirect()->route('boletas.index')->with('success','Boleta creada correctamente.');
    }

    public function edit(Boleta $boleta)
    {
        $usuarios = User::all();
        $eventos = Evento::all();
        return view('cliente.boletas.edit', compact('boleta','usuarios','eventos'));
    }

    public function update(Request $request, Boleta $boleta)
    {
        $request->validate([
            'id' => 'required|exists:users,id',
            'id_evento' => 'required|exists:eventos,id_evento',
            'cantidad_boletos' => 'required|integer|min:1'
        ]);

        $boleta->update($request->all());
        return redirect()->route('cliente.boletas.index')->with('success','Boleta actualizada correctamente.');
    }

    public function destroy(Boleta $boleta)
    {
        $boleta->delete();
        return redirect()->route('cliente.boletas.index')->with('success','Boleta eliminada correctamente.');
    }
}
