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


// Página de bienvenida
Route::get('/', function () {
    return view('welcome');
});

// 👉 Registro
Route::get('/register', [RegisterController::class, 'showRegistrationForm'])->name('register');
Route::post('/register', [RegisterController::class, 'register']);

// 👉 Login
Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('/login', [LoginController::class, 'login']);
Route::post('/logout', [LoginController::class, 'logout'])->name('logout');

// 🔹 DASHBOARD PARA CADA ROL
// Admin
Route::get('/admin/dashboard', function () {
    return redirect()->route('empleados.index'); // Redirige a lista de empleados

})->name('admin.dashboard');


// CRUD de empleados
Route::resource('empleados', EmpleadoController::class);
Route::prefix('empleados')->name('empleados.')->group(function (){
Route::resource('detalles',DetalleVentaControlador::class);});
Route::prefix('empleados')->name('empleados.')->group(function (){
    Route::resource('ventas',ventaControlador::class);
});

Route::prefix('empleados')->name('empleados.')->group(function () {
    Route::resource('reservaciones', reservacionControlador::class);
});

Route::resource('productos',ProductoControlador::class);
Route::resource('eventos', EventoController::class);
Route::resource('boletas', BoletaController::class);
Route::get('/catalogo', function(){
    return view('catalogo');
});
// Cliente
Route::get('/cliente/dashboard', function () {
    return view('cliente.dashboard');
})->name('cliente.dashboard');


// Empleado
Route::get('/empleado/empl', [EmpleadoController::class, 'soloLectura'])->name('empleado.empl');