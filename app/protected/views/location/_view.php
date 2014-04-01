<?php
/* @var $this LocationController */
/* @var $data Location */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('location_name')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->location_name), array('view', 'id'=>$data->id)); ?>
	<br />

</div>