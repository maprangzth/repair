<?php
/* @var $this DeviceController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Devices',
);

$this->menu=array(
	array('label'=>'Create Device', 'url'=>array('create')),
	array('label'=>'Manage Device', 'url'=>array('admin')),
);
?>

<h1>Devices</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'dataProvider'=>$dataProvider,
	'columns'=>array(
                'device_code',
                'device_type_id'=>'device_types.device_type_name',
		'device_brand_id'=>'device_brands.device_brand_name',
		'device_model_id'=>'device_models.device_model_name',
		'location_id'=>'locations.location_name',
                'device_create_at',
	),
)); ?>