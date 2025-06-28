@extends('layouts.front')
@section('meta')
  <title>গ্যালারী গ্যালারী</title>
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


 
<div class="videogallery-page-section">
<div class="container">
<div class="row">
@php
$videobig=DB::table('videos')->where('type',1)->orderBy('id','DESC')->first();
$videosmall=DB::table('videos')->where('type',0)->orderBy('id','DESC')->limit(5)->get();
$videosmall2=DB::table('videos')->where('type',1)->orderBy('id','DESC')->limit(100000)->get();
@endphp	


@foreach($videosmall2 as $row)
<div class="col-md-3 col-sm-3">
<div class="video-wrpp">
<div class="video">
<p><iframe src="https://www.youtube.com/embed/{{  $row->embed_code ??''}}" width="100%" height="400px" frameborder="0" allowfullscreen="allowfullscreen" __idm_id__="5660673"><span style="display: inline-block; width: 0px; overflow: hidden; line-height: 0;" data-mce-type="bookmark" class="mce_SELRES_start">&#xFEFF;</span></iframe></p>
</div>
<div class="video-content">
{{ $row->title ??''}}</div>
</div>
</div>
@endforeach
<div class="col-md-12 options border-bottom">

<ul class="pagination pull-left">
<li></li>
<li></li>
</ul>
</div>

</div>
</div>
</div>



@endsection