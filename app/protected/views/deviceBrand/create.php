<?php
/* @var $this DeviceBrandController */
/* @var $model DeviceBrand */

$this->breadcrumbs=array(
	'Device Brands'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List DeviceBrand', 'url'=>array('index')),
	array('label'=>'Manage DeviceBrand', 'url'=>array('admin')),
);
?>

<h1>Create DeviceBrand</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>