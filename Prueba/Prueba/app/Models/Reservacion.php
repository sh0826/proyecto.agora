<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Reservacion
 * 
 * @property int $id_reservacion
 * @property int|null $id_usuario
 * @property int $cantidad_personas
 * @property int $cantidad_mesas
 * @property Carbon $fecha_reservacion
 * @property string|null $ocasion
 * 
 * @property Usuario|null $usuario
 *
 * @package App\Models
 */
class Reservacion extends Model
{
	protected $table = 'reservacion';
	protected $primaryKey = 'id_reservacion';
	public $timestamps = false;

	protected $casts = [
		'id_usuario' => 'int',
		'cantidad_personas' => 'int',
		'cantidad_mesas' => 'int',
		'fecha_reservacion' => 'datetime'
	];

	protected $fillable = [
		'id_usuario',
		'cantidad_personas',
		'cantidad_mesas',
		'fecha_reservacion',
		'ocasion'
	];

	public function usuario()
	{
		return $this->belongsTo(Usuario::class, 'id_usuario');
	}
}
