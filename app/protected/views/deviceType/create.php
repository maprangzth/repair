<?php
/* @var $this DeviceTypeController */
/* @var $model DeviceType */

$this->breadcrumbs=array(
	'Device Types',
	'Create',
);

$this->menu=array(
	//array('label'=>'List DeviceType', 'url'=>array('index')),
	array('label'=>'Manage DeviceType', 'url'=>array('admin')),
);
?>

<h1>Create DeviceType</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>