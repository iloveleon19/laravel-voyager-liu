<?php

namespace App\Observers;

use App\Journal;

class JournalObserver
{
    /**
     * Handle the journal "saving" event.
     *
     * @param  \App\Journal  $journal
     * @return void
     */
    public function saving(Journal $journal)
    {
        //
    }

    /**
     * Listen to the journal updating event.
     *
     * @param  \App\Journal  $journal
     * @return void
     */
    public function updating(Journal $journal)
    {
        $journal->updated_by = auth()->user() ? auth()->user()->id : null;
    }

    /**
     * Listen to the journal creating event.
     *
     * @param  \App\Journal  $journal
     * @return void
     */
    public function creating(Journal $journal)
    {
        $journal->created_by = auth()->user() ? auth()->user()->id : null;
    }
}
