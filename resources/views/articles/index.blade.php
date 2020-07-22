@extends('layout')

@section('content')

<div id="wrapper">
	<div id="page" class="container">
		<div id="content">
            @forelse($articles as $article)
            <div class="title">
               <h2><a href="{{ $article->path() }}">{{ $article->title }}</a></h2>
            </div>
            <p>{{ $article->excerpt }} </p>
            <hr />
            @empty
            <p>No relevant articles yet.</p>
            @endforelse
		</div>
		
	</div>
</div>
@endsection