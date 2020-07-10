@extends('layout')

@section('content')
<div id="wrapper">
	<div id="page" class="container">
		<div id="content">
            @foreach($articles as $article)
            <div class="title">
                <h2><a href="/articles/{{ $article->id }}">{{ $article->title }}</a></h2>
            </div>
            <p>{{ $article->excerpt }} </p>
            <hr />
            @endforeach

		</div>
		
	</div>
</div>
@endsection