@extends('layout.master')

@section('title', $title)

@section('slide')

<!-- one -->
<section class="slide fade-6 kenBurns whiteSlide ">
  <div class="content">
    <div class="container">
      <div class="wrap noSpaces">

      {{-- 桌面版顯示 --}}
      <div class="hideForMobile margin-top-1" style="float:left;position:absolute;">
          <a href="{{ route('menu.product',['slug' => $product->slug]) }}" class="back"><i class="fa fa-arrow-left"></i><span class="padding-left-1">作品</a>
      </div>

      {{-- 手機版顯示 --}}
      <div class="showForMobile margin-top-1" style="float:left;position:absolute;">
        <a href="{{ route('menu.product',['slug' => $product->slug]) }}" class="back"><i class="fa fa-arrow-left"></i><span class="padding-left-1"></span>作品</a>
      </div>

  {{-- <nav class="panel top margin-top-6">
    <div class="sections">
      <div class="left"><span class="button actionButton sidebarTrigger" data-sidebar-id="3">< 作品</span></div>
    </div>
  </nav>
  <!-- Sidebar -->
  <div class='grid'>
    <nav class="sidebar white left col-12-12" data-sidebar-id="3">
      <div class="close"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#close"></use></svg></div>
      <div class="content">
        <a href="{{ route('menu.index') }}" class="logo"><svg width="100" height="30"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#logo"></use></svg></a>
        <ul class="mainMenu margin-top-3 big">
          {!! menu('front-menu','layout.menu.default') !!}
        </ul>
        <ul class="social opacity-8">
          <li><a href="https://www.facebook.com/chenghsinliu0930"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#facebook"></use></svg></a></li>
          <!-- <li><a href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#twitter"></use></svg></a></li> -->
          <!-- <li><a href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#instagram"></use></svg></a></li> -->
        </ul>
      </div>
    </nav>
  </div> --}}


      <div class="flex">
        <div class="hideForMobile col-6-12 col-desktop-1-2 col-tablet-2-5 col-phablet-1-4 col-phone-1-2"></div>

        <div class="col-6-12 col-desktop-1-2 col-tablet-3-5 col-phablet-1-1 col-phone-1-1">
          <div class="noSelect margin-top-13 margin-bottom-8 padding-left-3 padding-right-3">
            <div class="fix-12-12 relative swiper-container ">
              <div class=" clickable animated margin-bottom-2 ae-1 fadeIn swiper-wrapper masonry controller popupTrigger productImg" data-popup-id="75-1" data-slider-id="82">
                @foreach (json_decode ($product->image_sets,true) as $image)
                <div class="selected swiper-slide ">
                  <img src="{{ Voyager::image( $image ) }}" class="productImg rounded" alt="iPhone"/>
                </div>
                @endforeach
              </div>
            <div class=" ae-5 fromLeft padding-1 margin-left-2 arrow-White swiper-button-prev" data-slider-id="82" data-slider-action="prev"></div>
            <div class=" ae-5 fromRight padding-1 margin-right-2 arrow-White swiper-button-next" data-slider-id="82" data-slider-action="next"></div>
            <!-- <div class="  ae-3 fromBottom swiper-pagination" data-slider-id="82"></div> -->
          </div>
          <div class="fix-12-12 margin-top-1 margin-top-tablet-1  margin-top-phablet-1 margin-top-phone-1">
          <div class="flex left" style="flex-direction: column;word-wrap: break-word;">
            <h2 class="smaller margin-bottom-2 fromLeft col-12-12  col-tablet-1-1 col-phablet-1-1 col-phone-1-1">{{$product->title}}</h2>
            <div class="opacity-8 col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1 productData">
                  {{$product->categories->implode('name',',')}}
            </div>
            <div class="opacity-8 col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1 productData">{{$product->location}}</div>
            <div class="opacity-8 col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1 productData">
                  @if ($product->start_year)
                  {{$product->start_year}}
                  @endif
  
                  @if ( $product->start_year && $product->finish_year)
                                -
                  @endif
  
                  @if ($product->finish_year)
                  {{$product->finish_year}}
                  @endif
              </div>
          </div>
            <!-- <h1 class="smaller margin-bottom-2 ae-5 fromLeft left">{{$product->title}}</h1> -->
            <div class="ae-6 fromRight left productcontent">
              <p class="large margin-bottom-3 opacity-8">
                {!! $product->body !!}
              </p>
            </div>
          </div>
        </div>
        </div>
      </div>
      </div>
    </div>
  </div>
  <!-- <div class="background" style="background-image:url(assets/img/background/img-90.jpg)"></div> -->
</section>

<!-- Popup Gallery -->
<div class="popup animated" data-popup-id="75-1">
  <div class="close right margin-top-10 margin-right-10"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#close"></use></svg></div>
  <div class="content popupContent">
    <div class="container">
      <div class="wrap space">
        <div class="fix-8-12 noSelect">
          <div class="relative ae-5">
            <div class="leftControl-82 ae-5 fromLeft selected" data-popup-id="75-1" data-slider-id="75-1" data-slider-action="prev"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-left"></use></svg></div>
            <div class="rightControl-82 ae-5 fromRight" data-popup-id="75-1" data-slider-id="75-1" data-slider-action="next"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-right"></use></svg></div>
            <ul class="slider animated ae-1 fromAbove inlineBlock clickable popupContent disableSelect" data-slider-id="75-1" style="display: inline-block;">
              @foreach (json_decode ($product->image_sets,true) as $k => $image)
                @if($k==0)
                  <li class="selected">
                    <img src="{{ Voyager::image( $image ) }}" class="rounded" alt="Image"/>
                  </li>
                @else
                  <li>
                    <img src="{{ Voyager::image( $image ) }}" class="rounded" alt="Image"/>
                  </li>
                @endif
              @endforeach

            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

@endsection

@section('jscode')
<script>
  var mySwiper = new Swiper('.swiper-container', {//初始化Swiper
    slidesPerView: 1,
    spaceBetween: 30,
    keyboard: {
      enabled: true,
    },
    navigation: {//前進後退
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    pagination: {//分頁器
        el: '.swiper-pagination',
        clickable :true,
    },
    loop : true,//循環
    })

</script>
@endsection

