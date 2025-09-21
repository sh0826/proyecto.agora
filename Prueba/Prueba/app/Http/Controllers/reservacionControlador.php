<?php

namespace App\Http\Controllers;

use App\Models\Reservacion;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\View\View;
use function PHPUnit\Framework\returnArgument;
use Illuminate\Support\Facades\Auth; 

class reservacionControlador extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $reservaciones = Reservacion::where('id', Auth::id())->get();
        return view('cliente.reservaciones.index',compact('reservaciones'));
        //lista del producto
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //formulario donde estan los campos a registrar
        return view('cliente.reservaciones.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
{
    $request->validate([
        'cantidad_personas' => 'required|integer',
        'cantidad_mesas' => 'required|integer',
        'fecha_reservacion' => 'required|date',
        'ocasion' => 'nullable|string',
    ]);

    // Crear la nueva reservación
    $reservacion = new Reservacion();

    // Asignar propiedades
    $reservacion->id = Auth::id();  // usuario autenticado
    $reservacion->cantidad_personas = $request->cantidad_personas;
    $reservacion->cantidad_mesas = $request->cantidad_mesas;
    $reservacion->fecha_reservacion = $request->fecha_reservacion;
    $reservacion->ocasion = $request->ocasion;

    // Guardar en la base de datos
    $reservacion->save();

    return redirect()->route('reservaciones.index')->with('success', 'Reservación creada correctamente');
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
    return view('cliente.reservaciones.edit', compact('reservacion'));
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
