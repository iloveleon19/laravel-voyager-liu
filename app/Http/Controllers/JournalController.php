<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Journal;

class JournalController extends Controller
{
    public function index(){
        $title = setting('site.title') . ' - 日誌';
        $journals = Journal::select('journals.*')
                        ->where('journals.status', '=', '1')->orderByRaw('-`journals`.`order` desc')->orderBy('id','asc')->get();
        return view('journal', ['journals' => $journals, 'title'=>$title]);
    }
}
