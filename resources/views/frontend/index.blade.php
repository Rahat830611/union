@extends('layouts.front')
@section('content')
@php
     $firstsectionbig=DB::table('posts')->where('first_section_thumbnail',1)->orderBy('id','DESC')->first();
	 $firstsectionsmall=DB::table('posts')->where('first_section',1)->orderBy('id','DESC')->limit(20)->get();
	 $firstsectionheding=DB::table('posts')->where('headline',1)->orderBy('id','DESC')->limit(12)->get();
     $setting=DB::table('settings')->first();
	 $social=DB::table('socials')->first();
	 
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
        
<div class="home-silider-section">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="home-slide owl-carousel">
<div class="home-silde-image">
<img src="{{ asset($setting->baner1 ??'') }}" alt="gallery">
</div>
<div class="home-silde-image">
<img src="{{ asset($setting->baner2 ??'') }}" alt="gallery">
</div>
<div class="home-silde-image">
<img src="{{ asset($setting->baner3 ??'') }}" alt="gallery">
</div>
</div>
</div>
</div>
</div>
</div>


<div class="bottom-scroll-section">
<div class="container">
<div class="row">
<div class="bottom_scroll">
<div class="col-md-2 col-sm-3">
<div class="bottom_scrool_1">
<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
  আপডেটঃ </div>
</div>
<div class="col-md-10 col-sm-9">
<div class="bottom_scrool_2">
	  @php

        $notice=DB::table('notices')->first();                
	 @endphp
<marquee direction="left" scrollamount="4px" onmouseover="this.stop()" onmouseout="this.start()">
<a href=""><i class="fa fa-square" aria-hidden="true"></i>  {{ $notice->notice ??''}} </a>
</marquee>
</div>
</div>
</div>
</div>
</div>
</div>
 
<div class="home-section">
<div class="container">
<div class="row">
<div class="col-md-9">

<div class="history-wrpp">
<div class="history-image">
<img width="600" height="337" src="{{ asset($setting->institutehistoryimages ??'') }}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt srcset="{{ asset($setting->institutehistoryimages ??'') }} 600w, {{ asset($setting->institutehistoryimages ??'') }} 300w, {{ asset($setting->institutehistoryimages ??'') }} 768w, {{ asset($setting->institutehistoryimages ??'') }} 1024w" sizes="(max-width: 600px) 100vw, 600px" /> </div>
<div class="history-content">
{{$setting->institute_info_short ??''}}..... <a href="{{ URL::to('/institute') }}"> বিস্তারিত</a>
</div>
</div>


