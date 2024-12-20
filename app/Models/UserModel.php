<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Tymon\JWTAuth\Contracts\JWTSubject;

class UserModel extends Authenticatable implements JWTSubject
{
    use HasFactory;
    
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
        return [];
    }

    protected $table = 'm_user'; 
    protected $primaryKey = 'user_id';
    
    protected $fillable = [
        'username', 
        'nama', 
        'password', 
        'level_id',
        'image' 
    ];

    public function level () {
        return $this -> belongsTo(LevelModel::class, 'level_id', 'level_id');
    }

    public function image() {

        return Attribute::make (
            get :fn ($image) => url ('/storage/posts/' . $image),
        );
    }

}