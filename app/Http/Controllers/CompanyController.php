<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\OfficeIntro;

class CompanyController extends Controller
{
    public function index(){
        $title = '劉承鑫建築事務所 - 事務所簡介'; // 名稱可以跟menu連動
        $officeIntro = OfficeIntro::find(1);
        return view('company', ['officeIntro' => $officeIntro, 'title'=>$title]);
    }
}
