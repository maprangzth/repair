<?php
/* @var $this DeviceTypeController */
/* @var $data DeviceType */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_type_name')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->device_type_name), array('view', 'id'=>$data->id)); ?>
	<br />


</div>