<?php
$this->pageTitle=Yii::app()->name . ' - Queue To Repair';
$this->breadcrumbs=array(
	'QueueToRepair',
);
?>

<h1>Queue To Repair</h1>

<?php   
    $this->widget('zii.widgets.grid.CGridView', array(
        'id' => 'request-grid',
        'dataProvider' => $model->searchRequestRepair(),
        'columns' => array(
            array(
                    'name' => 'device_id',
                    'type' => 'html',
                    'value' => array($model, 'getButtonGetRepairView'),
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
                    'width' => '50px'
                )
            ),
            array(
                'name' => 'request_get_date',
                'value' => '$data->request_get_date',
                'htmlOptions' => array(
                    'width' => '95px',
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
