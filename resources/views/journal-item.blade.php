@extends('layout.master')

@section('title', $title)

@section('slide')

<!-- one -->
<section class="slide fade-6 kenBurns whiteSlide">
  <div class="content">
    <div class="container">
      <div class="wrap noSpaces">

        <div class="noSelect margin-top-8 margin-bottom-8 padding-left-3 padding-right-3">
          <div class="fix-12-12 relative swiper-container ">

            <div class=" clickable animated margin-bottom-2 ae-1 fadeIn swiper-wrapper masonry controller popupTrigger" data-popup-id="75-1" data-slider-id="82">
              @foreach (json_decode ($blog->image_sets,true) as $image)
                <div class="selected swiper-slide ">
                  <img src="{{ Voyager::image( $image ) }}" class="blogImg rounded" alt="iPhone"/>
                </div>
              @endforeach
            </div>

            <div class=" ae-5 fromLeft padding-1 margin-left-1 arrow-White swiper-button-prev" data-slider-id="82" data-slider-action="prev"></div>
            <div class=" ae-5 fromRight padding-1 margin-right-1 arrow-White swiper-button-next" data-slider-id="82" data-slider-action="next"></div>

            <div class="  ae-3 fromBottom swiper-pagination" data-slider-id="82"></div>
          </div>
          <div class="fix-12-12 margin-top-8 margin-top-tablet-12  margin-top-phablet-7 margin-top-phone-7">
            <h1 class="smaller margin-bottom-2 ae-5 fronLeft">{{$blog->title}}</h1>
            <div class="ae-6 fromRight">
              <p class="large margin-bottom-3 opacity-8 left">
                {!! $blog->body !!}
              </p>
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
              @foreach (json_decode ($blog->image_sets,true) as $k => $image)
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

