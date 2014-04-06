<?php
/* @var $this RequestController */
/* @var $data Request */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_by_user')); ?>:</b>
	<?php echo CHtml::encode($data->request_by_user); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_en')); ?>:</b>
	<?php echo CHtml::encode($data->request_en); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_ext')); ?>:</b>
	<?php echo CHtml::encode($data->request_ext); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_email')); ?>:</b>
	<?php echo CHtml::encode($data->request_email); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('location_id')); ?>:</b>
	<?php echo CHtml::encode($data->location_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('department_id')); ?>:</b>
	<?php echo CHtml::encode($data->department_id); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('device_id')); ?>:</b>
	<?php echo CHtml::encode($data->device_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_problem')); ?>:</b>
	<?php echo CHtml::encode($data->request_problem); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_detail')); ?>:</b>
	<?php echo CHtml::encode($data->request_detail); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_remark')); ?>:</b>
	<?php echo CHtml::encode($data->request_remark); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_create_date')); ?>:</b>
	<?php echo CHtml::encode($data->request_create_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_get_date')); ?>:</b>
	<?php echo CHtml::encode($data->request_get_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('user_accept_request')); ?>:</b>
	<?php echo CHtml::encode($data->user_accept_request); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_start_repair_date')); ?>:</b>
	<?php echo CHtml::encode($data->request_start_repair_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('user_repair')); ?>:</b>
	<?php echo CHtml::encode($data->user_repair); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_end_repair_date')); ?>:</b>
	<?php echo CHtml::encode($data->request_end_repair_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_close_date')); ?>:</b>
	<?php echo CHtml::encode($data->request_close_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('user_close')); ?>:</b>
	<?php echo CHtml::encode($data->user_close); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_answer')); ?>:</b>
	<?php echo CHtml::encode($data->request_answer); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_repair_detail')); ?>:</b>
	<?php echo CHtml::encode($data->request_repair_detail); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_status')); ?>:</b>
	<?php echo CHtml::encode($data->request_status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('request_end_remark')); ?>:</b>
	<?php echo CHtml::encode($data->request_end_remark); ?>
	<br />

	*/ ?>

</div>