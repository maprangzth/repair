<?php

/* @var $this RequestController */
/* @var $model Request */
//$username = Yii::app()->session['username'];

$this->breadcrumbs=array(
	'Requests',
	'Closed Job',
);
if(!Yii::app()->user->isGuest) {
	$this->layout='//layouts/column2';
        $this->menu=array(
                array('label'=>'List Request', 'url'=>array('ClosedJob')),
                //array('label'=>'Create Request', 'url'=>array('create')),
                //array('label'=>'View Request', 'url'=>array('view', 'id'=>$model->id)),
                array('label'=>'Manage Request', 'url'=>array('admin')),
        );
}
?>

<h1>Closed Job # <?php echo $model->devices->device_code; ?></h1>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'request-RequestGetRequestForm-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// See class documentation of CActiveForm for details on this,
	// you need to use the performAjaxValidation()-method described there.
	'enableAjaxValidation'=>false,
)); ?>

	<?php echo $form->errorSummary($model); ?>
        <?php /*
	<div class="column">
		<?php echo $form->labelEx($model,'device_id'); ?>
		<?php echo $form->textField($model,'device_id', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                            'value' => $model->devices->device_code,
                )); ?>
		<?php echo $form->error($model,'device_id'); ?>
	</div>
        */ ?>
	<div class="column">
		<?php echo $form->labelEx($model,'En'); ?>
		<?php echo $form->textField($model,'request_en',array(
                            'disabled' => 'disabled',
                            'size' => 50,
                )); ?>
		<?php echo $form->error($model,'request_en'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'Ext'); ?>
		<?php echo $form->textField($model,'request_ext', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                )); ?>
		<?php echo $form->error($model,'request_ext'); ?>
	</div>
        
	<div class="column">
		<?php echo $form->labelEx($model,'Location'); ?>
		<?php echo $form->textField($model,'location_id', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                            'value' => $model->locations->location_name,
                )); ?>
		<?php echo $form->error($model,'location_id'); ?>
	</div>

	<?php /*
	<div class="row">
		<?php echo $form->labelEx($model,'Department'); ?>
		<?php echo $form->textField($model,'department_id', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                            'value' => $model->departments->department_name,
                )); ?>
		<?php echo $form->error($model,'department_id'); ?>
	</div>
        */ ?>

        <div class="row">
		<?php echo $form->labelEx($model,'request_department'); ?>
		<?php echo $form->textField($model,'request_department', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                )); ?>
		<?php echo $form->error($model,'request_department'); ?>
	</div>
        
        <div class="row">
		<?php echo $form->labelEx($model,'E-mail'); ?>
		<?php echo $form->textField($model,'request_email', array(
                            'disabled' => 'disabled',
                            'size' => 107,
                )); ?>
		<?php echo $form->error($model,'request_email'); ?>
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
                            'cols'=>82,
            )); ?>
		<?php echo $form->error($model,'request_detail'); ?>
	</div>
        
        <div class="row">
		<?php echo $form->labelEx($model,'request_remark'); ?>
		<?php echo $form->textArea($model,'request_remark', array(
                            'disabled' => "disabled",
                            'rows'=>6,
                            'cols'=>82,
            )); ?>
		<?php echo $form->error($model,'request_remark'); ?>
	</div>
        
        <div class="row">
		<?php echo $form->labelEx($model,'request_answer'); ?>
		<?php echo $form->textArea($model,'request_answer', array(
                            'disabled' => "disabled",
                            'rows'=>6,
                            'cols'=>82,
            )); ?>
		<?php echo $form->error($model,'request_answer'); ?>
	</div>
        
        <div class="row">
		<?php echo $form->labelEx($model,'request_repair_detail'); ?>
		<?php echo $form->textArea($model,'request_repair_detail', array(
                            'disabled' => "disabled",
                            'rows'=>6,
                            'cols'=>82,
            )); ?>
		<?php echo $form->error($model,'request_repair_detail'); ?>
	</div>
        
        <div class="column">
		<?php echo $form->labelEx($model,'request_create_date'); ?>
		<?php echo $form->textField($model,'request_create_date', array(
                            "disabled" => "disabled",
                            "size" => 50
                )); ?>
		<?php echo $form->error($model,'request_create_date'); ?>
	</div>
        
        <div class="row">
                <?php echo $form->labelEx($model,'request_by_user'); ?>
                <?php echo $form->textField($model,'request_by_user',array(
                    'disabled' => 'disabled',
                    'size' => 50,
                )); ?>
        <?php echo $form->error($model,'request_by_user'); ?>
	</div>

        <div class="column">
            <?php echo $form->labelEx($model, 'request_get_date'); ?>
            <?php echo $form->textField($model, 'request_get_date', array(
                            'disabled' => 'disabled',
                            'size' => 50
            )); ?>
	</div>
        
         <div class="row">
		<?php echo $form->labelEx($model,'user_accept_request'); ?>
		<?php echo $form->textField($model,'user_accept_request', array(
                            'disabled' => 'disabled',
                            'size' => 50,
            )); ?>
		<?php echo $form->error($model,'user_accept_request'); ?>
	</div>
        
        <div class="column">
            <?php echo $form->labelEx($model, 'request_start_repair_date'); ?>
            <?php echo $form->textField($model, 'request_start_repair_date', array(
                            'disabled' => 'disabled',
                            'size' => 50
            )); ?>
            <?php echo $form->error($model,'request_start_repair_date'); ?>
	</div>
        
        <div class="row">
		<?php echo $form->labelEx($model,'user_repair'); ?>
		<?php echo $form->textField($model,'user_repair', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                )); ?>
		<?php echo $form->error($model,'user_repair'); ?>
	</div>
        
        <div class="row">
            <?php echo $form->labelEx($model, 'request_end_repair_date'); ?>
            <?php echo $form->textField($model, 'request_end_repair_date', array(
                            'disabled' => 'disabled',
                            'size' => 107
            )); ?>
            <?php echo $form->error($model,'request_end_repair_date'); ?>
	</div>
    
        <div class="column">
            <?php echo $form->labelEx($model, 'request_close_date'); ?>
            <?php echo $form->textField($model, 'request_close_date', array(
                            'disabled' => 'disabled',
                            'size' => 50
            )); ?>
            <?php echo $form->error($model,'request_close_date'); ?>
	</div>
        
        <div class="row">
		<?php echo $form->labelEx($model,'user_close'); ?>
		<?php echo $form->textField($model,'user_close', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                )); ?>
		<?php echo $form->error($model,'user_close'); ?>
	</div>
        
        <div class="row">
		<?php echo $form->labelEx($model,'Close job remark'); ?>
		<?php echo $form->textArea($model,'request_end_remark', array(
                            'disabled' => "disabled",
                            'rows'=>6,
                            'cols'=>82,
            )); ?>
		<?php echo $form->error($model,'request_repair_detail'); ?>
	</div>
    
	<div class="row buttons">
		<?php echo CHtml::submitButton('Back'); ?>
	</div>
        
        <?php echo $form->hiddenField($model, 'request_status'); ?>
        
<?php $this->endWidget(); ?>

</div><!-- form -->