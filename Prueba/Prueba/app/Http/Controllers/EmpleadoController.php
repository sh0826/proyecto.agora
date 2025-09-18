<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class EmpleadoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index($filtro = null)
{
    if ($filtro === 'empleado') {
        $empleados = User::whereIn('role', ['empleado'])->get();
        return view('empleado.empl', compact('empleados'));
    }

    if ($filtro === 'clientes') {
        $clientes = User::where('role', 'cliente')->get();
        return view('cliente.dashboard', compact('clientes'));
    }

    // Si no hay filtro, mostramos ambos
    $empleados = User::whereIn('role', ['empleado', 'empleados'])->get();
    $clientes  = User::where('role', 'cliente')->get();

    return view('empleados.index', compact('empleados', 'clientes'));
}


    /**
     * Show the form for creating a new resource.
     */
 public function soloLectura()
{
    $empleados = User::whereIn('role', ['empleado', 'empleados'])->get();
     $clientes  = User::where('role', 'cliente')->get();

    return view('empleado.empl', compact('empleados','clientes'));
}

    public function create()
    {
        return view('empleados.create');
    }

    /**
     * Store a newly created resource in storage.
     */
public function store(Request $request)
{
    $request->validate([
        'name' => 'required|string|max:255',
        'apellido' => 'required|string|max:255',
        'email' => 'required|email|unique:users,email',
        'password' => 'required|min:6',
        'role' => 'required|string'
    ]);

    User::create([
        'name' => $request->name,
        'apellido' => $request->apellido,
        'email' => $request->email,
        'password' => bcrypt($request->password), // 🔐 encripta
        'role' => $request->role,
        'tipo_documento' => $request->tipo_documento,
        'numero_documento' => $request->numero_documento,
        'telefono' => $request->telefono,
    ]);

    return redirect()->route('empleados.index')->with('success', 'Empleado creado correctamente ✅');
}

    /**
     * Display the specified resource.
     */
    public function show(User $empleado)
    {
        return view('empleados.show', compact('empleado'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(User $empleado)
    {
        return view('empleados.edit', compact('empleado'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, User $empleado)
    {
        $request->validate([
            'name'             => 'required|string|max:255',
            'email'            => 'required|email|unique:users,email,' . $empleado->id,
            'numero_documento' => 'required|unique:users,numero_documento,' . $empleado->id,
        ]);

        $empleado->update($request->all());

        return redirect()->route('empleados.index')->with('success', 'Empleado actualizado correctamente');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $empleado)
    {
        $empleado->delete();

        return redirect()->route('empleados.index')->with('success', 'Empleado eliminado correctamente');
    }
}
