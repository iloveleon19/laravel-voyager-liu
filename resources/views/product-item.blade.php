@extends('layout.master')

@section('title','劉承鑫建築事務所 - 作品')

@section('slide')

<!-- one -->
<section class="slide fade-6 kenBurns whiteSlide">
  <div class="content">
    <div class="container">
      <div class="wrap noSpaces">

        <div class="noSelectn margin-top-8 margin-bottom-8">
          <div class="relative swiper-container ">
            <div class=" ae-5 fromLeft padding-1 margin-left-3 arrow-White swiper-button-prev" data-slider-id="82" data-slider-action="prev"></div>
            <div class=" ae-5 fromRight padding-ㄋ1 margin-right-3 arrow-White swiper-button-next" data-slider-id="82" data-slider-action="next"></div>
            <div class="slider clickable animated margin-bottom-2 ae-1 fadeIn swiper-wrapper" data-slider-id="82">
              <div class="selected swiper-slide ">
                <img src="assets/img/building1.jpg" class="productImg" alt="iPhone"/>
              </div>
              <div class="swiper-slide ">
                <img src="assets/img/building4.jpg" class="productImg" alt="iPhone"/>
              </div>
              <div class="swiper-slide ">
                <img src="assets/img/building5.jpg" class="productImg" alt="iPhone"/>
              </div>
              <div class="swiper-slide ">
                <img src="assets/img/building6.jpg" class="productImg" alt="iPhone"/>
              </div>
            </div>

            <div class="  ae-3 fromBottom swiper-pagination" data-slider-id="82">
            </div>
          </div>
          <div class="fix-5-12 margin-top-8 margin-top-tablet-12  margin-top-phablet-7 margin-top-phone-7">
            <h1 class="smaller margin-bottom-2 ae-5 fronLeft">The Main Reason</h1>
            <div class="ae-6 fromRight">
              <p class="large margin-bottom-3 opacity-8 left">There&rsquo;s a subtle reason that programmers always want to throw away the code and start over.</p>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
  <!-- <div class="background" style="background-image:url(assets/img/background/img-90.jpg)"></div> -->
</section>

@endsection
