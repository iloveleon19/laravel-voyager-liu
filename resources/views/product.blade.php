@extends('layout.master')

@section('title',$title)

@section('slide')
<!-- <div class="hideForDesktop"></div>for mobile
<div class="hideForPhablet "></div>for 電腦 -->
<!-- one -->
<section class="slide fade-6 kenBurns whiteSlide">
  <div class="content">
    <div class="container">
      <div class="wrap noSpaces align-top">

        <div style="float:left;position:fixed;-webkit-transform:translateZ(0);" class="hideForPhablet">
            <div class="fix-1-12 left" style="margin-top:60px">
              <form class="slides-form margin-left-1 margin-right-1" action="#" autocomplete="off">
                <input type="text" class=" input-product-search desktopSearch" style="margin:0 !important;" name="search" placeholder="Search"/>
              </form>
              <ul class="equal equalMobile desktopSearchList">
                  {!! menu('product_search', 'layout.menu.search') !!}
              </ul>
            </div>
        </div> <!-- for電腦 -->
        

        <div style="" class="hideForDesktop">
            <div class="fix-12-12 left mobileSearchMenu" style="margin-top:70px">
              <form class="slides-form " action="#" autocomplete="off">
                    <input type="text" class=" input-product-search mobileSearch" style="margin:0 !important;" name="search" placeholder="Search"/>
              </form>
              <ul class="equal equalMobile mobileSearchList">
                  {!! menu('product_search', 'layout.menu.search') !!}
              </ul>
            </div>
        </div> <!-- for mobile -->

        <div class="flex">
          <div class="col-8-12 col-desktop-1-2 col-tablet-2-5 col-phablet-1-4 col-phone-1-2 hideForPhablet"></div><!-- for電腦 -->
          <div class="hideForDesktop"></div><!-- for mobile -->

          <div class="col-4-12 col-desktop-1-2 col-tablet-3-5 col-phablet-3-4 col-phone-1-2 hideForPhablet">
            <ul class="flex equal equalMobile margin-1">

              @foreach ($products as $product)
                <li class="hoverli col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1">
                  {{-- 要用 slug 導到作品完整頁面 --}}
                  <a class="item-101" href="{{ route('menu.product.item',['slug' => $product->slug]) }}">

                    <ul class="flex later reverse">
                      <li class="col-6-12 col-tablet-1-2 col-phablet-1-2 col-phone-1-1 left">

                          <div class="flex" style="flex-direction: column;word-wrap: break-word;">
                            <h3 class="smaller margin-bottom-2 fromLeft col-12-12  col-tablet-1-1 col-phablet-1-1 col-phone-1-1">{{$product->title}}</h1>
                            <div class="opacity-8 col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1">
                              {{$product->categories->implode('name',',')}}
                            </div>
                            <div class="opacity-8 col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1">{{$product->location}}</div>
                            <div class="opacity-8 col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1">
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
                      </li>
                      <li class="col-6-12 col-tablet-1-2 col-phablet-1-2 col-phone-1-1">
                        <img src="{{ Voyager::image( $product->excerpt_image ) }}"  alt="{{$product->seo_title}}"/>
                      </li>
                    </ul>
                  </a>
                </li>
              @endforeach

            </ul>
          </div><!-- for電腦 -->
          <div class="col-12-12 col-desktop-2-2 col-tablet-5-5 col-phablet-4-4 col-phone-2-2 hideForDesktop">
            <ul class="flex equal equalMobile margin-1">

              @foreach ($products as $product)
                <li class="hoverli col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1">
                  {{-- 要用 slug 導到作品完整頁面 --}}
                  <a class="item-101" href="{{ route('menu.product.item',['slug' => $product->slug]) }}">

                    <ul class="flex later reverse">
                      <li class="col-6-12 col-tablet-1-2 col-phablet-1-2 col-phone-1-1 left">

                          <div class="flex" style="flex-direction: column;word-wrap: break-word;">
                            <h3 class="smaller margin-bottom-2 fromLeft col-12-12  col-tablet-1-1 col-phablet-1-1 col-phone-1-1">{{$product->title}}</h1>
                            <div class="opacity-8 col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1">
                              {{$product->categories->implode('name',',')}}
                            </div>
                            <div class="opacity-8 col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1">{{$product->location}}</div>
                            <div class="opacity-8 col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1">
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
                      </li>
                      <li class="col-6-12 col-tablet-1-2 col-phablet-1-2 col-phone-1-1">
                        <img src="{{ Voyager::image( $product->excerpt_image ) }}"  alt="{{$product->seo_title}}"/>
                      </li>
                    </ul>
                  </a>
                </li>
              @endforeach

            </ul>
          </div><!-- for mobile -->

        </div>
      </div>
    </div>
  </div>
  <!-- <div class="background" style="background-image:url(assets/img/background/img-90.jpg)"></div> -->
</section>

@endsection

@section('jscode')
<script>
  $(document).ready(function(){
      var resizeBg = function() {
        var maxW = 0;
        $('.item-101>ul>li>img').each(function(){
          if($(this).width()>maxW){
            maxW = $(this).width()
          }
        });

        $('.item-101>ul>li>img').each(function(){
            maxW = $(this).width(maxW);
        });
      }
      resizeBg();
      $(window).resize(resizeBg).trigger("resize");

      // $(".mobileSearch").focus();
      
      $(".mobileSearch").focus(function(){
        $(".mobileSearchList").css("display","inline");
        $(".panel").css("display","none");
        $(".hoverli").css("display","none");
        $(".mobileSearchMenu").css("margin-top","0");
        
      });
      $(".mobileSearch").blur(function(){
        $(".mobileSearchList").css("display","none");
        $(".panel").css("display","inline");
        $(".hoverli").css("display","inline");
        $(".mobileSearchMenu").css("margin-top","70px");
      });

      $(".desktopSearch").focus(function(){
        $(".desktopSearchList").css("display","inline");
        //$(".panel").css("display","none");
        
      });
      $(".desktopSearch").blur(function(){
        $(".desktopSearchList").css("display","none");
        //$(".panel").css("display","inline");
      });

  });
</script>
@endsection