<div class="row">
<div class="col-md-6 col-sm-6">
<div class="services-wrpp">
<div class="cat-title">
ই সেবা </div>
<div class="service-image">
<img src="{{ asset('public/frontend/assets/img/image-one.png') }}" alt>
</div>
<div class="services-content">
<div class="menu-home-menu-one-container"><ul id="menu-home-menu-one" class="menu"><li id="menu-item-91" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-91"><a href="{{ URL::to('/institute') }}">প্রতিষ্ঠান সম্পর্কে</a></li>
<li id="menu-item-90" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-90"><a href="{{ URL::to('/post/16/প্রোজেক্ট') }}">প্রকল্প সমূহ</a></li>
<li id="menu-item-89" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-89"><a href="{{ URL::to('/post/15/নোটিশ') }}">নোটিশ</a></li>
<li id="menu-item-92" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-92"><a href="{{ URL::to('/gallery') }}">ফটো গ্যালারী</a></li>
</ul></div> </div>
</div>
</div>
<div class="col-md-6 col-sm-6">
<div class="services-wrpp">
<div class="cat-title">
বাজেট ও প্রকল্প </div>
<div class="service-image">
<img src="{{ asset('public/frontend/assets/img/image-two.png') }}" alt>
</div>
<div class="services-content">
<div class="menu-home-menu-two-container"><ul id="menu-home-menu-two" class="menu">
<li id="menu-item-98" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-98"><a href="{{ URL::to('/couiencelor') }}">কাউন্সিলর</a></li>
<li id="menu-item-99" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-99"><a href="{{ URL::to('/staff') }}">কর্মকর্তা</a></li>
<li id="menu-item-100" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-100"><a href="{{ URL::to('/kormocari') }}">কর্মচারী</a></li>
<li id="menu-item-109" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-109"><a href="{{ URL::to('/contact') }}">যোগাযোগ</a></li>
</ul></div> </div>
</div>
</div>
</div>
<div class="row">
<div class="col-md-6 col-sm-6">
<div class="services-wrpp">
<div class="cat-title">
বিজ্ঞপ্তি/আদেশ/দরপত্র </div>
<div class="service-image">
<img src="{{ asset('public/frontend/assets/img/image-three.png') }}" alt>
</div>
<div class="services-content">
<div class="menu-home-menu-three-container"><ul id="menu-home-menu-three" class="menu">
<li id="menu-item-98" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-98"><a href="{{ URL::to('/couiencelor') }}">কাউন্সিলর</a></li>
<li id="menu-item-99" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-99"><a href="{{ URL::to('/staff') }}">কর্মকর্তা</a></li>
<li id="menu-item-100" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-100"><a href="{{ URL::to('/kormocari') }}">কর্মচারী</a></li>
<li id="menu-item-109" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-109"><a href="{{ URL::to('/contact') }}">যোগাযোগ</a></li>
</ul></div> </div>
</div>
</div>
<div class="col-md-6 col-sm-6">
<div class="services-wrpp">
<div class="cat-title">
তথ্য অধিকার </div>
<div class="service-image">
<img src="{{ asset('public/frontend/assets/img/image-four.png') }}" alt>
</div>
<div class="services-content">
<div class="menu-home-menu-four-container"><ul id="menu-home-menu-four" class="menu">
<li id="menu-item-103" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-103"><a href="{{ URL::to('/institute') }}">প্রতিষ্ঠান সম্পর্কে</a></li>
<li id="menu-item-101" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-101"><a href="{{ URL::to('/post/15/নোটিশ') }}">নোটিশ</a></li>
<li id="menu-item-102" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-102"><a href="{{ URL::to('/post/16/প্রোজেক্ট') }}">প্রকল্প সমূহ</a></li>
<li id="menu-item-104" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-104"><a href="{{ URL::to('/gallery') }}">ভিডিও গ্যালারী</a></li>
</ul></div> </div>
</div>
</div>
</div>
<div class="row">
<div class="col-md-6 col-sm-6">
<div class="services-wrpp">
<div class="cat-title">
উদ্ভাবনী কার্যক্রম </div>
<div class="service-image">
<img src="{{ asset('public/frontend/assets/img/image-five.png') }}" alt>
</div>
<div class="services-content">
<div class="menu-home-menu-five-container">
<li id="menu-item-113" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-113"><a href="{{ URL::to('/couiencelor') }}">কাউন্সিলর</a></li>
<li id="menu-item-111" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-111"><a href="{{ URL::to('/kormocari') }}">কর্মচারী</a></li>
<li id="menu-item-115" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-115"><a href="{{ URL::to('/staff') }}">কর্মকর্তা</a></li>
<li id="menu-item-110" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-110"><a href="{{ URL::to('/photo') }}">ফটো গ্যালারী</a></li>
</ul></div> </div>
</div>
</div>
<div class="col-md-6 col-sm-6">
<div class="services-wrpp">
<div class="cat-title">
পর্যটন-সেবা
</div>
<div class="bangladesh-image">
<img src="{{ asset('public/frontend/assets/img/image-six.png') }}" alt>
</div>
<div class="services-content">
<div class="menu-home-menu-six-container"><ul id="menu-home-menu-six" class="menu">
<li id="menu-item-113" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-113"><a href="{{ URL::to('/couiencelor') }}">কাউন্সিলর</a></li>
<li id="menu-item-111" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-111"><a href="{{ URL::to('/kormocari') }}">কর্মচারী</a></li>
<li id="menu-item-115" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-115"><a href="{{ URL::to('/staff') }}">কর্মকর্তা</a></li>
<li id="menu-item-110" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-110"><a href="{{ URL::to('/photo') }}">ফটো গ্যালারী</a></li>
</ul></div> </div>
</div>
</div>
</div>


