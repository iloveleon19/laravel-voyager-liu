@extends('layout.master')

@section('title', $title)

@section('nav_menu')
  <!-- 桌面版顯示 -->
  <nav class="panel top showForDesktop showForTablet hideForPhone hideForPhablet">
    <div class="sections">
      <div class="left"><span class="button actionButton sidebarTrigger" data-sidebar-id="1"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu"></use></svg></span></div>
    </div>
  </nav>

  <!-- 手機版顯示，首頁以外的用js加上 bgWhite 這個class -->
  <nav class="panel top showForPhone showForPhablet hideForTablet hideForDesktop ">
    <div class="sections">
      <div class="left"><span class="button actionButton sidebarTrigger" data-sidebar-id="1"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu"></use></svg></span></div>
    </div>
  </nav>
@endsection

@section('slide')

<section class="slide fade-6 kenBurns whiteSlide">
  <div class="content">
    <div class="container">
      <div class="wrap">
        <!-- 照片+簡介 -->
        <div class="fix-9-12 toCenter">

          @if($officeIntro->show_boss_image && $officeIntro->boss)
            @php
              $filename = pathinfo($officeIntro->boss->photo);
              $photoPath = $filename['dirname'].'/'.$filename['filename']."-small.".$filename['extension'];
            @endphp
            <img class="round margin-bottom-1 ae-1 fromCenter" src="{{ Voyager::image( $photoPath ) }}" alt="{{$officeIntro->boss->name}}" width="70" data-action="zoom"/>
          @endif

          {{-- <p class="ae-2 large margin-bottom-2"><span class="opacity-8">{{ $officeIntro->title }}</span></p> --}}
            <h1 class="smaller ae-3 margin-bottom-2">{{ $officeIntro->title }}</h1>
            <div class="padding-left-2 padding-right-2">
              <p class="ae-4 left margin-bottom-4"><span class="opacity-8">{!! $officeIntro->body !!}</span></p>
            </div>
        </div>

        <!-- 專利 -->
        @if($officeIntro->show_patent)
          <div class="fix-8-12">
            <div class="relative ae-5">
              <h1 class="ae-5 fronLeft">專利</h1>
            </div>

            @foreach($patents as $k => $patent)
              <div class="col-7-12 margin-top-2">
                @if($patent->title)
                  <div class="relative ae-5">
                    <h2 class="ae-5 fronLeft">{{$patent->title}}</h2>
                  </div>
                @endif

                <ul class="equal equalMobile margin-1">
                  <li class="fix-12-12 margin-right-0 padding-top-2 padding-right-2 padding-top-phablet-0 padding-right-phablet-0">

                    @php
                      $image_sets = json_decode($patent->image_sets,true);
                      $swiper_class = count($image_sets)<=1 ? "" : "swiper-container";
                    @endphp

                    <div class="fix-12-12 relative {{$swiper_class}}">
                      <div class="clickable animated margin-bottom-2 ae-1 fadeIn swiper-wrapper masonry controller popupTrigger productImg" data-popup-id="75-{{$k+1}}" data-slider-id="82">
                        @foreach ($image_sets as $j => $image)
                          @php
                          $filename = pathinfo($image);
                          $photoPath = $filename['dirname'].'/'.$filename['filename']."-medium.".$filename['extension'];
                          @endphp
                          <div class="selected swiper-slide ">
                            <img src="{{ Voyager::image( $photoPath ) }}" style="width: auto;height: 358px;" class="productImg" alt="{{$filename['filename']}}" data-img-id="{{$j}}"/>
                            {{-- style="width: auto;height: 358px;" --}}
                          </div>
                        @endforeach
                      </div>
                      @if(!empty($swiper_class))
                        <div class=" ae-5 fromLeft padding-1 margin-left-2 arrow-White swiper-button-prev" data-slider-id="82" data-slider-action="prev"></div>
                        <div class=" ae-5 fromRight padding-1 margin-right-2 arrow-White swiper-button-next" data-slider-id="82" data-slider-action="next"></div>
                      @endif
                    </div>

                    <div class="fix-12-12 margin-top-2 margin-top-tablet-2  margin-top-phablet-2 margin-top-phone-2">
                      <div class="light left ae-6 fromRight padding-left-2 padding-right-2">
                        <p class="opacity-8">{{$patent->desrc}}</p>
                      </div>
                    </div>

                  </li>
                </ul>

              </div>
            @endforeach
          </div>
        @endif

        <!-- 合作夥伴 -->
        @if($officeIntro->show_partner)

          <div class="fix-12-12 toCenter margin-top-5">
            <h1 class="smaller margin-bottom-3 ae-1">合作夥伴</h1>
            <ul class="flex fixedSpaces later">

              @foreach($partners as $partner)
                <li class="col-3-12 ae-3 fromCenter">

                  @if($officeIntro->show_partner_image)
                    @php
                      $filename = pathinfo($partner->photo);
                      $photoPath = $filename['dirname'].'/'.$filename['filename']."-small.".$filename['extension'];
                    @endphp
                    <img class="round margin-bottom-3 margin-top-5" src="{{ Voyager::image( $photoPath ) }}" height="128" width="128" alt="{{$partner->name}}"/>
                  @endif

                  <div class="fix-3-12">
                    <h4 class="smallest margin-bottom-1">{{ $partner->name }}</h4>
                    <p class="left"><span class="opacity-8">{!! $partner->intro !!}</span></p>
                  </div>

                  @if($officeIntro->show_partner_social)
                    <div class="fix-3-12 equalElement">
                      <ul class="social-circles">

                        @if($partner->email)
                          <li><a class="social-mail" href="mailto:{{$partner->email}}" target="_blank"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#mail"></use></svg></a></li>
                        @endif

                        @if($partner->facebook)
                          <li><a class="social-facebook" href="{{$partner->facebook}}" target="_blank"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#facebook2"></use></svg></a></li>
                        @endif

                        @if($partner->instagram)
                          <li><a class="social-instagram" href="{{$partner->instagram}}" target="_blank"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#instagram"></use></svg></a></li>
                        @endif

                        @if($partner->twitter)
                          <li><a class="social-twitter" href="{{$partner->twitter}}" target="_blank"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#twitter"></use></svg></a></li>
                        @endif

                      </ul>
                    </div>
                  @endif

                </li>
              @endforeach
            </ul>
          </div>

        @endif

      </div>
    </div>
  </div>
  <!-- <div class="background" style="background-image:url(assets/img/background/img-36.jpg)"></div> -->
