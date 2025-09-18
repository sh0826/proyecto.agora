@extends('layouts.admin')

@section('content')
<div class="container">
    <h1>➕ Crear Empleado</h1>

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('empleados.store') }}" method="POST">
        @csrf

        <div class="mb-3">
            <label for="name" class="form-label">Nombre</label>
            <input type="text" name="name" class="form-control" value="{{ old('name') }}" required>
        </div>

        <div class="mb-3">
            <label for="apellido" class="form-label">Apellido</label>
            <input type="text" name="apellido" class="form-control" value="{{ old('apellido') }}" required>
        </div>

        <div class="mb-3">
            <label for="tipo_documento" class="form-label">Tipo de Documento</label>
            <select name="tipo_documento" class="form-control">
                <option value="CC">Cédula</option>
                <option value="TI">Tarjeta de Identidad</option>
                <option value="CE">Cédula de Extranjería</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="numero_documento" class="form-label">Número de Documento</label>
            <input type="text" name="numero_documento" class="form-control" value="{{ old('numero_documento') }}" required>
        </div>

        <div class="mb-3">
            <label for="telefono" class="form-label">Teléfono</label>
            <input type="text" name="telefono" class="form-control" value="{{ old('telefono') }}">
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Correo</label>
            <input type="email" name="email" class="form-control" value="{{ old('email') }}" required>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Contraseña</label>
            <input type="password" name="password" class="form-control" value="{{ old('password') }}" required>
        </div>

        <div class="mb-3">
            <label for="role" class="form-label">Cargo</label>
            <select name="role" class="form-control">
                <option value="empleado">Empleado</option>
            </select>

        <button type="submit" class="btn btn-success">💾 Guardar</button>
        <a href="{{ route('empleados.index') }}" class="btn btn-secondary">↩ Volver</a>
    </form>
</div>
@endsection
