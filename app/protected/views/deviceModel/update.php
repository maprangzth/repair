<?php
/* @var $this DeviceModelController */
/* @var $model DeviceModel */

$this->breadcrumbs=array(
	'Device Models',
	//$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	//array('label'=>'List DeviceModel', 'url'=>array('index')),
	array('label'=>'Create DeviceModel', 'url'=>array('create')),
	//array('label'=>'View DeviceModel', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage DeviceModel', 'url'=>array('admin')),
);
?>

<h1>Update DeviceModel <?php echo $model->device_model_name; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>