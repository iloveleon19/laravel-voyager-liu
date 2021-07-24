@extends('layout.master')

@section('style')
  <style id="search_style"></style>
@endsection

@section('title',$title)

@section('nav_menu')
  <!-- 桌面版顯示 -->
  <nav class="panel top showForDesktop showForTablet hideForPhone hideForPhablet">
    <div class="sections">
      <div class="left"><span class="button actionButton sidebarTrigger" data-sidebar-id="1"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu"></use></svg></span></div>
    </div>
  </nav>

  <!-- 手機版顯示，首頁以外的用js加上 bgWhite 這個class -->
  <nav class="panel top bgWhite showForPhone showForPhablet hideForTablet hideForDesktop ">
    <div class="sections">
      <div class="left"><span class="button actionButton sidebarTrigger" data-sidebar-id="1"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu"></use></svg></span></div>
    </div>
  </nav>
@endsection

@section('nav_grid')
  @include('layout.product.mb-search', ['menuName'=>'product_search'])
@endsection

@section('slide')

<!-- one -->
<section class="slide fade-6 kenBurns whiteSlide">
  <div class="content">
    <div class="container">
      <div class="wrap noSpaces align-top">

        @include('layout.product.search', ['menuName'=>'product_search'])

        <div class="flex margin-top-phone-13 margin-top-phablet-13">
          <div class="col-8-12 col-tablet-2-5 showForDesktop showForTablet hideForPhablet hideForPhone"></div>
          <div class="col-4-12 col-tablet-3-5 col-phablet-1-1 col-phone-1-1">
            <ul class="flex equal equalMobile margin-1">

              @foreach ($products as $product)
                @php
                    $index = $product->slug."\n";
                    $index .= $product->title."\n";
                    $index .= $product->categories->implode('name',',')."\n";
                    $index .= $product->location."\n";
                    $index .= $product->seo_title."\n";
                    $index .= $product->meta_description."\n";
                    $index .= $product->meta_keywords."\n";

                    if(!empty($product->start_year)){
                      $index.= $product->start_year."\n";
                    }

                    if(!empty($product->finish_year)){
                      $index.= $product->finish_year."\n";

                      if(!empty($product->start_year)){
                        $end = $product->finish_year;
                        for($start = $product->start_year+1; $start < $end; $start++){
                          $index.= $start."\n";
                         
                        }
                        $index.= $product->start_year .' - '. $product->finish_year."\n";
                      }
                    }

                @endphp

                <li class="searchable hoverli col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1" data-index="{{$index}}">

                  <a class="item-101" href="{{ route('menu.product.item',['slug' => $product->slug]) }}">

                    <ul class="flex later reverse">
                      <li class="col-6-12 col-tablet-1-2 col-phablet-1-2 col-phone-1-2 left">
                        <div class="flex" style="flex-direction: column;word-wrap: break-word;">
                          <h3 class="smaller margin-bottom-2 fromLeft col-12-12  col-tablet-1-1 col-phablet-1-1 col-phone-1-1">{{$product->title}}</h3>
                          @if(count($product->categories)>0)
                            <div class="opacity-8 col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1">
                              {{$product->categories->implode('name',',')}}
                            </div>
                          @endif
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
                      <li class="col-6-12 col-tablet-1-2 col-phablet-1-2 col-phone-1-2">
                        @php
                          $filename = pathinfo($product->excerpt_image);
                          $photoPath = $filename['dirname'].'/'.$filename['filename']."-medium.".$filename['extension'];
                        @endphp
                        <img src="{{ Voyager::image( $photoPath ) }}"  alt="{{$product->seo_title}}"/>
                      </li>
                    </ul>
                  </a>
                </li>
              @endforeach

              <li class="no_result hoverli col-12-12 col-tablet-1-1 col-phablet-1-1 col-phone-1-1" style="display:none">
                <h3 class="smaller fromLeft col-12-12  col-tablet-1-1 col-phablet-1-1 col-phone-1-1">查無資料</h3>
              </li>

            </ul>
          </div>
          
        </div>
        <div class="mask opacity"></div>
      </div>
    </div>
  </div>
  <!-- <div class="background" style="background-image:url(assets/img/background/img-90.jpg)"></div> -->
