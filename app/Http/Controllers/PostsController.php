<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class PostsController extends Controller
{
    public function show($slug){

        /*$posts = [
            'my-first-post' => 'Hello, this is my first blog post!',
            'my-second-post' => 'Now I am getting the hang of this blogging thing'
        ];*/
        
        // if ( ! array_key_exists($post, $posts)) {
        //     abort(404, 'Sorry, that post was not found.');
        // }

        //dd($post); //dump & die
        /*if( !$post ) {
            abort(404);
        }*/
        return view('post', ['post' => Post::where('slug', $slug)->firstOrFail()
        ]);
    }
}