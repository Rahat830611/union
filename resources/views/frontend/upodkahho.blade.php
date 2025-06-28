@php
$seo=DB::table('seos')->first();
@endphp
@extends('layouts.front')
@section('meta')
  <title>প্রধান নির্বাহী কর্মকর্তা </title>
  
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


<div class="single-page-section">
<div class="container">
<div class="row">
<div class="col-md-10 col-md-offset-1">
<div class="single-page-title">
প্রধান নির্বাহী কর্মকর্তা </div>
<div class="single-page-image">
<img width="400" height="500" src="{{ asset($setting->upodkahhoimg ??'') }}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt=""> </div>
<div class="single-page-content">
<div class="single-page-content">
<p>{!! $seo->upodkahhoshorlong ??'' !!}</p>
</div>
</div>
</div>
</div>
</div>
</div>



@endsection