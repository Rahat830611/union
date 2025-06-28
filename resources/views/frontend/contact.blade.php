@extends('layouts.front')
@section('meta')
  <title>আমাদের সাথে যোগাযোগ করুন</title>
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


<div class="page-contact-from">
<div class="container">
<div class="page-from-wpper">
<div class="page-from-title">
আপনার পরামর্শ পাঠান </div>
<form method="POST" action="http://formspree.io/support@gmail">
<div class="row">
<div class="col-md-4 col-sm-4">
<input name="Name" type="text" placeholder="নাম " required="">
</div>
<div class="col-md-4 col-sm-4">
<input name="phone" type="number" placeholder=" মোবাইল নাম্বার " required="">
</div>
<div class="col-md-4 col-sm-4">
<input name="Subject" type="text" placeholder=" বিষয়">
</div>
</div>
<div class="row">
<div class="col-md-12">
<textarea name="messages" id="messages" cols="20" rows="5" placeholder="আপনার মন্তব্য"></textarea>
</div>
</div>
<div class="contact-from-btn">
<input type="submit" value="বার্তা পাঠান">
</div>
</form>
</div>
</div>
</div>

@endsection