<div class="video-section">
<div class="row">
<div class="col-md-12">
<div class="video-title">
<i class="fa fa-plug" aria-hidden="true"></i>
সাম্প্রতিক খবর </div>
<div class="video-gallery owl-carousel">

	         @php
			$thirdcat=DB::table('categories')->skip(2)->first();
			$thirdcatpostbig=DB::table('posts')->where('cat_id',$thirdcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
			$thirdcatpostsmall=DB::table('posts')->where('cat_id',$thirdcat->id)->where('categoryhomepage',1)->orderBy('id','DESC')->limit(3)->get();
			@endphp


@foreach($thirdcatpostsmall as $row)	
@php
$slug=preg_replace('/\s+/u', '-', trim($row->title_bn ??''));
@endphp

<div class="recent-imgae">
<img width="600" height="337" src="{{ asset($row->image ??'')}}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt srcset="{{ asset($row->image ??'')}} 600w, {{ asset($row->image ??'')}} 300w" sizes="(max-width: 600px) 100vw, 600px" /> <div class="video-content">
<a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}">{{ $row->title_bn ??'' }}  </a>
</div>
</div>
   @endforeach	


</div>
</div>
</div>
</div>


<div class="video-section">
<div class="row">
<div class="col-md-12">
<div class="video-title">
<i class="fa fa-video-camera" aria-hidden="true"></i>ভিডিও গ্যালারী </div>
@php
$videobig=DB::table('videos')->where('type',1)->orderBy('id','DESC')->first();
$videosmall=DB::table('videos')->where('type',0)->orderBy('id','DESC')->limit(5)->get();
$videosmall2=DB::table('videos')->where('type',1)->orderBy('id','DESC')->limit(100000)->get();
@endphp	
<div class="video-gallery owl-carousel">

@foreach($videosmall2 as $row)
<div class="video-item">
<p><iframe src="https://www.youtube.com/embed/{{  $row->embed_code ??''}}" width="100%" height="400px" frameborder="0" allowfullscreen="allowfullscreen"><span style="display: inline-block; width: 0px; overflow: hidden; line-height: 0;" data-mce-type="bookmark" class="mce_SELRES_start">﻿</span></iframe></p>
</div>
@endforeach

</div>
</div>
</div>
</div>

</div>
<div class="col-md-3 col-sm-8">
									 @php
	                                 $seo=DB::table('seos')->first();
                                     @endphp
<div class="president-wrpp">
<div class="president-deg">
{{ $seo->oddhakhorname ??''}}</div>
<div class="president-image">
<img width="400" height="500" src="{{ asset($setting->oddhakhorimg ??'') }}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt /> </div>
<div class="president-title">
{{ $seo->oddhakhorshortdetail ??''}}<span style="text-align:right"><a href="{{ URL::to('/oddhakhor') }}"> বিস্তারিত</a></span>
</div>
</div>
<div class="president-wrpp">
<div class="president-deg">
{{ $seo->upodkahhoname ??''}} </div>
<div class="president-image">
<img width="400" height="500" src="{{ asset($setting->upodkahhoimg ??'') }}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt /> </div>
<div class="president-title">
{{ $seo->upodkahhoshortdetails ??''}} <span style="text-align:right"><a href="{{ URL::to('/upodkahho') }}"> বিস্তারিত</a></span>
</div>
</div>


<div class="notic-wrpp">
<div class="notic-title">
নোটিশ </div>

@php
$firstcat=DB::table('categories')->first();
$firstcatpostbig=DB::table('posts')->where('cat_id',$firstcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
$firstcatpostsmall=DB::table('posts')->where('cat_id',$firstcat->id)->where('categoryhomepage',1)->orderBy('id','DESC')->limit(10)->get();
@endphp	
<div class="notic-content">
<ul>

@foreach($firstcatpostsmall as $row) 
@php
$slug=preg_replace('/\s+/u', '-', trim($row->title_bn ??''));
@endphp
<li><a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}">{{ $row->title_bn ??'' }}</a></li>
@endforeach	

</ul>
</div>
</div>


<div class="link-wrpp">
<div class="link-title">
গুরুত্বপূর্ণ লিঙ্ক </div>
<div class="link-content">
<div class="menu-home-menu-eleven-container"><ul id="menu-home-menu-eleven" class="menu">

@php
$website=DB::table('websites')->get();
@endphp
@foreach($website as $row)
<li id="menu-item-134" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-134"><a href="{{ $row->website_link ??''}}">{{ $row->website_name ??''}}</a></li>
@endforeach 

</ul></div> </div>
</div>

</div>
</div>
</div>
</div>

 
				@endsection