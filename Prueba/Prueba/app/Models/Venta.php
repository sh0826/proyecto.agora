<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Ventum
 * 
 * @property int $id_venta
 * @property Carbon $fecha
 * @property float $total
 * @property string $metodo_pago
 * @property int|null $id_usuario
 * 
 * @property User|null $usuario
 * @property Collection|DetalleVenta[] $detalle_venta
 *
 * @package App\Models
 */
class Venta extends Model
{
	protected $table = 'venta';
	protected $primaryKey = 'id_venta';
	public $timestamps = false;

	protected $casts = [
		'fecha' => 'datetime',
		'total' => 'float',
		'id' => 'int'
	];

	protected $fillable = [
		'fecha',
		'total',
		'metodo_pago',
		'id'
	];

	public function usuario()
	{
		return $this->belongsTo(User::class, 'id');
	}

	public function detalle_venta()
	{
		return $this->hasMany(DetalleVenta::class, 'id_venta');
	}
}
