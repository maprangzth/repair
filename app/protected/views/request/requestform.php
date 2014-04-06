<?php
/* @var $this RequestController */
/* @var $model Request */
/* @var $form CActiveForm */
$username = Yii::app()->session['username'];
$user_email = Yii::app()->session['email'];
$user_en = Yii::app()->session['employee_number'];
$user_ext = Yii::app()->session['extension_number'];
$user_location = Yii::app()->session['location_id'];
$user_department = Yii::app()->session['department_id'];
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'request-form',
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
		<?php echo $form->labelEx($model,'request_by_user'); ?>
		<?php echo $form->textField($model,'request_by_user',array('value'=>$username,'size'=>66,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'request_by_user'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_en'); ?>
		<?php echo $form->textField($model,'request_en',array('value'=>$user_en,'size'=>66,'maxlength'=>6)); ?>
		<?php echo $form->error($model,'request_en'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_ext'); ?>
		<?php echo $form->textField($model,'request_ext',array('value'=>$user_ext,'size'=>66,'maxlength'=>5)); ?>
		<?php echo $form->error($model,'request_ext'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_email'); ?>
		<?php echo $form->textField($model,'request_email',array('value'=>$user_email,'size'=>66,'maxlength'=>125)); ?>
		<?php echo $form->error($model,'request_email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'location_id'); ?>
		<?php echo $form->dropDownList($model,'location_id', CHtml::listData(Location::model()->findAll(array('order' => 'location_name ASC')), 'id', 'location_name'), array('empty'=>'Please select your location.','style'=>'width:250px;')); ?>
		<?php echo $form->error($model,'location_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'department_id'); ?>
		<?php echo $form->dropDownList($model,'department_id', CHtml::listData(Department::model()->findAll(array('order' => 'department_name ASC')), 'id', 'department_name'), array('empty'=>'Please select your department.','style'=>'width:250px;')); ?>
		<?php echo $form->error($model,'department_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'device_id'); ?>
		<?php echo $form->dropDownList($model,'device_id', CHtml::listData(Device::model()->findAll(array('order' => 'device_code ASC')), 'id', 'device_code'), array('empty'=>'Please select your device.','style'=>'width:250px;')); ?>
		<?php echo $form->error($model,'device_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_problem'); ?>
		<?php echo $form->textField($model,'request_problem',array('size'=>66,'maxlength'=>500)); ?>
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
        
	<div class="row buttons">
		<?php echo CHtml::submitButton('Submit'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->