<?php
/* @var $this DeviceModelController */
/* @var $model DeviceModel */

$this->breadcrumbs=array(
	'Device Models'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List DeviceModel', 'url'=>array('index')),
	array('label'=>'Create DeviceModel', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#device-model-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Device Models</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'device-model-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		array(
			'name'=>'device_brand_name',
			'value'=>'$data->device_brands->device_brand_name',
		),
		'device_model_name',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
