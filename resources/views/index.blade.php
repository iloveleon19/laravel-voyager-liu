@extends('layout.master')

@section('title', $title )

@section('slide')

  <!-- one -->
  <section class="slide fade-6 kenBurns whiteSlide">
    <div class="content photo_height">
      <div class="container">
        <div class="wrap noSpaces flex">
        
          <div class="col-12-12 noSelect">
            <div class="relative ae-5">

              <!-- <div class="leftControl-82 ae-5 fromLeft selected" data-popup-id="75-1" data-slider-id="75-1" data-slider-action="prev"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-left"></use></svg></div> -->
              <!-- <div class="rightControl-82 ae-5 fromRight" data-popup-id="75-1" data-slider-id="75-1" data-slider-action="next"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-right"></use></svg></div> -->
              <ul class="slider animated ae-1 fromAbove inlineBlock clickable popupContent disableSelect" data-slider-id="75-1" style="display: inline-block;">

                {{-- 目前只有一個的時候會有問題 --}}

                @foreach ($banners as $banner)
                  <li class="selected">
                    <img src="{{ Voyager::image( $banner->image ) }}" class="main_productImg" alt="Image"/>
                  </li>
                @endforeach

                {{-- <li class="selected">
                  <img src="assets/img/gallery-75-6.jpg" class="main_productImg" alt="Image"/>
                </li> --}}

                {{-- <li>
                  <img src="assets/img/gallery-75-6.jpg" class="main_productImg" alt="Image"/>
                </li>
                <li>
                  <img src="assets/img/gallery-75-5.jpg" class="main_productImg" alt="Image"/>
                </li>
                <li>
                  <img src="assets/img/gallery-75-1.jpg" class="main_productImg" alt="Image"/>
                </li>
                <li>
                  <img src="assets/img/gallery-75-3.jpg" class="main_productImg" alt="Image"/>
                </li>
                <li>
                  <img src="assets/img/gallery-75-4.jpg" class="main_productImg" alt="Image"/>
                </li>
                <li>
                  <img src="assets/img/gallery-75-2.jpg" class="main_productImg" alt="Image"/>
                </li> --}}

              </ul>
            </div>
          </div>
          
        </div>
      </div>
    </div>
    <!-- <div class="background" style="background-image:url(assets/img/background/img-10.jpg)"></div> -->
  </section>

@endsection