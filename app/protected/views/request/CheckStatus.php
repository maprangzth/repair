<?php
$this->pageTitle=Yii::app()->name . ' - Check Status';
$this->breadcrumbs=array(
        'Request',
	'CheckStatus',
);
?>

<h1>Check Status</h1>
<?php 
    echo CHtml::htmlButton ('Refresh', array('onClick'=>'window.location="'.Yii::app()->getRequest()->getUrl().'"'));
?>
<?php   
    $this->widget('zii.widgets.grid.CGridView', array(
        'id' => 'request-grid',
        'dataProvider' => $model->searchCheckStatus(),
        'columns' => array(
            array(
                    'name' => 'device_id',
                    'type' => 'html',
                    'value' => array($model, 'getButtonGetCheckView'),
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
                'name' => 'request_end_repair_date',
                'value' => '$data->request_end_repair_date',
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
