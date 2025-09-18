@extends('layouts.app2')

@section('content')
<div class="container">
    <h2>Lista de Boletas</h2>
    <a href="{{ route('boletas.create') }}" class="btn btn-danger mb-3">Nueva Boleta</a>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <table class="table table-">
        <thead>
            <tr>
                <th>ID</th>
                <th>Usuario</th>
                <th>Evento</th>
                <th>Cantidad</th>
                <th>Precio Unitario</th>
                <th>Total</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            @foreach($boletas as $boleta)
            <tr>
                <td>{{ $boleta->id_boleta }}</td>
                <td>{{ $boleta->User->name }} ({{ $boleta->User->numero_documento }})</td>
                <td>{{ $boleta->evento->nombre_evento }}</td>
                <td>{{ $boleta->cantidad_boletos }}</td>
                <td>$ {{ number_format($boleta->evento->precio_boleta, 2) }}</td>
                <td>$ {{ number_format($boleta->cantidad_boletos * $boleta->evento->precio_boleta, 2) }}</td>
                <td>
                    <a href="{{ route('boletas.edit', ['boleta' => $boleta->id_boleta]) }}" class="btn btn-dark btn-sm">Editar</a>
                    <form action="{{ route('boletas.destroy', ['boleta' => $boleta->id_boleta]) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('¿Seguro que desea eliminar esta boleta?')">Eliminar</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection

