@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <form action="{{ route('boletas.update', $boleta->id_boleta) }}" method="POST" class="p-4 bg-light rounded shadow-sm">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label for="id_usuario" class="form-label">Usuario</label>
            <select name="id_usuario" id="id_usuario" class="form-select">
    @foreach($usuarios as $usuario)
        <option value="{{ $usuario->id_usuario }}"
            {{ $usuario->id_usuario == $boleta->id_usuario ? 'selected' : '' }}>
            {{ $usuario->nombre }}
        </option>
    @endforeach
</select>
        </div>

        
        <div class="mb-3">
            <label for="id_evento" class="form-label">Evento</label>
            <select name="id_evento" id="id_evento" class="form-select" required>
                @foreach($eventos as $evento)
                    <option value="{{ $evento->id_evento }}" 
                        data-precio="{{ $evento->precio_boleta }}"
                        {{ $evento->id_evento == $boleta->id_evento ? 'selected' : '' }}>
                        {{ $evento->nombre_evento }}
                    </option>
                @endforeach
            </select>
        </div>

        
        <div class="mb-3">
            <label for="precio" class="form-label">Precio por Boleta</label>
            <input type="text" id="precio" class="form-control" value="{{ $boleta->evento->precio_boleta ?? '' }}" readonly>
        </div>

        
        <div class="mb-3">
            <label for="cantidad_boletos" class="form-label">Cantidad</label>
            <input type="number" name="cantidad_boletos" id="cantidad_boletos" 
                class="form-control" min="1" required value="{{ $boleta->cantidad_boletos }}">
        </div>

        <button type="submit" class="btn btn-danger ms -4">Actualizar</button>
        <a href="{{ route('boletas.index') }}" class="btn btn-dark ms-4">Cancelar</a>
    </form>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const selectEvento = document.getElementById("id_evento");
        const inputPrecio = document.getElementById("precio");

        // cuando cambie el evento seleccionado
        selectEvento.addEventListener("change", function () {
            const precio = this.options[this.selectedIndex].getAttribute("data-precio");
            inputPrecio.value = precio ? `$ ${precio}` : "";
        });
    });
</script>
@endsection
