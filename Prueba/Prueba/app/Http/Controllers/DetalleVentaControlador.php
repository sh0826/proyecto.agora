<?php

namespace App\Http\Controllers;

use App\Models\DetalleVenta;
use App\Models\Venta;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Htto\RedirectResponse;
use Illuminate\Views\Views;


class DetalleVentaControlador extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function porVenta ($ventaId){
        $venta = Venta::findOrFail($ventaId);
        $detalles = DetalleVenta::where('id_venta', $ventaId)->get();
        return view ('detalles.porVenta', compact('venta', 'detalles'));
    }

    public function index()
    {
        $detalleVenta = DetalleVenta::all();
        return view ('detalles.index', compact('detalleVenta'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view ('detalles.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated=$request->validate([
            'id_venta'=>'required|exists:venta,id_venta',
            'id_producto'=>'required|exists:producto,id_producto',
            'descripcion'=>'required|string',
            'cantidad_productos'=>'required|numeric|min:0',
            'precio_unitario'=>'required|numeric|min:0'
        ]);

        DetalleVenta::create($validated);
        return redirect()->route('detalles.porVenta', ['venta'=>$detalle->venta->id_venta])->with('success','Detalle de venta
        eliminado correctamente.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return view ('detalles.show', compact('detalleVenta'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(DetalleVenta $detalle)
    {
        return view ('detalles.edit', compact('detalle'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, DetalleVenta $detalle)
    {
            $validated=$request->validate([
            'id_venta'=>'required|exists:venta,id_venta',
            'id_producto'=>'required|exists:producto,id_producto',
            'descripcion'=>'required|string',
            'cantidad_productos'=>'required|numeric|min:0',
            'precio_unitario'=>'required|numeric|min:0'
        ]);
        $detalle->update($validated);
        return redirect()->route('detalles.porVenta', ['venta'=>$detalle->venta->id_venta] )->with('success','Detalle de venta
        actualizado exitosamente.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(DetalleVenta $detalle)
    {
        $detalle->delete();
        return redirect()->route('detalles.porVenta', ['venta'=>$detalle->venta->id_venta])->with('success','Detalle de venta
        eliminado correctamente.');
    }
}
