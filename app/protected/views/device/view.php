<?php
/* @var $this DeviceController */
/* @var $model Device */

$this->breadcrumbs=array(
	'Devices'=>array('index'),
	$model->id,
);

$this->menu=array(
	//array('label'=>'List Device', 'url'=>array('index')),
	array('label'=>'Create Device', 'url'=>array('create')),
	array('label'=>'Update Device', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Device', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Device', 'url'=>array('admin')),
);
?>

<h1>View Device #<?php echo $model->device_code; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
                'device_code',
		'device_type_id'=>'device_types.device_type_name',
		'device_brand_id'=>'device_brands.device_brand_name',
		'device_model_id'=>'device_models.device_model_name',
		'location_id'=>'locations.location_name',
		'device_create_at',
		'device_buy_date',
		'device_warranty_expire',
		'device_owner',
                'device_remark',
	),
)); ?>
