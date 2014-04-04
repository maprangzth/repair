<?php

echo CHtml::link('Export To Excel', array('device/ExportToExcelStart'));

$this->widget('zii.widgets.grid.CGridView', array(
    'dataProvider' => $provider
));
?>
