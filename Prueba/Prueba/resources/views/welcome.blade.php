@extends('layouts.app')

@section('content')
<div class="container my-5">
    <div class="row g-4">

      <div class="col-md-6 contenido">
        <br><br>

        <h2>¿Quiénes Somos?</h2>
        <p>
          En Agora Vives Pub, somos un gastro bar que combina las mejores bebidas con una experiencia única de entretenimiento.
          Nuestro objetivo es ofrecer a nuestros clientes un lugar donde puedan disfrutar de deliciosas bebidas en un ambiente acogedor y vibrante.
        </p>

        <h2>Misión</h2>
        <p>
          Nuestra misión es proporcionar una experiencia excepcional, combinando sabores únicos con un servicio al cliente de alta calidad.
          Queremos ser el lugar de referencia para aquellos que buscan disfrutar de una buena bebida y un ambiente animado.
        </p>

        <h2>Visión</h2>
        <p>
          Aspiramos a ser reconocidos como el mejor gastro bar de la ciudad, donde cada visita sea una celebración de las buenas bebidas, la música y la compañía.
          Nos comprometemos a innovar constantemente en nuestra carta y en nuestras experiencias para superar las expectativas de nuestros clientes.
        </p>
      </div>

      <div class="col-md-6">
        <img src="{{ asset('imagenes/bar_fondo.jpg') }}" alt="Foto del bar" class="img-bar" />

        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3976.927694926113!2d-74.1272673894426!3d4.606966595348395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f9fe7f677c629%3A0x579fef4501679101!2sAgora%20Vibes%20Pub!5e0!3m2!1ses-419!2sco!4v1752614316678!5m2!1ses-419!2sco"
          allowfullscreen=""
          loading="lazy"
          referrerpolicy="no-referrer-when-downgrade">
        </iframe>
      </div>

    </div>
</div>
@endsection
