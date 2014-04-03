<?php
/* @var $this RequestController */
/* @var $model Request */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id'); ?>
		<?php echo $form->textField($model,'id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_fname'); ?>
		<?php echo $form->textField($model,'request_fname',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_lname'); ?>
		<?php echo $form->textField($model,'request_lname',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_en'); ?>
		<?php echo $form->textField($model,'request_en'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_ext'); ?>
		<?php echo $form->textField($model,'request_ext'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_email'); ?>
		<?php echo $form->textField($model,'request_email',array('size'=>60,'maxlength'=>125)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'location_id'); ?>
		<?php echo $form->textField($model,'location_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'department_id'); ?>
		<?php echo $form->textField($model,'department_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'device_id'); ?>
		<?php echo $form->textField($model,'device_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_problem'); ?>
		<?php echo $form->textField($model,'request_problem',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_detail'); ?>
		<?php echo $form->textArea($model,'request_detail',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_remark'); ?>
		<?php echo $form->textArea($model,'request_remark',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_create_date'); ?>
		<?php echo $form->textField($model,'request_create_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_get_date'); ?>
		<?php echo $form->textField($model,'request_get_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_start_repair_date'); ?>
		<?php echo $form->textField($model,'request_start_repair_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_end_repair_date'); ?>
		<?php echo $form->textField($model,'request_end_repair_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_clame_date'); ?>
		<?php echo $form->textField($model,'request_clame_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_clame_remark'); ?>
		<?php echo $form->textField($model,'request_clame_remark',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_close_date'); ?>
		<?php echo $form->textField($model,'request_close_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'user_repair_id'); ?>
		<?php echo $form->textField($model,'user_repair_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'user_close_id'); ?>
		<?php echo $form->textField($model,'user_close_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_answer'); ?>
		<?php echo $form->textArea($model,'request_answer',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_repair_detail'); ?>
		<?php echo $form->textArea($model,'request_repair_detail',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_status'); ?>
		<?php echo $form->textField($model,'request_status',array('size'=>10,'maxlength'=>10)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'request_end_remark'); ?>
		<?php echo $form->textArea($model,'request_end_remark',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->