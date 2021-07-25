<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Journal;

class JournalItemController extends Controller
{
    public function index($slug){
        $title = setting('site.title') . ' - 作品';
        $journal = Journal::select('journals.*')
                        ->where('journals.status', '=', '1')
                        ->where('journals.slug', '=', $slug)->first();

        if(empty($journal)){
            return abort(404);
        }

        return view('journal-item', ['journal' => $journal, 'title'=>$title.'-'.$journal->title]);
    }
}
