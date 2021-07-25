<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\OfficeIntro;
use App\Member;
use App\Patent;

class OfficeIntroController extends Controller
{
    public function index(){
        $title = setting('site.title') . ' - 事務所簡介'; // 名稱可以跟menu連動
        $officeIntro = OfficeIntro::find(1);

        $partners = null;
        if($officeIntro->show_partner){
            $partners = Member::select('members.*')->join('office_intro_members',function($join){
                $join->on('members.id','=','office_intro_members.member_id')->where('office_intro_members.office_intro_id',1);
            })->Where('members.status',1)->orderByRaw('-`order` desc')->orderBy('id','asc')->get();
        }

        $patents = null;
        if($officeIntro->show_patent){
            $patents = Patent::select('patents.*')->join('office_intro_patents',function($join){
                $join->on('patents.id','=','office_intro_patents.patent_id')->where('office_intro_patents.office_intro_id',1);
            })->Where('patents.status',1)->orderByRaw('-`order` desc')->orderBy('id','asc')->get();
        }

        return view('officeIntro', ['officeIntro' => $officeIntro, 'partners'=>$partners, 'patents'=>$patents, 'title'=>$title]);
    }
}
