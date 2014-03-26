<?php
/* @var $this DeviceBrandController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Device Brands',
);

$this->menu=array(
	array('label'=>'Create DeviceBrand', 'url'=>array('create')),
	array('label'=>'Manage DeviceBrand', 'url'=>array('admin')),
);
?>

<h1>Device Brands</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
