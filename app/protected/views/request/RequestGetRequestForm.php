<?php

/* @var $this RequestController */
/* @var $model Request */
/* @var $form CActiveForm */
$username = Yii::app()->session['username'];
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'request-RequestGetRequestForm-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// See class documentation of CActiveForm for details on this,
	// you need to use the performAjaxValidation()-method described there.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'device_id'); ?>
		<?php echo $form->textField($model,'device_id', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                            'value' => $model->devices->device_code,
                )); ?>
		<?php echo $form->error($model,'device_id'); ?>
	</div>
        
        <div class="row">
		<?php echo $form->labelEx($model,'request_by_user'); ?>
		<?php echo $form->textField($model,'request_by_user',array(
                            'disabled' => 'disabled',
                            'size' => 50,
                )); ?>
		<?php echo $form->error($model,'request_by_user'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_en'); ?>
		<?php echo $form->textField($model,'request_en',array(
                            'disabled' => 'disabled',
                            'size' => 50,
                )); ?>
		<?php echo $form->error($model,'request_en'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_ext'); ?>
		<?php echo $form->textField($model,'request_ext', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                )); ?>
		<?php echo $form->error($model,'request_ext'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_email'); ?>
		<?php echo $form->textField($model,'request_email', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                )); ?>
		<?php echo $form->error($model,'request_email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'location_id'); ?>
		<?php echo $form->textField($model,'location_id', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                            'value' => $model->locations->location_name,
                )); ?>
		<?php echo $form->error($model,'location_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'department_id'); ?>
		<?php echo $form->textField($model,'department_id', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                            'value' => $model->departments->department_name,
                )); ?>
		<?php echo $form->error($model,'department_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_create_date'); ?>
		<?php echo $form->textField($model,'request_create_date', array(
                            "disabled" => "disabled",
                            "size" => 50
                )); ?>
		<?php echo $form->error($model,'request_create_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_problem'); ?>
		<?php echo $form->textField($model,'request_problem', array(
                            'disabled' => 'disabled', 'size' => 107,)); ?>
		<?php echo $form->error($model,'request_problem'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_detail'); ?>
		<?php echo $form->textArea($model,'request_detail', array(
                            'disabled' => "disabled",
                            'rows'=>6,
                            'cols'=>80,
            )); ?>
		<?php echo $form->error($model,'request_detail'); ?>
	</div>

        <div>
            <?php echo $form->labelEx($model, 'request_get_date'); ?>
            <?php echo $form->textField($model, 'request_get_date', array(
                            'disabled' => 'disabled',
                            'size' => 50
            )); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_status'); ?>
		<?php echo $form->textField($model,'request_status'); ?>
                <?php echo ZHtml::enumDropDownList($model,'request_status'); ?>
		<?php echo $form->error($model,'request_status'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Accept Request'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->