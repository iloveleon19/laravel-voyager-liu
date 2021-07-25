@extends('layout.master')

@section('title', $title )

@section('nav_menu')
  <!-- 桌面版顯示 -->
  <nav class="panel top showForDesktop showForTablet hideForPhone hideForPhablet">
    <div class="sections">
      <div class="left"><span class="button actionButton sidebarTrigger customLogo" data-sidebar-id="1"><img height="30" src="{{Voyager::image( setting('site.logo') )}}" alt="{{setting('site.title')}}"></span></div>
    </div>
  </nav>

  <!-- 手機版顯示，首頁以外的用js加上 bgWhite 這個class -->
  <nav class="panel top showForPhone showForPhablet hideForTablet hideForDesktop ">
    <div class="sections">
      <div class="left"><span class="button actionButton sidebarTrigger customLogo" data-sidebar-id="1"><img height="30" src="{{Voyager::image( setting('site.logo') )}}" alt="{{setting('site.title')}}"></span></div>
    </div>
  </nav>
@endsection

@section('slide')

  <!-- one -->
  <section class="slide fade-6 kenBurns whiteSlide">
    <div class="content photo_height">
      <div class="container">
        <!-- <div class="leftControl-82 ae-5 fromLeft selected" data-popup-id="75-1" data-slider-id="75-1" data-slider-action="prev"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-left"></use></svg></div> -->
        <!-- <div class="rightControl-82 ae-5 fromRight" data-popup-id="75-1" data-slider-id="75-1" data-slider-action="next"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-right"></use></svg></div> -->
        
        @php
          $is_slider = count($banners)<=1 ? '' : 'slider';
        @endphp
        
        <ul class="{{$is_slider}} fromAbove inlineBlock clickable popupContent disableSelect bannerlist" data-slider-id="75-1" style="display: inline-block;">

          @foreach ($banners as $banner)
            <li class="selected">
              <img src="{{ Voyager::image( $banner->image ) }}" class="bgx" alt="{{$banner->seo_title}}"/>
            </li>
          @endforeach

        </ul>
      </div>
    </div>
    <!-- <div class="background" style="background-image:url(assets/img/background/img-10.jpg)"></div> -->
  </section>

@endsection


@section('jscode')
<script>
  $(document).ready(function(){
    var resizeBg = function() {
      var wh = $(window).height(), ww = $(window).width(), h, w, ih, iw;
      $("ul.bannerlist>li.selected>img.bgx").each(function(){
        ih = $(this).height();
        iw = $(this).width();
        if ( (wh / ih) <= (ww / iw) ) { // 圖片寬小於視窗，高大於視窗
          h = ih * (ww / iw);
          w = iw * (ww / iw);
        } else { // 圖片高小於視窗，寬大於視窗
          h = ih * (wh / ih);
          w = iw * (wh / ih);
        }
        $(this).height(h);
        $(this).width(w);
        $(this).css({'max-height' : h + 'px'});
        $(this).css({'max-width' : w + 'px'});
      })
    }
    resizeBg();
    $(window).resize(resizeBg).trigger("resize");

    if ($("ul.bannerlist > li").length == 1) {
      $(".bannerlist").removeClass('slider');
    }
  });
</script>
@endsection
