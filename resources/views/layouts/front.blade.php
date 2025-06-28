@php
	$category=DB::table('categories')->orderBy('id','ASC')->get();
	$seo=DB::table('seos')->first();
	$social=DB::table('socials')->first();
	$horizontal1=DB::table('ads')->where('type',2)->first();
	$setting=DB::table('settings')->first();
@endphp
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
<html lang="en-US">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
	   <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="{{ $seo->meta_author ??'' }}">
        <meta name="keyword" content="{{ $seo->meta_keyword ??''}}">
        <meta name="description" content="{{ $seo->meta_description ??''}}">
        <meta name="google-verification" content="{{ $seo->google_verification ??''}}">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        @yield('meta')
     
        <title>{{ $seo->meta_title }}</title>
         
     <link rel="icon" href="{{ asset($setting->favicon ??'') }}">
<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/12.0.0-1\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/12.0.0-1\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/newssitedesign.com\/institute\/wp-includes\/js\/wp-emoji-release.min.js?ver=5.2.19"}};
			!function(e,a,t){var n,r,o,i=a.createElement("canvas"),p=i.getContext&&i.getContext("2d");function s(e,t){var a=String.fromCharCode;p.clearRect(0,0,i.width,i.height),p.fillText(a.apply(this,e),0,0);e=i.toDataURL();return p.clearRect(0,0,i.width,i.height),p.fillText(a.apply(this,t),0,0),e===i.toDataURL()}function c(e){var t=a.createElement("script");t.src=e,t.defer=t.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(t)}for(o=Array("flag","emoji"),t.supports={everything:!0,everythingExceptFlag:!0},r=0;r<o.length;r++)t.supports[o[r]]=function(e){if(!p||!p.fillText)return!1;switch(p.textBaseline="top",p.font="600 32px Arial",e){case"flag":return s([55356,56826,55356,56819],[55356,56826,8203,55356,56819])?!1:!s([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]);case"emoji":return!s([55357,56424,55356,57342,8205,55358,56605,8205,55357,56424,55356,57340],[55357,56424,55356,57342,8203,55358,56605,8203,55357,56424,55356,57340])}return!1}(o[r]),t.supports.everything=t.supports.everything&&t.supports[o[r]],"flag"!==o[r]&&(t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&t.supports[o[r]]);t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&!t.supports.flag,t.DOMReady=!1,t.readyCallback=function(){t.DOMReady=!0},t.supports.everything||(n=function(){t.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",n,!1),e.addEventListener("load",n,!1)):(e.attachEvent("onload",n),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&t.readyCallback()})),(n=t.source||{}).concatemoji?c(n.concatemoji):n.wpemoji&&n.twemoji&&(c(n.twemoji),c(n.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel="stylesheet" id="wp-block-library-css" href="{{ asset('public/frontend/css/dist/block-library/style.mina946.css?ver=5.2.19') }}" type="text/css" media="all" />
<link rel="stylesheet" id="bootstrap-css" href="{{ asset('public/frontend/assets/css/bootstrap.mina946.css?ver=5.2.19') }}" type="text/css" media="all" />
<link rel="stylesheet" id="font-awesome-css" href="{{ asset('public/frontend/assets/css/font-awesome.mina946.css?ver=5.2.19') }}" type="text/css" media="all" />
<link rel="stylesheet" id="responsive-css" href="{{ asset('public/frontend/assets/css/responsivea946.css?ver=5.2.19') }}" type="text/css" media="all" />
<link rel="stylesheet" id="menu-css" href="{{ asset('public/frontend/assets/css/menua946.css?ver=5.2.19') }}" type="text/css" media="all" />
<link rel="stylesheet" id="owl.carousel-css" href="{{ asset('public/frontend/assets/css/owl.carousel.mina946.css?ver=5.2.19') }}" type="text/css" media="all" />
<link rel="stylesheet" id="style-css" href="{{ asset('public/frontend/stylea946.css?ver=5.2.19') }}" type="text/css" media="all" />
<script type="text/javascript" src="{{ asset('public/frontend/js/jquery/jquery4a5f.js?ver=1.12.4-wp') }}"></script>
<script type="text/javascript" src="{{ asset('public/frontend/js/jquery/jquery-migrate.min330a.js?ver=1.4.1') }}"></script>
<script type="text/javascript" src="{{ asset('public/frontend/assets/js/bootstrap.mina946.js?ver=5.2.19') }}"></script>


<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
<style>

body {
	font-size: 16px;
	width:100%;
	font-family: SolaimanLipiNormal;
}

	
.menu_section{
    background: #0f4f17;
    box-shadow: 0 0 10px #ddd;
    z-index: 999999;
}


.menu_area .menu_bottom .mainmenu a , .navbar-default .navbar-nav > li > a {
    color: #ffffff;
    text-transform: capitalize;
    padding: 13px 16px;
    border-right:1px solid#07070863;
}




.top_scrool_1 {
	background: #0f4f17;
	padding: 9px 5px;
	color: #ffffff;
	font-size: 16px;
	text-align: left;
}

.top_scrool_2 {
	padding: 5px 5px;
	border: 1px solid#0f4f17;
	margin-left: -30px;
	height: 41px;
}

.bottom_scrool_1 {
	background: #0f4f17;
	padding: 9px 5px;
	color: #ffffff;
	font-size: 16px;
	text-align: left;
}

.bottom_scrool_2 {
	padding: 5px 5px;
	border: 1px solid#0f4f17;
	margin-left: -30px;
	height: 41px;
}

.history-content a {
	color: #0f4f17;
	text-decoration: none;
}

.president-title a {
	text-decoration: none;
	color: #0f4f17;
		
}



.cat-title {
	color: #0f4f17;
	font-size: 20px;
	font-weight: 700;
	border-bottom: 1px solid#e3e3e3;
	position: relative;
	margin-bottom: 10px;
	padding-bottom: 3px;
}



.cat-title::before {
	position: absolute;
	left: 0;
	bottom: -1px;
	width: 10%;
	height: 2px;
	content: '';
	background: #0f4f17;
}


.president-deg {
	text-align: center;
	background: #0f4f17;
	padding: 10px;
	color: #ffffff;
	font-size: 20px;
}

.notic-title {
	background: #0f4f17;
	font-size: 20px;
	color: #ffffff;
	text-align: center;
	font-weight: 700;
	padding: 7px 5px;
	border-radius: 11px 11px 0 0;
	margin-bottom: 10px;
}

.notic-content ul li::before {
	content: "\f00c";
	position: absolute;
	bottom: 8px;
	left: 3px;
	font-family: 'FontAwesome';
	color: #0f4f17;
}


.link-title {
	background: #0f4f17;
	font-size: 20px;
    color: #ffffff;
	text-align: center;
	font-weight: 700;
	padding: 7px 5px;
	border-radius: 11px 11px 0 0;
	margin-bottom: 10px;
}


.link-content ul li::before {
	content: "\f0a4";
	position: absolute;
	bottom: 8px;
	left: 5px;
	font-family: 'FontAwesome';
	color: #0f4f17;
}


.footer-section{
    background: #22272B;
    padding: 50px 0;
}

.footer-menu ul li a{
    color:#808080;
     
}

.footer-menu-title {
	font-size: 18px;
	color: #ffffff;
	text-align: left;
	position: relative;
	z-index: 1;
	border-bottom: 1px solid #414141;
	padding-bottom: 10px;
}

.footer-icon p{
    color:#ffffff;
   }
 
 .footer-menu-title::before {
	position: absolute;
	left: 0;
	bottom: -1px;
	content: '';
	width: 23%;
	height: 2px;
	background: #0f4f17;
}
 
 .contcat-info i.fa{
    position: absolute;
    left: 0;
    top:5px;
     color: #0f4f17;
 }
 
 .bottom-footer-social a:hover{
    color:#fff;
    background: #0f4f17;
    border: 1px solid  #0f4f17;
}

.bottom-footer-section{
    background: #1D2023;
    padding: 20px 0;
    border-top: 1px solid#4b4b4b;
}
 


</style>
</head>
<body>


<div class="banner-section">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="banner">
<a href="{{ URL::to('/') }}"><img src="{{ asset($setting->logo ??'') }}" alt="Banner" width="100%"></a>
</div>
</div>
</div>
</div>
</div>



<div class="container">
<section class="menu_section" id="myHeader">
<div class="row">
<div class="col-md-12 col-sm-12">
<div id="menu-area" class="menu_area">
<div class="menu_bottom">
<nav role="navigation" class="navbar navbar-default mainmenu">

<div class="navbar-header">
<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div>

<div id="navbarCollapse" class="collapse navbar-collapse">
<div class="menu-main-menu-container"><ul id="menu-main-menu" class="nav navbar-nav"><li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-25" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-25 active"><a title="প্রচ্ছদ" href="{{ URL::to('/') }}">প্রচ্ছদ</a></li>
<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-24" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-24"><a title="{{$setting->institute_history ??''}}" href="{{ URL::to('/institute') }}">{{$setting->institute_history ??''}}</a></li>
<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-34" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-34 dropdown"><a title="কর্মকর্তা ও কর্মচারী" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true">কর্মকর্তা ও কর্মচারী <span class="caret"></span></a>
<ul role="menu" class=" dropdown-menu">
<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-35" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-35"><a title="কর্মচারী" href="{{ URL::to('/kormocari') }}">কর্মচারী</a></li>
<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-33" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-33"><a title="কর্মকর্তা" href="{{ URL::to('/staff') }}">কর্মকর্তা</a></li>
</ul>
</li>

<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-36" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-36 dropdown"><a title="কাউন্সিল" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true">প্রকল্প ও অন্যান্য <span class="caret"></span></a>
<ul role="menu" class=" dropdown-menu">
@foreach($category as $row)
@php
$subcategory=DB::table('subcategories')->where('category_id',$row->id)->get();
@endphp
<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-37" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-37"><a title="{{ $row->category_bn ??''}}" href="{{ URL::to('post/'.$row->id.'/'.$row->category_bn ??'')}}">{{ $row->category_bn ??''}}</a></li>
	@endforeach	
</ul>
</li>

<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-36" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-36 dropdown"><a title="কাউন্সিল" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true">কাউন্সিলর<span class="caret"></span></a>
<ul role="menu" class=" dropdown-menu">
<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-37" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-37"><a title="কাউন্সিলর" href="{{ URL::to('/couiencelor') }}">কাউন্সিলর</a></li>
</ul>
</li>
<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-38" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-38 dropdown"><a title="গ্যালারী" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true">গ্যালারী <span class="caret"></span></a>
<ul role="menu" class=" dropdown-menu">
<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-21" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-21"><a title="ফটো গ্যালারী" href="{{ URL::to('/photo') }}">ফটো গ্যালারী</a></li>
<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-19" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-19"><a title="ভিডিও গ্যালারী" href="{{ URL::to('/gallery') }}">ভিডিও গ্যালারী</a></li>
</ul>
</li>
@php
$thirdcat=DB::table('categories')->skip(2)->first();
$thirdcatpostbig=DB::table('posts')->where('cat_id',$thirdcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
$thirdcatpostsmall=DB::table('posts')->where('cat_id',$thirdcat->id)->where('categoryhomepage',1)->orderBy('id','DESC')->limit(3)->get();
@endphp
<li itemscope="itemscope" itemtype="{{ URL::to('post/'.$thirdcat->id.'/'.$thirdcat->category_bn ??'')}}" id="menu-item-180" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-180"><a title="{{ $thirdcat->category_bn ??''}}" href="{{ URL::to('post/'.$thirdcat->id.'/'.$thirdcat->category_bn ??'')}}">সাম্প্রতিক খবর</a></li>
<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-23" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-23"><a title="যোগাযোগ" href="{{ URL::to('/contact') }}">যোগাযোগ</a></li>
</ul></div> </div>
</nav>
</div>
</div>
</div>
</div>
</div>
</section>


<div class="top-scroll-section">
<div class="container">
<div class="row">
<div class="top_scroll">
<div class="col-md-2 col-sm-3">
<div class="top_scrool_1">
                    @php
					$firstcat=DB::table('categories')->first();
					$firstcatpostbig=DB::table('posts')->where('cat_id',$firstcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
					$firstcatpostsmall=DB::table('posts')->where('cat_id',$firstcat->id)->where('categoryhomepage',1)->orderBy('id','DESC')->limit(10)->get();
					@endphp	
<i class="fa fa-bell" aria-hidden="true"></i>
  নোটিশ </div>
</div>
<div class="col-md-10 col-sm-9">
@php
$firstcat=DB::table('categories')->first();
$firstcatpostbig=DB::table('posts')->where('cat_id',$firstcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
$firstcatpostsmall=DB::table('posts')->where('cat_id',$firstcat->id)->where('categoryhomepage',1)->orderBy('id','DESC')->limit(10)->get();
@endphp	
<div class="top_scrool_2">
<marquee direction="left" scrollamount="4px" onmouseover="this.stop()" onmouseout="this.start()">
@foreach($firstcatpostsmall as $row) 
@php
$slug=preg_replace('/\s+/u', '-', trim($row->title_bn ??''));
@endphp
<a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}"> <i class="fa fa-square" aria-hidden="true"></i>   {{ $row->title_bn ??'' }} </a>
 @endforeach

</marquee>
</div>
</div>
</div>
</div>
</div>
</div>

@yield('content')




<div class="footer-section">
<div class="container">
<div class="row">
<div class="col-md-3 col-sm-3">
<div class="footer-menu-title ">
ঠিকানা </div>
<div class="footer-icon">
<p class="contcat-info"> <i class="fa fa-map-marker"></i>অফিস :  {{$setting->address_bn ??''}} </p>
<p class="contcat-info"> <i class="fa fa-envelope-o"></i> {{ $setting->email ??''}}  </p>
<p class="contcat-info"> <i class="fa fa-phone"></i>
মোাবাইল: {{ $setting->phone_bn ??''}}  </p>
</div>
<div class="bottom-footer-social">
<a href="{{ $social->facebook ??''}}" target="_blank"><i class="fa fa-facebook"></i></a>
<a href="{{ $social->twitter ??''}}" target="_blank"><i class="fa fa-twitter"></i></a>
<a href="{{ $social->youtube ??''}}" target="_blank"><i class="fa fa-youtube"></i></a>
<a href="{{ $social->linkedin ??''}}" target="_blank"><i class="fa fa-linkedin"></i></a>
</div>
</div>
<div class="col-md-3 col-sm-3 col-xs-6">
<div class="footer-menu-title ">
ফুটার মেনু </div>
<div class="footer-menu">
<div class="menu-footer-menu-one-container"><ul id="menu-footer-menu-one" class="menu"><li id="menu-item-148" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-148"><a href="{{ URL::to('/institute') }}">প্রতিষ্ঠান সম্পর্কে</a></li>
<li id="menu-item-144" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-144"><a href="{{ URL::to('/post/16/প্রোজেক্ট') }}">প্রকল্প সমূহ</a></li>
<li id="menu-item-145" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-145"><a href="{{ URL::to('/photo') }}">ফটো গ্যালারী</a></li>
<li id="menu-item-146" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-146"><a href="{{ URL::to('/post/15/নোটিশ') }}">নোটিশ</a></li>
<li id="menu-item-147" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-147"><a href="{{ URL::to('/contact') }}">যোগাযোগ</a></li>
<li id="menu-item-204" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-204"><a href="{{ URL::to('/post/17/ব্লগ') }}">সাম্প্রতিক খবর</a></li>
</ul></div> </div>
</div>
<div class="col-md-3 col-sm-3 col-xs-6">
<div class="footer-menu-title ">
ফুটার মেনু </div>
<div class="footer-menu">
<div class="menu-footer-menu-two-container"><ul id="menu-footer-menu-two" class="menu"><li id="menu-item-149" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-149"><a href="{{ URL::to('/couiencelor') }}">কাউন্সিলর</a></li>
<li id="menu-item-150" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-150"><a href="{{ URL::to('/staff') }}">কর্মকর্তা</a></li>
<li id="menu-item-151" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-151"><a href="{{ URL::to('/kormocari') }}">কর্মচারী</a></li>
<li id="menu-item-152" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-152"><a href="{{ URL::to('/contact') }}">যোগাযোগ</a></li>
<li id="menu-item-153" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-153"><a href="{{ URL::to('/gallery') }}">ভিডিও গ্যালারী</a></li>
<li id="menu-item-206" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-206"><a href="{{ URL::to('/post/16/প্রোজেক্ট') }}">প্রকল্প সমূহ</a></li>
</ul></div> </div>
</div>
<div class="col-md-3 col-sm-3 col-xs-12">
<div class="footer-menu-title">
লোকেশন মেপ </div>
<div class="f-map">
<iframe src="{{ $seo->googlemaplink ??''}}" width="600" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>
</div>
</div>
</div>
</div>


</html>

<div class="bottom-footer-section">
<div class="container">
<div class="row">
<div class="col-md-6 col-sm-6">
<div class="copy-right">
© সকল কিছুর স্বত্বাধিকার {{ $seo->meta_title }}
</div>
</div>
<div class="col-md-6 col-sm-6">
<div class="design-developed">
সকল কারিগরী সহযোগিতায়  <a href="http://www.elitedesign.com.bd/" target="_blank">এলিট ডিজাইন</a>
</div>
</div>
</div>
<a href class="scrollToTop"><i class="fa fa-angle-up"></i></a>
</div>
</div>

<script type="text/javascript" src="{{ asset('public/frontend/assets/js/jquery.min8de4.js?ver=20160816') }}"></script>
<script type="text/javascript" src="{{ asset('public/frontend/assets/js/owl.carousel.min8de4.js?ver=20160816') }}"></script>
<script type="text/javascript" src="{{ asset('public/frontend/assets/js/main8de4.js?ver=20160816') }}"></script>
<script type="text/javascript" src="{{ asset('public/frontend/js/wp-embed.mina946.js?ver=5.2.19') }}"></script>
