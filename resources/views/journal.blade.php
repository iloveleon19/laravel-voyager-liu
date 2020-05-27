@extends('layout.master')

@section('title',$title)

@section('slide')

<!-- one -->
<section class="slide fade-6 kenBurns whiteSlide">
  <div class="content">
    <div class="container">
      <div class="wrap noSpaces align-top">
        <div class="flex">

          <div class="col-8-12 left padding-top-10">
            <div class="flex">
              <div class="col-2-12">
                <form class="slides-form wide" action="#" autocomplete="off">
                  <input type="text" class="rounded input-38" name="search" placeholder="Search"/>
                </form>

                <ul class="equal equalMobile">
                  {{-- 要加入 menu 可以調整 --}}
                  <li><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Books</a></li>
                  <li><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Commercial</a></li>
                  <li><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Cultural</a></li>
                  <li><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Design</a></li>
                  <li><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Religious</a></li>
                  <li><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Residential</a></li>
                  <li><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Exhibitions</a></li>
                  <li><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Competitions</a></li>
                  <li><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Furniture</a></li>
                  <li><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Photography</a></li>
                  <li><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Hotel</a></li>
                </ul>

              </div>
            </div>
          </div>

          <div class="col-4-12">
            <ul class="flex equal equalMobile">
              @foreach ($blogs as $blog)
                <li>
                  {{-- 要用 slug 倒到作品完整頁面--}}
                  <a class="item-100" href="{{ route('menu.journal.item',['slug' => $blog->slug]) }}">

                    <ul class="flex later reverse">
                      <li class="col-2-12"></li>
                      <li class="col-4-12 left padding-2">
                          <h3 class="smaller margin-bottom-2 ae-1 fromLeft">{{$blog->title}}</h1>
                          <p class="ae-2 fromLeft">
                            <div class="opacity-8">
                              {{$blog->categories->implode('name',',')}}
                            </div>
                            <div class="opacity-8">{{$blog->location}}</div>
                            <div class="opacity-8">
                              @if ($blog->start_year)
                                {{$blog->start_year}}
                              @endif
  
                              @if ( $blog->start_year && $blog->finish_year)
                                -
                              @endif
  
                              @if ($blog->finish_year)
                                {{$blog->finish_year}}
                              @endif
                            </div>
                          </p>
                      </li>
                      <li class="col-6-12 cell-28 ae-1">
                        <img src="{{ Voyager::image( $blog->excerpt_image ) }}" width="360" alt="{{$blog->seo_title}}"/>
                      </li>
                    </ul>
                  </a>
                </li>
              @endforeach

            </ul>
          </div>

        </div>
      </div>
    </div>
  </div>
  <!-- <div class="background" style="background-image:url(assets/img/background/img-90.jpg)"></div> -->
</section>

@endsection