</section>

@if($officeIntro->show_patent)
  @foreach($patents as $k => $patent)
    @php
      $image_sets = json_decode($patent->image_sets,true);
      $swiper_class = count($image_sets)==1 ? "" : "swiper-container";
    @endphp

    <div class="popup animated" data-popup-id="75-{{$k+1}}">
      <div class="close right margin-top-10 margin-right-10"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#close"></use></svg></div>
      <div class="content popupContent">
        <div class="container">
          <div class="wrap space">
            <div class="fix-8-12 noSelect">
              <div class="relative ae-5">

                @if(!empty($swiper_class))
                  <div class="leftControl-82 ae-5 fromLeft selected" data-popup-id="75-{{$k+1}}" data-slider-id="75-{{$k+1}}" data-slider-action="prev"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-left"></use></svg></div>
                  <div class="rightControl-82 ae-5 fromRight" data-popup-id="75-{{$k+1}}" data-slider-id="75-{{$k+1}}" data-slider-action="next"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-right"></use></svg></div>
                @endif
                <ul class="slider animated ae-1 fromAbove inlineBlock clickable popupContent disableSelect" data-slider-id="75-{{$k+1}}" style="display: inline-block;" >
                  @foreach ($image_sets as $j => $image)
                    @php
                      $filename = pathinfo($image);
                    @endphp
                    <li class="select-{{$j}}">
                      <img src="{{ Voyager::image( $image ) }}" alt="{{$filename['filename']}}"/>
                    </li>
                  @endforeach
                  @if(count($image_sets)==1)
                    @php
                      $filename = pathinfo($image_sets[0]);
                    @endphp
                    <li>
                      <img src="{{ Voyager::image( $image_sets[0] ) }}" alt="{{$filename['filename']}}"/>
                    </li>
                  @endif
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  @endforeach
@endif

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
    loop : true, //循環
  })

  $('.popupTrigger.productImg[data-popup-id^="75-"] img.productImg').click(function(){
    if(mySwiper.initialized==true){
      mySwiper.autoplay.stop();
    }

    var popupId = $(this).closest('.popupTrigger.productImg').data('popup-id');

    $('ul.slider.popupContent[data-slider-id="'+popupId+'"] li').removeClass('selected');
    var id = $(this).data('img-id');
    var className = 'select-'+id;
    $('ul.slider.popupContent[data-slider-id="'+popupId+'"] li.'+className).addClass('selected');
  })

  $('.popup.animated>.close').click(function(){
    if(mySwiper.initialized==true){
      mySwiper.autoplay.start();
    }
  })

</script>
@endsection
