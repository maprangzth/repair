<?php

/* @var $this RequestController */
/* @var $model Request */

$this->breadcrumbs=array(
	'Requests'=>array('index'),
	'Manage',
);
if(!Yii::app()->user->isGuest) {
	$this->layout='//layouts/column2';
        $this->menu=array(
                array('label'=>'List Request', 'url'=>array('RequestGetRequest')),
                array('label'=>'Create Request', 'url'=>array('create')),
        );
}
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
");
?>

<h1>Manage Requests</h1>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'request-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'request_by_user',
		'request_en',
		'request_ext',
		'request_email',
		'location_id',
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
		),
	),
)); ?>
