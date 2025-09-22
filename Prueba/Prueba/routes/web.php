<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\EmpleadoController;
use App\Http\Controllers\EventoController;
use App\Http\Controllers\BoletaController;
use App\Http\Controllers\DetalleVentaControlador;
use App\Http\Controllers\ProductoControlador;
use App\Http\Controllers\reservacionControlador;
use App\Http\Controllers\ventaControlador;

// Vista de entrada
Route::get('/', function () {
    return view('welcome'); // Cuando ingreses al root, verás la vista pública
})->name('welcome');

// Registro
Route::get('/register', [RegisterController::class, 'showRegistrationForm'])->name('register');
Route::post('/register', [RegisterController::class, 'register']);

// Login
Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('/login', [LoginController::class, 'login']);

// Logout
Route::post('/logout', [LoginController::class, 'logout'])->name('logout');

// -

// Admin
Route::prefix('admin')->name('admin.')->middleware('auth')->group(function () {
    Route::get('/dashboard', function () {
        return redirect()->route('empleados.index'); // Redirige al listado de empleados
    })->name('dashboard');

    // CRUD de empleados
    Route::resource('empleados', EmpleadoController::class);

    // Detalles y ventas relacionados con empleados
    Route::prefix('empleados')->name('empleados.')->group(function () {
        Route::resource('detalles', DetalleVentaControlador::class);
        Route::resource('ventas', ventaControlador::class);
    });
});

//CRuds :>
Route::resource('productos', ProductoControlador::class);
Route::resource('eventos', EventoController::class);
Route::resource('boletas', BoletaController::class);

// Reservaciones con parámetro personalizado
Route::resource('reservaciones', reservacionControlador::class)
     ->parameters(['reservaciones' => 'reservacion']);

// Publica
Route::get('/catalogo', function () {
    return view('catalogo');
})->name('catalogo');

Route::get('/eventos', [EventoController::class, 'mostrarEventos'])->name('eventos.publico');

// CLiente
Route::prefix('cliente')->name('cliente.')->middleware('auth')->group(function () {
    Route::get('/dashboard', function () {
        return view('cliente.dashboard');
    })->name('dashboard');
});

// Empleado
Route::prefix('empleado')->name('empleado.')->middleware('auth')->group(function () {
    Route::get('/empl', [EmpleadoController::class, 'soloLectura'])->name('empl');
});
