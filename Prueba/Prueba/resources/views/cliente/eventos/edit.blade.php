@extends('layouts.app2')

@section('content')
<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-header bg-dark text-white">
            <h3>Editar Evento</h3>
        </div>
        <div class="card-body">
            <form action="{{ route('eventos.update', $evento->id_evento) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <div class="mb-3">
                    <label for="nombre_evento" class="form-label">Nombre del Evento</label>
                    <input type="text" class="form-control" id="nombre_evento" name="nombre_evento" value="{{ $evento->nombre_evento }}" required>
                </div>

                <div class="mb-3">
                    <label for="capacidad_maxima" class="form-label">Capacidad Máxima</label>
                    <input type="number" class="form-control" id="capacidad_maxima" name="capacidad_maxima" value="{{ $evento->capacidad_maxima }}" required>
                </div>

                <div class="mb-3">
                    <label for="descripcion" class="form-label">Descripción</label>
                    <textarea class="form-control" id="descripcion" name="descripcion" rows="3">{{ $evento->descripcion }}</textarea>
                </div>

                <div class="mb-3">
                    <label for="fecha" class="form-label">Fecha</label>
                    <input type="date" class="form-control" id="fecha" name="fecha" value="{{ $evento->fecha }}" required>
                </div>

                <div class="mb-3">
                    <label for="hora_inicio" class="form-label">Hora de Inicio</label>
                    <input type="time" class="form-control" id="hora_inicio" name="hora_inicio" value="{{ $evento->hora_inicio }}" required>
                </div>

                <div class="mb-3">
                    <label for="precio_boleta" class="form-label">Precio Boleta</label>
                    <input type="number" step="0.01" class="form-control" id="precio_boleta" name="precio_boleta" value="{{ $evento->precio_boleta }}" required>
                </div>

                <div class="mb-3">
                    <label for="imagen" class="form-label">Imagen</label>
                    <input type="file" class="form-control" id="imagen" name="imagen">
                    @if($evento->imagen)
                        <div class="mt-2">
                            <p>Imagen actual:</p>
                            <img src="{{ asset('storage/' . $evento->imagen) }}" alt="Imagen Evento" class="img-thumbnail" width="200">
                        </div>
                    @endif
                </div>

                <button type="submit" class="btn btn-danger"><i class="bi bi-pencil-square"></i> Editar</button>
                <a href="{{ route('eventos.index') }}" class="btn btn-dark ms-2">Cancelar</a>
            </form>
        </div>
    </div>
</div>
@endsection


