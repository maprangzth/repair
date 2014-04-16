<?php
$this->pageTitle=Yii::app()->name . ' - Queue To Close Job';
$this->breadcrumbs=array(
	'QueueCloseJob',
);
?>

<h1>Queue To Close Job</h1>

<?php   
    $this->widget('zii.widgets.grid.CGridView', array(
        'id' => 'request-grid',
        'dataProvider' => $model->searchToClose(),
        'columns' => array(
            array(
                    'name' => 'device_id',
                    'type' => 'html',
                    'value' => array($model, 'getButtonCloseJobView'),
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
			'name'=>'request_email',
			'type'=>'raw',
			'value'=>'CHtml::link(UHtml::markSearch($data,"request_email"), "mailto:".$data->request_email)',
            ),
            /*
            array(
                'name' => 'request_create_date',
                'value' => '$data->request_create_date',
                'htmlOptions' => array(
                    'width' => '125px',
                    'align' => 'center'
                )
            ),
             * 
             */
            array(
                'name' => 'request_start_repair_date',
                'value' => '$data->request_create_date',
                'htmlOptions' => array(
                    'width' => '165px',
                    'align' => 'center'
                )
            ),
            array(
                'name' => 'request_end_repair_date',
                'value' => '$data->request_create_date',
                'htmlOptions' => array(
                    'width' => '165px',
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
