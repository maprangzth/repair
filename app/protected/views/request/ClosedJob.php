<?php
$this->pageTitle=Yii::app()->name . ' - Close Job';
$this->breadcrumbs=array(
	'ClosedJob',
);
?>

<h1>Closed Job</h1>

<?php   
    $this->widget('zii.widgets.grid.CGridView', array(
        'id' => 'request-grid',
        'dataProvider' => $model->searchClosedJob(),
        'columns' => array(
            array(
                    'name' => 'device_id',
                    'type' => 'html',
                    'value' => array($model, 'getButtonClosedJobView'),
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
                    'width' => '100px'
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
                    'width' => '50px',
                    'align' => 'center'
                )
            )
        ),
    ));
?>
