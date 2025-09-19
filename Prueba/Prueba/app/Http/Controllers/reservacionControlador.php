<?php

namespace App\Http\Controllers;

use App\Models\Reservacion;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\View\View;
use function PHPUnit\Framework\returnArgument;

class reservacionControlador extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $reservaciones=Reservacion::all();
        return view('empleados.reservaciones.index',compact('reservaciones'));
        //lista del producto
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //formulario donde estan los campos a registrar
        return view('empleados.reservaciones.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
{
    $validated = $request->validate([
        'id' => 'required|integer',
        'cantidad_personas' => 'required|integer|min:1',
        'cantidad_mesas' => 'required|integer|min:1',
        'fecha_reservacion' => 'required|date',
        'ocasion' => 'nullable|string|max:100',
    ]);

 Reservacion::create($validated);
        return redirect()->route('reservaciones.index')->
        with('success','registro exitoso de la venta');
    }

    /**
     * Display the specified resource.
     */
    public function show(Reservacion $reservacion)
    {
        return view('reservaciones.show',compact('reservacion'));
        //mostrar los detalles de un producto

    }

    /**
     * Show the form for editing the specified resource.
     */
public function edit(Reservacion $reservacion)
{
    return view('empleados.reservaciones.edit', compact('reservacion'));
}

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, reservacion $reservacion)
    {
        {
    // Validación de los campos que sí llena el cliente
    $validated = $request->validate([
        'id' => 'required|integer',
        'cantidad_personas' => 'required|integer|min:1',
        'cantidad_mesas' => 'required|integer|min:1',
        'fecha_reservacion' => 'required|date',
        'ocasion' => 'nullable|string|max:100',
    ]);

    // Crear la reservación asignando el usuario autenticado


   $reservacion->update($validated);
        return redirect()->route('reservaciones.index')->
        with('success','registro actualizado de la venta');}
        //boton de actualizar en el formulario
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(reservacion $reservacion)
    {
        $reservacion->delete();
        return redirect()->route('reservaciones.index')->whit('sucess', 'reservacion eliminada correctamente');
        //eliminar
    }
}
