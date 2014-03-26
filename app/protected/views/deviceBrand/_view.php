<?php
/* @var $this DeviceBrandController */
/* @var $data DeviceBrand */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_brand_name')); ?>:</b>
	<?php echo CHtml::encode($data->device_brand_name); ?>
	<br />


</div>