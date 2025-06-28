@extends('layouts.front')
@section('meta')
  <title>প্রতিষ্ঠানের ইতিহাস</title>
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

<div class="about-page-section">
<div class="container">
<div class="row">
<div class="col-md-12 col-sm-12">
<div class="about-page-title">
প্রতিষ্ঠানের ইতিহাস </div>
<div class="about-page-image">
<img width="600" height="337" src="{{ asset($setting->institutehistoryimages ??'') }}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" srcset="{{ asset($setting->institutehistoryimages ??'') }} 600w, {{ asset($setting->institutehistoryimages ??'') }} 300w, {{ asset($setting->institutehistoryimages ??'') }} 768w, {{ asset($setting->institutehistoryimages ??'') }} 1024w" sizes="(max-width: 600px) 100vw, 600px"> </div>
<div class="about-page-content">
<p>{!! $setting->institute_info_long ??'' !!}</p>
</div>
</div>
</div>
</div>
</div>



@endsection