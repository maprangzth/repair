<?php
$this->pageTitle=Yii::app()->name . ' - Manage Repair';
$this->breadcrumbs=array(
	'ManageRepair',
);
?>
<?php

/* @var $this RequestController */
/* @var $model Request */
/*
$this->breadcrumbs=array(
	'Requests'=>array('index'),
	'Manage',
);/*
if(!Yii::app()->user->isGuest) {
	$this->layout='//layouts/column2';
        $this->menu=array(
                array('label'=>'List Request', 'url'=>array('RequestGetRequest')),
                //array('label'=>'Create Request', 'url'=>array('create')),
        );
}*/
Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#request-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});

$('#export-button').on('click',function() {
    $.fn.yiiGridView.export();
});
$.fn.yiiGridView.export = function() {
    $.fn.yiiGridView.update('request-grid',{ 
        success: function() {
            $('#request-grid').removeClass('grid-view-loading');
            window.location = '". $this->createUrl('GetExportFile')  . "';
        },
        data: $('.search-form form').serialize() + '&export=true'
    });
}

");
?>

<h1>Manage Repair</h1>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->
</br></br>

<div class="button">
<?php echo CHtml::button('Export to excel (.csv)', array('id'=>'export-button','class'=>'span-3 button')); ?>
</div>
</br>
</br>

<?php 
$pageSize=Yii::app()->user->getState('pageSize',Yii::app()->params['defaultPageSize']);
$this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'request-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
                array(
			'name' => 'device_code',
			'value' => '$data->devices->device_code',
                        //'value' => 'CHtml::link(UHtml::markSearch($data,"devices->device_code"))'
		),
		'request_by_user',
		'request_en',
		'request_ext',
		'request_email',
		array(
                        'name'=>'location_name',
                        'value'=>'$data->locations->location_name',
                ),
                array(
                    'name' => 'request_status',
                    'value' => array($model, 'getRequestStatus'),
                ),
		/*
		'department_id',
		'device_id',
		'request_problem',
		'request_detail',
		'request_remark',
		'request_create_date',
		'request_get_date',
		'user_accept_request',
		'request_start_repair_date',
		'user_repair',
		'request_end_repair_date',
		'request_close_date',
		'user_close',
		'request_answer',
		'request_repair_detail',
		'request_status',
		'request_end_remark',
		*/
		array(
                        'class'=>'CButtonColumn',
                        'header'=>CHtml::dropDownList('pageSize',$pageSize,array(10=>10,20=>20,50=>50,100=>100,150=>150),array(
                                  'onchange'=>"$.fn.yiiGridView.update('request-grid',{ data:{pageSize: $(this).val() }})",
                    )),
                ),
	),
)); ?>
