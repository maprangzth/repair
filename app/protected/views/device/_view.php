<?php
/* @var $this DeviceController */
/* @var $data Device */
?>

<div class="view">
                
	<b><?php echo CHtml::encode($data->getAttributeLabel('device_code')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->device_code), array('view', 'id'=>$data->id)); ?>
	<br />
        
	<b><?php echo CHtml::encode($data->getAttributeLabel('device_type_id')); ?>:</b>
	<?php echo CHtml::encode($data->device_types->device_type_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_brand_id')); ?>:</b>
	<?php echo CHtml::encode($data->device_brands->device_brand_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_model_id')); ?>:</b>
	<?php echo CHtml::encode($data->device_models->device_model_name); ?>
	<br />
        
        <b><?php echo CHtml::encode($data->getAttributeLabel('location_id')); ?>:</b>
	<?php echo CHtml::encode($data->locations->location_name); ?>
	<br />
        
	<b><?php echo CHtml::encode($data->getAttributeLabel('device_create_at')); ?>:</b>
	<?php echo CHtml::encode($data->device_create_at); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('device_buy_date')); ?>:</b>
	<?php echo CHtml::encode($data->device_buy_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_warranty_expire')); ?>:</b>
	<?php echo CHtml::encode($data->device_warranty_expire); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('device_remark')); ?>:</b>
	<?php echo CHtml::encode($data->device_remark); ?>
	<br />

	*/ ?>

</div>