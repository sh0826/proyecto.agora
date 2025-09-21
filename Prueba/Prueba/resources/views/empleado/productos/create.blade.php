@extends('layouts.Empleado')

@section('content')
    <h1>Registrar nuevo producto</h1>

    @if ($errors->any())
        <div style="color: red;">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('productos.store') }}" method="POST">
        @csrf

    
    <div class="mb-3">
    <label for="nombre" class="form-label">Nombre de tu Producto</label>
    <input type="text" class="form-control" id="nombre" name="nombre" value="{{ old('nombre') }}" required>
    </div>

        <div>
            <label for="tipo_producto" class="form-label">Tipo de Producto:</label>
            <textarea name="tipo_producto" class="form-control" id="tipo_producto" >{{ old('tipo_producto') }}</textarea>
        </div>

        <div>
            <label for="precio_unitario" class="form-label">Precio Unitario:</label>
            <input type="number" step="0.01" name="precio_unitario" class="form-control" id="precio_unitario" value="{{ old('precio_unitario') }}" required>
        </div>

        <div>
            <label for="stock" class="form-label">Stock:</label>
            <input type="number" name="stock" id="stock" class="form-control" value="{{ old('stock') }}" required>
        </div>

        <button type="submit" class="btn btn-danger">Guardar</button>
        <a href="{{ route('productos.index') }}" class="btn btn-secondary">Cancelar</a>
    </form>
@endsection
