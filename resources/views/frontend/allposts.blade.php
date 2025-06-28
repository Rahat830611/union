@extends('layouts.front')
@section('content')
@php
     $firstsectionbig=DB::table('posts')->where('first_section_thumbnail',1)->orderBy('id','DESC')->first();
	 $firstsectionsmall=DB::table('posts')->where('first_section',1)->orderBy('id','DESC')->limit(20)->get();
	 $firstsectionheding=DB::table('posts')->where('headline',1)->orderBy('id','DESC')->limit(12)->get();
	 $post=DB::table('posts')->first();
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


<div class="container">
<div class="row">
<div class="col-md-12">
<table class="notic-table table-bordered">
<thead>
<tr>
<th scope="col">Date </th>
<th scope="col">Notic Title</th>
<th scope="col">Download</th>
<th scope="col">Details</th>
</tr>
</thead>
<tbody>

@foreach($posts as $row)
@php
$slug=preg_replace('/\s+/u', '-', trim($row->title_bn ??''));
@endphp

<tr>
<td class="n-content">
{{$post->post_date ??''}} </td>
<td class="n-content">{{ $row->title_bn ??'' }}</td>
<td class="n-content"> <a href="{{ asset($row->image ??'') }}"> Download </a></td>
<td class="n-redmore"> <a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}"> <i class="fa fa-eye" aria-hidden="true"></i> বিস্তারিত</a></td>
</tr>
@endforeach


</tbody>
</table>
</div>
</div>
</div>

@endsection