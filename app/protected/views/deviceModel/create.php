<?php
/* @var $this DeviceModelController */
/* @var $model DeviceModel */

$this->breadcrumbs=array(
	'Device Models',
	'Create',
);

$this->menu=array(
	//array('label'=>'List DeviceModel', 'url'=>array('index')),
	array('label'=>'Manage DeviceModel', 'url'=>array('admin')),
);
?>

<h1>Create DeviceModel</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>