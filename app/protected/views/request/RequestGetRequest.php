<?php

$this->breadcrumbs=array(
	'View Request',
);
?>

<h1>View Request</h1>

<?php   
    $this->widget('zii.widgets.grid.CGridView', array(
        'id' => 'request-grid',
        'dataProvider' => $model->searchRequest(),
        'columns' => array(
            array(
                    'name' => 'devices.device_code',
                    'type' => 'html',
                    'value' => array($model, "getButtonGetRequestView"),
                    'htmlOptions' => array(
                        'width' => '150px',
                        'align' => 'center'
                    )
            ),
            array(
                'name' => 'request_problem',
                'value' => '$data->request_problem',
                'htmlOptions' => array(
                    'width' => '500px'
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
                'name' => 'request_create_date',
                'value' => '$data->request_create_date',
                'htmlOptions' => array(
                    'width' => '120px',
                    'align' => 'center'
                )
            ),
            array(
                'name' => 'request_status',
                'value' => array($model, 'getRequestStatus'),
                'htmlOptions' => array(
                    'width' => '100px',
                    'align' => 'center'
                )
            )
        ),
    ));
?>
