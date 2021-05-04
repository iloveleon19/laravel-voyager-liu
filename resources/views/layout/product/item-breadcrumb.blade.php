{{-- 桌面版顯示 --}}
<div class="menuSide showForDesktop hideForPhone hideForTablet fix-2-12 left margin-top-7 margin-left-3"
    style="float:left;position:fixed;-webkit-transform:translateZ(0);">

    <ul class="equal equalMobile">
        <li>
            <a href="{{ route($routeName) }}" class="back"><i class="fa fa-long-arrow-left"></i><span class="padding-left-1">{{$groupName}}</a>
        </li>
    </ul>
</div>

{{-- 平板版顯示 --}}
<div class="menuSide showForTablet hideForPhablet hideForPhone hideForDesktop fix-2-12 left margin-top-7 margin-left-3"
    style="float:left;position:fixed;-webkit-transform:translateZ(0);">

    <ul class="equal equalMobile">
        <li>
            <a href="{{ route($routeName) }}" class="back">
                <i class="fa fa-long-arrow-left"></i>
                <span class="padding-left-1">{{$groupName}}
            </a>
        </li>
    </ul>
</div>

{{-- 手機版顯示 --}}
<nav class="menuSide showForPhone showForPhablet hideForTablet hideForDesktop hidden margin-top-phablet-7 fix-12-12 margin-left-3"
    style="float:left;position:absolute;">
    
    <div class="sections">
        <div class="left">
            <a href="{{ route($routeName) }}" class="back">
                <i class="fa fa-long-arrow-left"></i>
                <span class="padding-left-1"></span>{{$groupName}}
            </a>
        </div>
    </div>
</nav>