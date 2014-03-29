<?php
/* @var $this DeviceModelController */
/* @var $data DeviceModel */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_model_name')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->device_model_name), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_brand_id')); ?>:</b>
	<?php echo CHtml::encode($data->device_brands->device_brand_name); ?>
	<br />

</div>