<?php
/* @var $this DeviceBrandController */
/* @var $data DeviceBrand */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_brand_name')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->device_brand_name), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_type_id')); ?>:</b>
	<?php echo CHtml::encode($data->device_types->device_type_name); ?>
	<br />

</div>