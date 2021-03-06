<?php
/* @var $this DeviceBrandController */
/* @var $model DeviceBrand */

$this->breadcrumbs=array(
	'Device Brands',
	$model->device_brand_name,
);

$this->menu=array(
	//array('label'=>'List DeviceBrand', 'url'=>array('index')),
	array('label'=>'Create DeviceBrand', 'url'=>array('create')),
	array('label'=>'Update DeviceBrand', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete DeviceBrand', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage DeviceBrand', 'url'=>array('admin')),
);
?>

<h1>View DeviceBrand #<?php echo $model->device_brand_name; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'device_brand_name',
	),
)); ?>
