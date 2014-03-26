<?php
/* @var $this DeviceBrandController */
/* @var $model DeviceBrand */

$this->breadcrumbs=array(
	'Device Brands'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List DeviceBrand', 'url'=>array('index')),
	array('label'=>'Create DeviceBrand', 'url'=>array('create')),
	array('label'=>'View DeviceBrand', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage DeviceBrand', 'url'=>array('admin')),
);
?>

<h1>Update DeviceBrand <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>