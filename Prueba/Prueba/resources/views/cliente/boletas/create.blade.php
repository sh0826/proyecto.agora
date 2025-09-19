@extends('layouts.app')

@section('content')
<div class="container mt-3">
    <form action="{{ route('boletas.store') }}" method="POST" class="p-4 bg-light rounded shadow-sm">
        @csrf  
        <div class="mb-3">
    <label for="usuario_id" class="form-label">Usuario</label>
    <select name="usuario_id" id="usuario_id" class="form-select" required>
        @foreach($usuarios as $usuario)
            <option value="{{ $usuario->id }}">
                {{ $usuario->name }} {{ $usuario->apellido }} ({{ $usuario->numero_documento }})
            </option>
        @endforeach
    </select>
</div>

        
        <div class="mb-3">
            <label for="id_evento" class="form-label">Evento</label>
            <select name="id_evento" id="id_evento" class="form-select" required>
                @foreach($eventos as $evento)
                    <option value="{{ $evento->id_evento }}" data-precio="{{ $evento->precio_boleta }}">
                        {{ $evento->nombre_evento }}
                    </option>
                @endforeach
            </select>
        </div>

        <input type="hidden" name="precio_boleta" id="precio_boleta">

        
        <div class="mb-3">
            <label for="precio" class="form-label">Precio por Boleta</label>
            <input type="text" id="precio" class="form-control" readonly>
        </div>

        
        <div class="mb-3">
            <label for="cantidad_boletos" class="form-label">Cantidad</label>
            <input type="number" name="cantidad_boletos" id="cantidad_boletos" class="form-control" min="1" required>
        </div>

        <button type="submit" class="btn btn-primary w-100">Guardar</button>
    </form>
</div>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const selectEvento = document.getElementById("id_evento");
            const inputPrecio = document.getElementById("precio");

            
            selectEvento.addEventListener("change", function () {
        const precio = this.options[this.selectedIndex].getAttribute("data-precio");
        inputPrecio.value = precio ? `$ ${precio}` : "";
        document.getElementById("precio_boleta").value = precio; // para que se guarde
    });

            
            
            if (selectEvento.value) {
                const precioInicial = selectEvento.options[selectEvento.selectedIndex].getAttribute("data-precio");
                inputPrecio.value = precioInicial ? `$ ${precioInicial}` : "";
            }
        });
    </script>
@endsection



