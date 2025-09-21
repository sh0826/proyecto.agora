@extends('layouts.app2')

@section('content')
  
<div class="d-flex justify-content-between mb-3">
    <h1 class="h4">Reservaciones</h1>
    <a href="{{ route('reservaciones.create') }}" class="btn btn-primary">Nuevo</a>
</div>

<table class="table table-striped">
    <thead>
        <tr>
            <th>ID del usuario</th>
            <th>Nombre</th>
            <th>Cantidad personas</th>
            <th>Cantidad de mesas</th>
            <th>Fecha de la reserva</th>
            <th>Ocasion</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($reservaciones as $reservacion)
        <tr>
            <td>{{ $reservacion->id }}</td>
            <td>{{ $reservacion->user?->name ?? 'Usuario no asignado' }}</td>
            <td>{{ $reservacion->cantidad_personas }}</td>
            <td>{{ $reservacion->cantidad_mesas }}</td>
            <td>{{ $reservacion->fecha_reservacion }}</td>
            <td>{{ $reservacion->ocasion }}</td>
            <td>
                <a href="{{ route('reservaciones.show',$reservacion)}}" class="btn btn-info">Ver</a>
                <a href="{{ route('reservaciones.edit',$reservacion) }}" class="btn btn-warning">Editar</a>
                <form action="{{ route('reservaciones.destroy',$reservacion) }}" method="post" class="d-inline">
                    @csrf @method('DELETE')
                    <button class="btn btn-sm btn-danger" onclick="return confirm('Eliminar producto')">Eliminar</button>    
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection
