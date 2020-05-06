@extends('layout.master')

@section('title','劉承鑫建築事務所 - 事務所簡介')

@section('slide')

<section class="slide fade-6 kenBurns whiteSlide">
  <div class="content">
    <div class="container">
      <div class="wrap noSpaces">
        <div class="margin-top-10 margin-bottom-20">
          <!-- 照片+簡介 -->
          <div class="fix-9-12 toCenter">
            <img class="round margin-bottom-1 ae-1 fromCenter" src="assets/img/avatar-36.jpg" alt="Avatar" width="70" data-action="zoom"/>
            <p class="ae-2 large margin-bottom-2"><span class="opacity-8">劉承鑫建築事務所</span></p>
            <!-- <h1 class="smaller ae-3 margin-bottom-2">劉承鑫建築事務所</h1> -->
              <div class="padding-left-2 padding-right-2">
                <p class="ae-4 left margin-bottom-4"><span class="opacity-8">To create anything–whether a short story or a magazine profile or a film or a sitcom–is to believe, if only momentarily, you are capable of&nbsp;magic.</span></p>
                <p class="ae-4 left margin-bottom-4"><span class="opacity-8">To create anything–whether a short story or a magazine profile or a film or a sitcom–is to believe, if only momentarily, you are capable of&nbsp;magic.</span></p>
              </div>
          </div>

          <!-- 專利 -->
          <div class="fix-8-12 noSelect">
            <div class="relative ae-5">
              <h1 class="ae-5 fronLeft">專利</h1>
              <!-- <ul class="slider clickable animated margin-bottom-2 fadeIn masonry fixedSpaces ae-3 controller popupTrigger" data-slider-id="75-1" data-slider-id="75-1">
                <li class="selected"><img src="assets/img/iphone-82-1.png"  class="wide rounded" alt="Image"/></li>
              </ul> -->
              <ul class=" masonry fixedSpaces ae-3 controller popupTrigger" data-popup-id="75-1" data-slider-id="75-1">
                <li class="col-3-12 col-tablet-1-3 col-phablet-1-2 col-phone-1-1 ae-3 fadeIn">
                  <img src="assets/img/simone-hutsch-jbyLu_fh5fY-unsplash.jpg" class="wide rounded margin-bottom-1" alt="Image"/>
                </li>
              </ul>

            </div>
            <div class="col-7-12 margin-top-2">
              <div class="light left ae-6 fromRight padding-left-2 padding-right-2">
                <p class="opacity-8">建築物（層狀材料，層狀製品一般見B32B）</p>
              </div>
            </div>
          </div>

            <!-- 合作夥伴 -->
          <div class="fix-12-12 toCenter margin-top-5">
            <h1 class="smaller margin-bottom-3 ae-1">合作夥伴</h1>
            <ul class="flex fixedSpaces later">
              <li class="col-3-12 ae-3 fromCenter">
                <img class="round margin-bottom-3 margin-top-5" src="assets/img/avatar-26.jpg" height="128" alt="沈淑惠"/>
                <div class="fix-3-12">
                  <h4 class="smallest margin-bottom-1">沈淑惠</h4>
                  <p class="left"><span class="opacity-8">It&rsquo;s very easy to be different, but very difficult to be better.</span></p>
                </div>
                <div class="fix-3-12 equalElement">
                  <ul class="social-circles">
                    <li><a class="social-mail" href="mailto:#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#mail"></use></svg></a></li>
                    <li><a class="social-facebook" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#facebook2"></use></svg></a></li>
                    <li><a class="social-instagram" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#instagram"></use></svg></a></li>
                    <li><a class="social-twitter" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#twitter"></use></svg></a></li>
                    <li><a class="social-googlePlus" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#googlePlus"></use></svg></a></li>
                  </ul>
                </div>
              </li>
              <li class="col-3-12 ae-4 fromCenter">
                <img class="round margin-bottom-3 margin-top-5" src="assets/img/avatar-31.jpg" height="128" alt="陳鈺雅"/>
                <div class="fix-3-12">
                  <h4 class="smallest margin-bottom-1">陳鈺雅</h4>
                  <p class="left"><span class="opacity-8">Space and light and order. Those are the things that men.</span></p>
                </div>
                <div class="fix-3-12 equalElement">
                  <ul class="social-circles">
                    <li><a class="social-mail" href="mailto:#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#mail"></use></svg></a></li>
                    <li><a class="social-facebook" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#facebook2"></use></svg></a></li>
                    <li><a class="social-instagram" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#instagram"></use></svg></a></li>
                    <li><a class="social-twitter" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#twitter"></use></svg></a></li>
                    <li><a class="social-googlePlus" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#googlePlus"></use></svg></a></li>
                  </ul>
                </div>
              </li>
              <li class="col-3-12 ae-5 fromCenter">
                <img class="round margin-bottom-3 margin-top-5" src="assets/img/avatar-39.jpg" height="128" alt="吳孝尹"/>
                <div class="fix-3-12">
                  <h4 class="smallest margin-bottom-1">吳孝尹</h4>
                  <p class="left"><span class="opacity-8">The proper study of mankind is the science of design.</span></p>
                </div>
                <div class="fix-3-12 equalElement">
                  <ul class="social-circles">
                    <li><a class="social-mail" href="mailto:#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#mail"></use></svg></a></li>
                    <li><a class="social-facebook" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#facebook2"></use></svg></a></li>
                    <li><a class="social-instagram" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#instagram"></use></svg></a></li>
                    <li><a class="social-twitter" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#twitter"></use></svg></a></li>
                    <li><a class="social-googlePlus" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#googlePlus"></use></svg></a></li>
                  </ul>
                </div>
              </li>
              <li class="col-3-12 ae-6 fromCenter">
                <img class="round margin-bottom-3 margin-top-5" src="assets/img/avatar-48.jpg" height="128" alt="趙世傑"/>
                <div class="fix-3-12">
                  <h4 class="smallest margin-bottom-1">趙世傑</h4>
                  <p class="left"><span class="opacity-8">The proper study of mankind is the science of design.</span></p>
                </div>
                <div class="fix-3-12 equalElement">
                  <ul class="social-circles">
                    <li><a class="social-mail" href="mailto:#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#mail"></use></svg></a></li>
                    <li><a class="social-facebook" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#facebook2"></use></svg></a></li>
                    <li><a class="social-instagram" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#instagram"></use></svg></a></li>
                    <li><a class="social-twitter" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#twitter"></use></svg></a></li>
                    <li><a class="social-googlePlus" href="#"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#googlePlus"></use></svg></a></li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- <div class="background" style="background-image:url(assets/img/background/img-36.jpg)"></div> -->
</section>

<!-- Popup Gallery -->
<div class="popup animated" data-popup-id="75-1">
  <div class="close left"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#close"></use></svg></div>
  <div class="content">
    <div class="container">
      <div class="wrap spaces">
      
        <ul class="animated ae-1 fromAbove inlineBlock clickable popupContent disableSelect" data-slider-id="75-1" style="display: inline-block;">
          <li class="selected">
            <img src="assets/img/simone-hutsch-jbyLu_fh5fY-unsplash.jpg" class="rounded" alt="Image" />
          </li>
        </ul>
        
      </div>
    </div>
  </div>
</div>

@endsection
