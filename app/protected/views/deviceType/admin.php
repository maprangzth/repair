<?php
/* @var $this DeviceTypeController */
/* @var $model DeviceType */

$this->breadcrumbs=array(
	'Device Types'=>array('index'),
	'Manage',
);

$this->menu=array(
	//array('label'=>'List DeviceType', 'url'=>array('index')),
	array('label'=>'Create DeviceType', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#device-type-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Device Types</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'device-type-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		//'id',
		'device_type_name',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
