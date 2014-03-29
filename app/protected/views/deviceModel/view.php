<?php
/* @var $this DeviceModelController */
/* @var $model DeviceModel */

$this->breadcrumbs=array(
	'Device Models'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List DeviceModel', 'url'=>array('index')),
	array('label'=>'Create DeviceModel', 'url'=>array('create')),
	array('label'=>'Update DeviceModel', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete DeviceModel', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage DeviceModel', 'url'=>array('admin')),
);
?>

<h1>View DeviceModel #<?php echo $model->device_model_name; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'device_brand_id'=>'device_brands.device_brand_name',
		'device_model_name',
	),
)); ?>
