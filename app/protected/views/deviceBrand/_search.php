<?php
/* @var $this DeviceBrandController */
/* @var $model DeviceBrand */
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
		<?php echo $form->label($model,'device_type_id'); ?>
		<?php echo $form->textField($model,'device_type_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'device_brand_name'); ?>
		<?php echo $form->textField($model,'device_brand_name',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->