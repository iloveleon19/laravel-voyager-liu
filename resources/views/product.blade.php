@extends('layout.master')

@section('title',$title)

@section('slide')

<!-- one -->
<section class="slide fade-6 kenBurns whiteSlide">
  <div class="content">
    <div class="container">
      <div class="wrap noSpaces align-top">
        <div class="flex">
          <div class='col-8-12 left margin-top-10'>

              <form class="slides-form wide" action="#" autocomplete="off">
                <input type="text" class="rounded input-38" name="search" placeholder="Search"/>
              </form>
              <ul class="flex equal equalMobile">
                <li class="col-12-12"><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Books</a></li>
                <li class="col-12-12"><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Commercial</a></li>
                <li class="col-12-12"><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Cultural</a></li>
                <li class="col-12-12"><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Design</a></li>
                <li class="col-12-12"><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Religious</a></li>
                <li class="col-12-12"><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Residential</a></li>
                <li class="col-12-12"><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Exhibitions</a></li>
                <li class="col-12-12"><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Competitions</a></li>
                <li class="col-12-12"><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Furniture</a></li>
                <li class="col-12-12"><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Photography</a></li>
                <li class="col-12-12"><a class="item-100 padding-left-3 padding-top-1 padding-bottom-1" href="">Hotel</a></li>
              </ul>

          </div>

          <div class="col-4-12">
            <ul class="flex equal equalMobile">

              <li>
                <a class="item-100" href="{{ route('menu.product.item') }}">
                  <ul class="flex later reverse">
                    <li class="col-2-12"></li>
                    <li class="col-4-12 left padding-2">
                      <h3 class="smaller margin-bottom-2 ae-1 fromLeft">Tile Collection</h1>
                      <p class="ae-2 fromLeft">
                        <div class="opacity-8">Teixidors</div>
                        <div class="opacity-8">Barcelona, Spain</div>
                        <div class="opacity-8">2018 – 2020</div>
                      </p>
                    </li>
                    <li class="col-6-12 cell-28 ae-1">
                      <img src="assets/img/watch-26-2.png" width="360" alt="iPhone Thumbnail"/>
                    </li>
                  </ul>
                </a>
              </li>

              <li>
                <a class="item-100" href="{{ route('menu.product.item') }}">
                  <ul class="flex later reverse">
                    <li class="col-2-12 left"></li>
                    <li class="col-4-12 left padding-2">
                      <h3 class="smaller margin-bottom-2 ae-1 fromLeft">Tile Collection</h1>
                      <p class="ae-2 fromLeft">
                        <div class="opacity-8">Teixidors</div>
                        <div class="opacity-8">Barcelona, Spain</div>
                        <div class="opacity-8">2018 – 2020</div>
                      </p>
                    </li>
                    <li class="col-6-12 cell-28 ae-1">
                      <img src="assets/img/watch-26-2.png" width="360" alt="iPhone Thumbnail"/>
                    </li>
                  </ul>
                </a>
              </li>

              <li>
                <a class="item-100" href="{{ route('menu.product.item') }}">
                  <ul class="flex later reverse">
                    <li class="col-2-12 left"></li>
                    <li class="col-4-12 left padding-2">
                      <h3 class="smaller margin-bottom-2 ae-1 fromLeft">Tile Collection</h1>
                      <p class="ae-2 fromLeft">
                        <div class="opacity-8">Teixidors</div>
                        <div class="opacity-8">Barcelona, Spain</div>
                        <div class="opacity-8">2018 – 2020</div>
                      </p>
                    </li>
                    <li class="col-6-12 cell-28 ae-1">
                      <img src="assets/img/watch-26-2.png" width="360" alt="iPhone Thumbnail"/>
                    </li>
                  </ul>
                </a>
              </li>

            </ul>
          </div>

        </div>
      </div>
    </div>
  </div>
  <!-- <div class="background" style="background-image:url(assets/img/background/img-90.jpg)"></div> -->
</section>

@endsection
