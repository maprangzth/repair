<?php
$this->pageTitle=Yii::app()->name . ' - Queue To Complete';
$this->breadcrumbs=array(
	'QueueToComplete',
);
?>

<h1>Queue To Complete</h1>

<?php   
    $this->widget('zii.widgets.grid.CGridView', array(
        'id' => 'request-grid',
        'dataProvider' => $model->searchToComplete(),
        'columns' => array(
            array(
                    'name' => 'device_id',
                    'type' => 'html',
                    'value' => array($model, 'getButtonEndRepairView'),
                    'htmlOptions' => array(
                        'width' => '100px',
                        'align' => 'center'
                    )
            ),
            array(
                'name' => 'request_problem',
                'value' => '$data->request_problem',
                'htmlOptions' => array(
                    'width' => '300px'
                )
            ),
            array(
                'name' => 'request_by_user',
                'value' => '$data->request_by_user',
                'htmlOptions' => array(
                    'width' => '100px'
                )
            ),
            array(
                'name' => 'location_id',
                'value' => '$data->locations->location_name',
                'htmlOptions' => array(
                    'width' => '60px'
                )
            ),
            array(
                'name' => 'helpdesk_repair',
                'value' => '$data->helpdesk_repairs->location_name',
                'htmlOptions' => array(
                    'width' => '60px'
                )
            ),
            array(
                'name' => 'request_start_repair_date',
                'value' => '$data->request_start_repair_date',
                'htmlOptions' => array(
                    'width' => '100px',
                    'align' => 'center'
                )
            ),
            array(
                'name' => 'request_status',
                'value' => array($model, 'getRequestStatus'),
                'htmlOptions' => array(
                    'width' => '50px',
                    'align' => 'center'
                )
            )
        ),
    ));
?>