</section>

@endsection

@section('jscode')
<script>
  $(document).ready(function(){

    // 搜尋樣式
    var searchStyle = document.getElementById('search_style');
    $('.input-product-search').on('input change', function() {
      if (!this.value) {
        searchStyle.innerHTML = "";
        return;
      }
      // look ma, no indexOf!

      searchStyle.innerHTML = ".searchable:not([data-index*=\"" + this.value.toLowerCase() + "\" i]) { display: none; }";
      // beware of css injections!
      $('.input-product-search').val($(this).val());

      if($('.searchable:visible').length==0){
        $('.no_result').show();
      }else{
        $('.no_result').hide();
      }
    });

    $('.input-product-search').keypress(function (event) {
      if (event.keyCode == 13) {
        event.preventDefault();
        $('.desktopSearchList').hide();
        $('nav.sidebar.white.left.visible div.close').trigger('click');
        $(".mask").css("display","none");
      }
    });


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

      // 處理 mb 顯示 search 轉換成 pc 事件
      if($('nav.sidebar.white.left.visible input.input-product-search:visible').length>0){
        if($('.actionButton.sidebarTrigger.searchButton:visible').length==0){
          $('nav.sidebar.white.left.visible div.close').trigger('click');
          $('input.input-product-search.desktopSearch:visible').focus();
        }
      }

      // 處理 pc 顯示 search 轉換成 mb 事件
      if($('.mask.opacity:visible').length>0){ // 看得見search的遮罩
        if($('.actionButton.sidebarTrigger.searchButton:visible').length>0){
          $('.mask.opacity:visible').hide();
          $('.actionButton.sidebarTrigger.searchButton:visible').trigger('click');
        }
      }

      // 處理 showForTablet 跟 showForPhablet 的交界判斷
      if($('.searchSide.showForTablet:visible').length>0 && $('.searchSide.showForPhablet:visible').length>0){
        $('.searchSide.showForPhablet:visible').find('div.sections').hide();
      }

      if($('.searchSide.showForTablet:visible').length==0 && $('.searchSide.showForPhablet:visible').length>0){
        $('.searchSide.showForPhablet:visible').find('div.sections').show();
      }

    }
    resizeBg();
    $(window).resize(resizeBg).trigger("resize");

    // // $(".mobileSearch").focus(function(){
    // // //   console.log("GG")
    // //   $(".mobileSearchList").css("display","inline");
    // // //   $(".panel").css("display","none");
    // // //   $(".hoverli").css("display","none");
    // // //   $(".mobileSearchMenu").css("margin-top","0");
    // // });

    // // $(".mobileSearch").blur(function(){
    // // //   console.log("HERE")
    // //   $(".mobileSearchList").css("display","none");
    // // //   $(".panel").css("display","inline");
    // // //   $(".hoverli").css("display","inline");
    // // //   $(".mobileSearchMenu").css("margin-top","70px");
    // // });

    // $('.searchButton').click(function(){
      
    // })

    $(".desktopSearch").focus(function(){
      $(".desktopSearchList").css("display","inline");
      $(".mask").css("display","inline");
    });

    $(".desktopSearch").blur(function(){
      // $(".desktopSearchList").css("display","none");
      //$(".panel").css("display","inline");
    });

    $(".mask").click(function(e){
      $(this).hide();
      $(".desktopSearchList").css("display","none");
      // $(".input-product-search.desktopSearch").css("background-color","#fff")
    })

    // 調整
    $("li.search_context").click(function(event){
      var search_context = $(this).find('span').text();
      $('.input-product-search').val(search_context);
      $('.input-product-search').trigger('change')

      $('.desktopSearchList').hide();
      $('nav.sidebar.white.left.visible div.close').trigger('click');
      $(".mask").css("display","none");
    })

  });
</script>
@endsection
