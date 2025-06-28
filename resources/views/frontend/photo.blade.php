@extends('layouts.front')
@section('meta')
  <title>ফটো গ্যালারী</title>
@endsection
@section('content')

@php
     $firstsectionbig=DB::table('posts')->where('first_section_thumbnail',1)->orderBy('id','DESC')->first();
	 $firstsectionsmall=DB::table('posts')->where('first_section',1)->orderBy('id','DESC')->limit(5)->get();
	 $firstsectionheding=DB::table('posts')->where('headline',1)->orderBy('id','DESC')->limit(5)->get();
	 $user=DB::table('users')->first();
     $setting=DB::table('settings')->first();
@endphp
 <!--============Scroll 03 start==============-->
    @php
	 $headline=DB::table('posts')
                        ->join('categories','posts.cat_id','categories.id')
                        ->join('subcategories','posts.subcat_id','subcategories.id')
                        ->select('posts.*','categories.category_bn','subcategories.subcategory_bn')
                        ->where('posts.headline',1)
                        ->orderBy('id','DESC')
                        ->limit(5)
                        ->get();               
	 @endphp  


 <div class="photogallery-page-section">
<div class="container">
<div class="row">
@php
$photobig=DB::table('photos')->where('type',1)->orderBy('id','DESC')->limit(8)->get();
$photosmall=DB::table('photos')->where('type',1)->orderBy('id','DESC')->limit(100000)->get();
@endphp


@foreach($photosmall as $row)
<div class="col-md-3 col-sm-3">
<div class="gallery-item">
<div class="gallery-wrpp">
<img width="600" height="337" src="{{ asset($row->photo ??'')}}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt=""> <div class="photo-title">
<div class="photo-content">
<a href="{{ asset($row->photo ??'')}}">{{ $row->title ??''}}</a>
</div>
</div>
</div>
</div>
</div>
 @endforeach




<div class="col-md-12 options border-bottom">


</div>
</div>
</div>



@endsection