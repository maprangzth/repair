<?php
/* @var $this DeviceModelController */
/* @var $model DeviceModel */
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
		<?php echo $form->label($model,'device_brands.device_brand_name'); ?>
		<?php echo $form->textField($model,'device_brand_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'device_model_name'); ?>
		<?php echo $form->textField($model,'device_model_name',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->