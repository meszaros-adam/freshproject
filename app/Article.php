<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model{
    
    public function resolveRouteBinding($value){
        return $this->where('id', $value)
        ->orWhere('title', $value)
        ->first();
    }

    protected $fillable = ['title', 'excerpt', 'body'];
    //protected $guarded = [];
    public function path() {
        return route('articles.show', $this);
    }

    public function user(){
        return $this->belongsTo(User::class);
    }
        
}
