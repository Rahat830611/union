@extends('layouts.front')
@section('meta')
  <title>কর্মকর্তা</title>
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


<div class="officer-page-section">
<div class="container">
<div class="officer-page-wrpp">
<div class="row">
<div class="officer-page-title">
সকল কর্মকর্তা  </div>
<div class="col-md-12">
<table class="table table-bordered">
<thead>
<tr>
<th scope="col">ছবি </th>
<th scope="col">নাম</th>
<th scope="col">পদবী</th>
<th scope="col">মোবাইল</th>
</tr>
</thead>
<tbody>

		    @php
            $horizontal1=DB::table('ads')->where('type',2)->limit(1000)->get();
            @endphp
@foreach($horizontal1 as $row) 
<tr>
<td>
<div class="image">
<img src="{{ asset($row->ads ??'')}}" alt="">
</div>
</td>
<td class="wrpper">{{ $row->link ??'' }}</td>
<td class="wrpper">{{ $row->designation ??'' }}</td>
<td class="wrpper">{{ $row->mobile ??'' }}</td>
</tr>
@endforeach	

</tbody>
</table>
<div class="row">
<div class="col-md-12 col-sm-12">
</div>
</div>
</div>
</div>
</div>
</div>

@endsection