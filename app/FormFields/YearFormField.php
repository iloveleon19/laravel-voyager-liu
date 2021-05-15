<?php
namespace App\FormFields;

use TCG\Voyager\FormFields\AbstractHandler;

class YearFormField extends AbstractHandler
{
    protected $codename = 'year';

    public function createContent($row, $dataType, $dataTypeContent, $options)
    {
        return view('formfields.year', [
            'row' => $row,
            'options' => $options,
            'dataType' => $dataType,
            'dataTypeContent' => $dataTypeContent
        ]);
    }
}