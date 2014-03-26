<?php
/* @var $this DeviceTypeController */
/* @var $data DeviceType */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_type_name')); ?>:</b>
	<?php echo CHtml::encode($data->device_type_name); ?>
	<br />


</div>