<?php
/* @var $this RequestController */
/* @var $model Request */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'request-requestForm-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// See class documentation of CActiveForm for details on this,
	// you need to use the performAjaxValidation()-method described there.
	'enableAjaxValidation'=>true,
        'enableClientValidation'=>true,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'request_fname'); ?>
		<?php echo $form->textField($model,'request_fname',array('size'=>65,'maxlength'=>128)); ?>
		<?php echo $form->error($model,'request_fname'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_lname'); ?>
		<?php echo $form->textField($model,'request_lname',array('size'=>65,'maxlength'=>128)); ?>
		<?php echo $form->error($model,'request_lname'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_en'); ?>
		<?php echo $form->textField($model,'request_en',array('size'=>65,'maxlength'=>6)); ?>
		<?php echo $form->error($model,'request_en'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_ext'); ?>
		<?php echo $form->textField($model,'request_ext',array('size'=>65,'maxlength'=>5)); ?>
		<?php echo $form->error($model,'request_ext'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_email'); ?>
		<?php echo $form->textField($model,'request_email',array('size'=>65,'maxlength'=>128)); ?>
		<?php echo $form->error($model,'request_email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'location_id'); ?>
		<?php echo $form->textField($model,'location_id'); ?>
		<?php echo $form->error($model,'location_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'department_id'); ?>
		<?php echo $form->textField($model,'department_id'); ?>
		<?php echo $form->error($model,'department_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'device_id'); ?>
		<?php echo $form->textField($model,'device_id'); ?>
		<?php echo $form->error($model,'device_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_problem'); ?>
		<?php echo $form->textField($model,'request_problem',array('size'=>65,'maxlength'=>128)); ?>
		<?php echo $form->error($model,'request_problem'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_detail'); ?>
		<?php echo $form->textArea($model,'request_detail',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'request_detail'); ?>
	</div>


	<div class="row buttons">
		<?php echo CHtml::submitButton('Submit'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->