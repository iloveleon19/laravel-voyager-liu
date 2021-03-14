<nav class="sidebar white left col-12-12 padding-0" data-sidebar-id="2">
    <div class="close"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#close"></use></svg></div>
    <div class="content padding-0">

        <form class="slides-form margin-left-1 margin-right-1" action="#" autocomplete="off">
            <input type="text" class="input-product-search" style="margin:0 !important;" name="search" placeholder="Search"/>
        </form>

        @if(!empty($menuName))
            <ul class="equal equalMobile mobileSearchList">
            {!! menu($menuName, 'layout.menu.search') !!}
            </ul>
        @endif
    </div>
</nav>