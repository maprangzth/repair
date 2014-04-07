<?php
$this->pageTitle=Yii::app()->name . ' - Check Request';
$this->breadcrumbs=array(
        'Requests',
	'Check Request',
);
?>

<h1>Check Request</h1>

<?php   
    $this->widget('zii.widgets.grid.CGridView', array(
        'id' => 'check-request-grid',
        'dataProvider' => $model->searchCheckRequest(),
        'columns' => array(
            array(
                    'name' => 'device_id',
                    'type' => 'html',
                    'value' => '$data->devices->device_code',
                    'htmlOptions' => array(
                        'width' => '105px',
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
                'name' => 'location_id',
                'value' => '$data->locations->location_name',
                'htmlOptions' => array(
                    'width' => '65px'
                )
            ),
            array(
                'name' => 'request_by_user',
                'value' => '$data->request_by_user',
                'htmlOptions' => array(
                    'width' => '120px'
                )
            ),
            array(
                'name' => 'request_create_date',
                'value' => '$data->request_create_date',
                'htmlOptions' => array(
                    'width' => '125px',
                    'align' => 'center'
                )
            ),
            array(
                'name' => 'request_status',
                'value' => array($model, 'getRequestStatus'),
                'htmlOptions' => array(
                    'width' => '115px',
                    'align' => 'center'
                )
            )
        ),
    ));
?>
