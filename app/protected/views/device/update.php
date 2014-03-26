<?php
/* @var $this DeviceController */
/* @var $model Device */

$this->breadcrumbs=array(
	'Devices'=>array('index'),
	$model->device_code=>array('view','id'=>$model->device_code),
	'Update',
);

$this->menu=array(
	array('label'=>'List Device', 'url'=>array('index')),
	array('label'=>'Create Device', 'url'=>array('create')),
	array('label'=>'View Device', 'url'=>array('view', 'id'=>$model->device_code)),
	array('label'=>'Manage Device', 'url'=>array('admin')),
);
?>

<h1>Update Device <?php echo $model->device_code; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>