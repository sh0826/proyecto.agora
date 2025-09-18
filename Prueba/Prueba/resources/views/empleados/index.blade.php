@extends('layouts.admin')

@section('content')

<div class="container">
    <h1>Lista de Empleados</h1>
    <a href="{{ route('empleados.create') }}" class="btn btn-primary">➕ Nuevo Empleado</a>

    {{-- Tabla de empleados --}}
    <table class="table mt-3 table-striped table-hover shadow-sm">
        <thead class="table-primary">
            <tr>
                <th>ID</th>
                <th>Número de documento</th>
                <th>Nombre y apellido</th>
                <th>Email</th>
                <th>Cargo</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($empleados as $empleado)
            <tr>
                <td>{{ $empleado->id }}</td>
                <td>{{ $empleado->numero_documento }}</td>
                <td>{{ $empleado->name }} {{ $empleado->apellido }}</td>
                <td>{{ $empleado->email }}</td>
                <td>{{ $empleado->role }}</td>
                <td>
                    <a href="{{ route('empleados.edit', $empleado) }}" class="btn btn-warning btn-sm">Editar</a>
                    <form action="{{ route('empleados.destroy', $empleado) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('¿Seguro que deseas eliminar este empleado?')">
                            Eliminar
                        </button>
                    </form>
                </td>
            </tr>
            @empty
            <tr>
                <td colspan="6" class="text-center">No hay empleados registrados</td>
            </tr>
            @endforelse
        </tbody>
    </table>

    {{-- Tabla de clientes --}}
    <div class="mt-5">
        <h3>Lista de Clientes</h3>
        <table class="table table-striped table-hover shadow-sm">
            <thead class="table-danger">
                <tr>
                    <th>ID</th>
                    <th>Número de documento</th>
                    <th>Nombre y apellido</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($clientes as $cliente)
                <tr>
                    <td>{{ $cliente->id }}</td>
                    <td>{{ $cliente->numero_documento ?? 'N/A' }}</td>
                    <td>{{ $cliente->name }} {{ $cliente->apellido ?? '' }}</td>
                    <td>{{ $cliente->email }}</td>
                </tr>
                @empty
                <tr>
                    <td colspan="4" class="text-center">No hay clientes registrados</td>
                </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>

@endsection
