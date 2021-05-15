<?php $selected_value = (isset($dataTypeContent->{$row->field}) && !is_null(old($row->field, $dataTypeContent->{$row->field}))) ? old($row->field, $dataTypeContent->{$row->field}) : old($row->field); ?>
<select class="form-control select2" name="{{ $row->field }}">
    <?php $default = (isset($options->default) && !isset($dataTypeContent->{$row->field})) ? $options->default : null; ?>

    <option value=""></option>

    @foreach(range(date("Y"), '1970') as $option)
        <option value="{{ $option }}" @if($default == $option && $selected_value === NULL) selected="selected" @endif @if($selected_value == $option) selected="selected" @endif>{{ $option }}</option>
    @endforeach

    @if(isset($options->options))
        @foreach($options->options as $key => $option)
            <option value="{{ $key }}" @if($default == $key && $selected_value === NULL) selected="selected" @endif @if($selected_value == $key) selected="selected" @endif>{{ $option }}</option>
        @endforeach
    @endif
</select>
