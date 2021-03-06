<?php

/* @var $this RequestController */
/* @var $model Request */
/* @var $form CActiveForm */
?>


<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'request-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'request_by_user'); ?>
		<?php echo $form->textField($model,'request_by_user',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'request_by_user'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_en'); ?>
		<?php echo $form->textField($model,'request_en'); ?>
		<?php echo $form->error($model,'request_en'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_ext'); ?>
		<?php echo $form->textField($model,'request_ext'); ?>
		<?php echo $form->error($model,'request_ext'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_email'); ?>
		<?php echo $form->textField($model,'request_email',array('size'=>60,'maxlength'=>125)); ?>
		<?php echo $form->error($model,'request_email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'location_id'); ?>
		<?php echo $form->textField($model,'location_id'); ?>
		<?php echo $form->error($model,'location_id'); ?>
	</div>
        
        <?php /*
	<div class="row">
		<?php echo $form->labelEx($model,'department_id'); ?>
		<?php echo $form->textField($model,'department_id'); ?>
		<?php echo $form->error($model,'department_id'); ?>
	</div>
        */ ?>
        
        <div class="row">
		<?php echo $form->labelEx($model,'request_department'); ?>
		<?php echo $form->textField($model,'request_department'); ?>
		<?php echo $form->error($model,'request_department'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'device_id'); ?>
		<?php echo $form->textField($model,'device_id'); ?>
		<?php echo $form->error($model,'device_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_problem'); ?>
		<?php echo $form->textField($model,'request_problem',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'request_problem'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_detail'); ?>
		<?php echo $form->textArea($model,'request_detail',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'request_detail'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_remark'); ?>
		<?php echo $form->textArea($model,'request_remark',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'request_remark'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_create_date'); ?>
		<?php echo $form->textField($model,'request_create_date'); ?>
		<?php echo $form->error($model,'request_create_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_get_date'); ?>
		<?php echo $form->textField($model,'request_get_date'); ?>
		<?php echo $form->error($model,'request_get_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'user_accept_request'); ?>
		<?php echo $form->textField($model,'user_accept_request',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'user_accept_request'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_start_repair_date'); ?>
		<?php echo $form->textField($model,'request_start_repair_date'); ?>
		<?php echo $form->error($model,'request_start_repair_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'user_repair'); ?>
		<?php echo $form->textField($model,'user_repair',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'user_repair'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_end_repair_date'); ?>
		<?php echo $form->textField($model,'request_end_repair_date'); ?>
		<?php echo $form->error($model,'request_end_repair_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_close_date'); ?>
		<?php echo $form->textField($model,'request_close_date'); ?>
		<?php echo $form->error($model,'request_close_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'user_close'); ?>
		<?php echo $form->textField($model,'user_close',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'user_close'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_answer'); ?>
		<?php echo $form->textArea($model,'request_answer',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'request_answer'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_repair_detail'); ?>
		<?php echo $form->textArea($model,'request_repair_detail',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'request_repair_detail'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_status'); ?>
		<?php echo $form->textField($model,'request_status',array('size'=>10,'maxlength'=>10)); ?>
		<?php echo $form->error($model,'request_status'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_end_remark'); ?>
		<?php echo $form->textArea($model,'request_end_remark',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'request_end_remark'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->