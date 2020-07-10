<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

/*Route::get('/posts/{post}', function () {
    return view('post');
});

Route::get('/posts/{post}', function ($post){
    return $post;
});*/

Route::get('/posts/{post}', 'PostsController@show');

Route::get('/contact', function (){
    return view ('contact');
});

Route::get('/about', function (){
    //$articles=App\Article::all();
    //$articles = App\Article::take(2)->get();
    //$articles = App\Article::paginate(2);
    //$articles = App\Article::latest()->get();
    //$articles = App\Article::latest('updated_at')->get();
    //return $articles;
    return view('about', [
        //'articles'=>App\Article::latest()->get()
        'articles' => App\Article::take(3)->latest()->get()
    ]);
});

Route::get('/articles/{article}', 'ArticlesController@show');