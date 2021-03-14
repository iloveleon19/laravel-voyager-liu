<!-- 桌面版顯示 -->
<div class="searchSide showForDesktop hideForPhone hideForTablet fix-2-12 left margin-top-6 level-98">  {{-- z-index解決 search input 白底問題 --}}

    <form class="slides-form margin-left-1 margin-right-1" action="#" autocomplete="off">
        <input type="text" class="input-product-search desktopSearch" style="margin:0 !important;" name="search" placeholder="Search"/>
    </form>

    @if(!empty($menuName))
        <ul class="equal equalMobile desktopSearchList">
            {!! menu($menuName, 'layout.menu.search') !!}
        </ul>
    @endif
</div>

<!-- 平板版顯示 -->
<div class="searchSide showForTablet hideForPhablet hideForPhone hideForDesktop fix-1-12 left margin-top-6 level-98"> {{-- z-index解決 search input 白底問題 --}}

    <form class="slides-form margin-left-1 margin-right-1" action="#" autocomplete="off">
        <input type="text" class="input-product-search desktopSearch" style="margin:0 !important;background-color:#fff;" name="search" placeholder="Search"/>
    </form>  {{-- background-color解決 search input 灰底問題 --}}

    @if(!empty($menuName))
        <ul class="equal equalMobile desktopSearchList">
            {!! menu('menuName', 'layout.menu.search') !!}
        </ul>
    @endif
</div>

<!-- 手機版顯示 -->
<nav class="searchSide showForPhone showForPhablet hideForTablet hideForDesktop hidden margin-top-phablet-7 fix-12-12" 
    style="float:left;position:absolute; z-index:98;">

    <div class="sections">
        <div class="left">
            <span class="actionButton sidebarTrigger searchButton" data-sidebar-id="2">Search
            </span>
        </div>
    </div>
</nav>