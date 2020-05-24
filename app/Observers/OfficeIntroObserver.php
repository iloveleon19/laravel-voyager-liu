<?php

namespace App\Observers;

use App\OfficeIntro;

class OfficeIntroObserver
{
    /**
     * Handle the officeIntro "saving" event.
     *
     * @param  \App\OfficeIntro  $officeIntro
     * @return void
     */
    public function saving(OfficeIntro $officeIntro)
    {
        $officeIntro->boss_id = isset($_POST['boss_id']) ? intval($_POST['boss_id']) : null;
    }

    /**
     * Listen to the officeIntro updating event.
     *
     * @param  \App\OfficeIntro  $officeIntro
     * @return void
     */
    public function updating(OfficeIntro $officeIntro)
    {
        $officeIntro->boss_id = isset($_POST['boss_id']) ? intval($_POST['boss_id']) : null;
    }

    /**
     * Listen to the officeIntro creating event.
     *
     * @param  \App\OfficeIntro  $officeIntro
     * @return void
     */
    public function creating(OfficeIntro $officeIntro)
    {
        $officeIntro->boss_id = isset($_POST['boss_id']) ? intval($_POST['boss_id']) : null;
    }
}
