<?php
/* @var $this DeviceModelController */
/* @var $model DeviceModel */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'device-model-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
        'enableClientValidation'=>true,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'device_brand_id'); ?>
		<?php echo $form->dropDownList($model,'device_brand_id', CHtml::listData(DeviceBrand::model()->findAll(), 'id', 'device_brand_name'), array('empty'=>'Please select brand of model.','style'=>'width:250px;')); ?>
		<?php echo $form->error($model,'device_brand_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'device_model_name'); ?>
		<?php echo $form->textField($model,'device_model_name',array('size'=>36,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'device_model_name'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->