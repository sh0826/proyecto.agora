@extends('layouts.cliente')

@section('content')
<h2>Eventos para Cliente</h2>
<div class="row">
    @foreach($eventos as $evento)
        <div class="col-md-4 mb-3">
            <div class="card h-100 shadow-sm">
                @if($evento->imagen)
                    <img src="{{ asset('storage/'.$evento->imagen) }}" class="card-img-top">
                @endif
                <div class="card-body">
                    <h5>{{ $evento->nombre_evento }}</h5>
                    <p>Fecha: {{ $evento->fecha }} <br>Hora: {{ $evento->hora_inicio }}</p>
                </div>
            </div>
        </div>
    @endforeach
</div>
@endsection
