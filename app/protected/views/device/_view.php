<?php
/* @var $this DeviceController */
/* @var $data Device */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_code')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->device_code), array('view', 'id'=>$data->device_code)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_type_id')); ?>:</b>
	<?php echo CHtml::encode($data->device_type_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_brand_id')); ?>:</b>
	<?php echo CHtml::encode($data->device_brand_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_model_id')); ?>:</b>
	<?php echo CHtml::encode($data->device_model_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('location_id')); ?>:</b>
	<?php echo CHtml::encode($data->location_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_create_at')); ?>:</b>
	<?php echo CHtml::encode($data->device_create_at); ?>
	<br />


</div>