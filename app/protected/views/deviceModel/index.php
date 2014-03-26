<?php
/* @var $this DeviceModelController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Device Models',
);

$this->menu=array(
	array('label'=>'Create DeviceModel', 'url'=>array('create')),
	array('label'=>'Manage DeviceModel', 'url'=>array('admin')),
);
?>

<h1>Device Models</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
