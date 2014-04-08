<?php

/* @var $this RequestController */
/* @var $model Request */
$this->pageTitle=Yii::app()->name . ' - Request Form';
$this->breadcrumbs=array(
	'Request',
	'Request Form',
);
if(!Yii::app()->user->isGuest) {
	$this->layout='//layouts/column2';
	$this->menu=array(
                array('label'=>'List Request', 'url'=>array('index')),
                array('label'=>'Manage Request', 'url'=>array('admin')),
        );
}

?>

<h1>Request Form</h1>
<div class="search-form">
<div class="wide form">

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
		<?php echo $form->textField($model,'request_by_user',array('size'=>65,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'request_by_user'); ?>
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
		<?php echo $form->textField($model,'request_email',array('size'=>65,'maxlength'=>125)); ?>
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
		<?php echo $form->textField($model,'request_problem',array('size'=>65,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'request_problem'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'request_detail'); ?>
		<?php echo $form->textArea($model,'request_detail',array('rows'=>6, 'cols'=>66)); ?>
		<?php echo $form->error($model,'request_detail'); ?>
	</div>
        
	<div class="row">
		<?php echo $form->labelEx($model,'request_remark'); ?>
		<?php echo $form->textArea($model,'request_remark',array('rows'=>6, 'cols'=>66)); ?>
		<?php echo $form->error($model,'request_remark'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Submit'); ?>
	</div>
        <?php echo $form->hiddenField($model, 'request_get_date'); ?>
        <?php echo $form->hiddenField($model, 'user_accept_request'); ?>
        <?php echo $form->hiddenField($model, 'request_status'); ?>
        <?php echo $form->hiddenField($model, 'request_answer'); ?>
        <?php echo $form->hiddenField($model, 'request_start_repair_date'); ?>
<?php $this->endWidget(); ?>

</div><!-- form -->
</div>