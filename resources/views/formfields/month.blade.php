<?php $selected_value = (isset($dataTypeContent->{$row->field}) && !is_null(old($row->field, $dataTypeContent->{$row->field}))) ? old($row->field, $dataTypeContent->{$row->field}) : old($row->field); ?>
<select class="form-control select2" name="{{ $row->field }}">
    <option value=""></option>
    <?php $default = (isset($options->default) && !isset($dataTypeContent->{$row->field})) ? $options->default : null; ?>
    @foreach(range(1, 12) as $option)
        <option value="{{ $option }}" @if($default == $option && $selected_value === NULL) selected="selected" @endif @if($selected_value == $option) selected="selected" @endif>{{ $option }}</option>
    @endforeach
</select>
