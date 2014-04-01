<?php
/* @var $this DepartmentController */
/* @var $data Department */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('department_name')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->department_name), array('view', 'id'=>$data->id)); ?>
	<br />

</div>