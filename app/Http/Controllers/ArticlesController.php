<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;

class ArticlesController extends Controller{

    public function validateArticle(){
        return request()->validate([
        'title' => 'required',
        'excerpt' => 'required',
        'body' => 'required'
        ]);
    }

    public function show(Article $foobar){
        //$article = Article::findOrFail($id);
        //return view('articles.show', ['article'=>$article]);
        return $foobar;
    }

    public function index(){
        $articles=Article::latest()->get();
        return view('articles.index', ['articles' => $articles]);
    }

    public function create(){
        return view('articles.create');
    }

    public function store(){

        /*$validateAttributes = request()->validate([
            'title' => 'required',
            'excerpt' => 'required',
            'body' => 'required'
            ]);*/
            //return $validateAttributes;
        
        /*Article::create([
            'title' => request('title'),
            'excerpt' => request('excerpt'),
            'body' => request('body')
            ]);*/
            
        //Article::create($validateAttributes);

        Article::create($this->validateArticle());
            
                       
        return redirect('/articles');
    }

    public function edit($id){
        $article = Article::findOrFail($id);
        return view('articles.edit', compact('article'));
    }

    public function update($id){
        
        $article->update($this.validateArticle);
            
        
        return redirect('/articles/' . $article->id);
    }


}
