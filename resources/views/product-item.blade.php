@extends('layout.master')

@section('title', $title)

@section('slide')

<!-- one -->
<section class="slide fade-6 kenBurns whiteSlide">
  <div class="content">
    <div class="container">
      <div class="wrap noSpaces align-top">

        @include('layout.product.item-breadcrumb', ['routeName' => 'menu.product'])

        <div class="flex margin-top-phone-12 margin-top-phablet-12">
          <div class="col-8-12 col-tablet-2-5 showForDesktop showForTablet hideForPhablet hideForPhone"></div>
          <div class="col-4-12 col-tablet-3-5 col-phablet-1-1 col-phone-1-1">

            <ul class="equal equalMobile margin-1">
              <li class="fix-12-12 margin-right-0 padding-top-2 padding-right-2 padding-top-phablet-0 padding-right-phablet-0" >

                @php
                  $image_sets = json_decode($product->image_sets,true);
                  $swiper_class = count($image_sets)<=1 ? "" : "swiper-container";
                @endphp

                <div class="fix-12-12 relative swiper-container">
                  <div class="clickable animated margin-bottom-2 ae-1 fadeIn swiper-wrapper masonry controller popupTrigger productImg" data-popup-id="75-1" data-slider-id="82">
                    @foreach ($image_sets as $image)
                      <div class="selected swiper-slide " >
                        <img src="{{ Voyager::image( $image ) }}"  class="productImg" alt="iPhone" style="width: auto;height: 358px;"/>
                        {{-- style="width: auto;height: 358px;" --}}
                      </div>
                    @endforeach
                  </div>

                  @if(!empty($swiper_class))
                    <div class=" ae-5 fromLeft padding-1 margin-left-2 arrow-White swiper-button-prev" data-slider-id="82" data-slider-action="prev"></div>
                    <div class=" ae-5 fromRight padding-1 margin-right-2 arrow-White swiper-button-next" data-slider-id="82" data-slider-action="next"></div>
                    <!-- <div class="  ae-3 fromBottom swiper-pagination" data-slider-id="82"></div> -->
                  @endif
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
                  {{-- <h1 class="smaller margin-bottom-2 ae-5 fromLeft left">{{$product->title}}</h1> --}}
                  <div class="ae-6 fromRight left productcontent">
                    <p class="large margin-bottom-3 opacity-8">
                      {!! $product->body !!}
                    </p>
                  </div>
                </div>
              </li>
            </ul>

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

            @php
              $image_sets = json_decode($product->image_sets,true);
              $swiper_class = count($image_sets)==1 ? "" : "swiper-container";
            @endphp

            @if(!empty($swiper_class))
              <div class="leftControl-82 ae-5 fromLeft selected" data-popup-id="75-1" data-slider-id="75-1" data-slider-action="prev"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-left"></use></svg></div>
              <div class="rightControl-82 ae-5 fromRight" data-popup-id="75-1" data-slider-id="75-1" data-slider-action="next"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-right"></use></svg></div>
            @endif
            <ul class="slider animated ae-1 fromAbove inlineBlock clickable popupContent disableSelect" data-slider-id="75-1" style="display: inline-block;" >
              @foreach ($image_sets as $k => $image)
                @if($k==0)
                  <li class="selected">
                    <img src="{{ Voyager::image( $image ) }}" alt="Image"/>
                  </li>
                @else
                  <li>
                    <img src="{{ Voyager::image( $image ) }}" alt="Image"/>
                  </li>
                @endif
              @endforeach

              @if($k==0)
                <li>
                  <img src="{{ Voyager::image( $image_sets[$k] ) }}" alt="Image"/>
                </li>
              @endif

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
    autoplay: {
        delay: 8000,
        disableOnInteraction: false,
      },
    loop : true,//循環
  })


  var resizeBg = function() {
    // 處理 showForTablet 跟 showForPhablet 的交界判斷
    if($('.menuSide.showForTablet:visible').length>0 && $('.menuSide.showForPhablet:visible').length>0){
      $('.menuSide.showForPhablet:visible').find('div.sections').hide();
    }

    if($('.menuSide.showForTablet:visible').length==0 && $('.menuSide.showForPhablet:visible').length>0){
      $('.menuSide.showForPhablet:visible').find('div.sections').show();
    }
  }

  resizeBg();
  $(window).resize(resizeBg).trigger("resize");

</script>
@endsection

