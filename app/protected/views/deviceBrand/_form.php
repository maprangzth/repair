<?php
/* @var $this DeviceBrandController */
/* @var $model DeviceBrand */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'device-brand-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>true,
        'enableClientValidation'=>true,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'device_type_id'); ?>
		<?php echo $form->dropDownList($model,'device_type_id', CHtml::listData(DeviceType::model()->findAll(), 'id', 'device_type_name'), array('empty'=>'Please select type of device.','style'=>'width:250px;')); ?>
		<?php echo $form->error($model,'device_type_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'device_brand_name'); ?>
		<?php echo $form->textField($model,'device_brand_name',array('size'=>36,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'device_brand_name'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->