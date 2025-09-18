@extends('layouts.admin')

@section('content')
<div class="container">
    <h1>✏️ Editar Empleado</h1>

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('empleados.update', $empleado->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="name" class="form-label">Nombre</label>
            <input type="text" name="name" class="form-control" value="{{ old('name', $empleado->name) }}" required>
        </div>

        <div class="mb-3">
            <label for="apellido" class="form-label">Apellido</label>
            <input type="text" name="apellido" class="form-control" value="{{ old('apellido', $empleado->apellido) }}" required>
        </div>

        <div class="mb-3">
            <label for="tipo_documento" class="form-label">Tipo de Documento</label>
            <select name="tipo_documento" class="form-control">
                <option value="CC" {{ $empleado->tipo_documento == 'CC' ? 'selected' : '' }}>Cédula</option>
                <option value="TI" {{ $empleado->tipo_documento == 'TI' ? 'selected' : '' }}>Tarjeta de Identidad</option>
                <option value="CE" {{ $empleado->tipo_documento == 'CE' ? 'selected' : '' }}>Cédula de Extranjería</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="numero_documento" class="form-label">Número de Documento</label>
            <input type="text" name="numero_documento" class="form-control" value="{{ old('numero_documento', $empleado->numero_documento) }}" required>
        </div>

        <div class="mb-3">
            <label for="telefono" class="form-label">Teléfono</label>
            <input type="text" name="telefono" class="form-control" value="{{ old('telefono', $empleado->telefono) }}">
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Correo</label>
            <input type="email" name="email" class="form-control" value="{{ old('email', $empleado->email) }}" required>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Nueva Contraseña (opcional)</label>
            <input type="password" name="password" class="form-control">
            <small>Si no quieres cambiar la contraseña, deja este campo vacío.</small>
        </div>

        <input type="hidden" name="role" value="empleados">

        <button type="submit" class="btn btn-primary">💾 Actualizar</button>
        <a href="{{ route('empleados.index') }}" class="btn btn-secondary">↩ Volver</a>
    </form>
</div>
@endsection
