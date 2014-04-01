<?php
/* @var $this DeviceController */
/* @var $model Device */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'locations.location_name'); ?>
		<?php echo $form->textField($model,'location_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'device_types.device_type_name'); ?>
		<?php echo $form->textField($model,'device_type_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'device_brands.device_brand_name'); ?>
		<?php echo $form->textField($model,'device_brand_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'device_models.device_model_name'); ?>
		<?php echo $form->textField($model,'device_model_name'); ?>
	</div>

        <div class="row">
		<?php echo $form->label($model,'device_code'); ?>
		<?php echo $form->textField($model,'device_code',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'device_create_at'); ?>
		<?php echo $form->textField($model,'device_create_at'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'device_buy_date'); ?>
		<?php echo $form->textField($model,'device_buy_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'device_warranty_expire'); ?>
		<?php echo $form->textField($model,'device_warranty_expire'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'device_remark'); ?>
		<?php echo $form->textArea($model,'device_remark',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->