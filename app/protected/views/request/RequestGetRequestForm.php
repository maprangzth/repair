<?php

/* @var $this RequestController */
/* @var $model Request */
//$username = Yii::app()->session['username'];

$this->breadcrumbs=array(
	'Requests'=>array('RequestGetRequest'),
	'Accept Request',
);
if(!Yii::app()->user->isGuest) {
	$this->layout='//layouts/column2';
        $this->menu=array(
                array('label'=>'List Request', 'url'=>array('RequestGetRequest')),
                //array('label'=>'Create Request', 'url'=>array('create')),
                //array('label'=>'View Request', 'url'=>array('view', 'id'=>$model->id)),
                array('label'=>'Manage Request', 'url'=>array('admin')),
        );
}
?>

<h1>Accept Request # <?php echo $model->devices->device_code; ?></h1>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'request-RequestGetRequestForm-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// See class documentation of CActiveForm for details on this,
	// you need to use the performAjaxValidation()-method described there.
	'enableAjaxValidation'=>true,
        'enableClientValidation'=>true,
)); ?>

	<?php echo $form->errorSummary($model); ?>

        <div class="row">
		<?php echo $form->labelEx($model,'Request By'); ?>
		<?php echo $form->textField($model,'request_by_user',array(
                            'disabled' => 'disabled',
                            'size' => 50,
                )); ?>
		<?php echo $form->error($model,'request_by_user'); ?>
	</div>

	<div class="row">
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

	<div class="row">
		<?php echo $form->labelEx($model,'request_email'); ?>
		<?php echo $form->textField($model,'request_email', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                )); ?>
		<?php echo $form->error($model,'request_email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'Location'); ?>
		<?php echo $form->textField($model,'location_id', array(
                            'disabled' => 'disabled',
                            'size' => 50,
                            'value' => $model->locations->location_name,
                )); ?>
		<?php echo $form->error($model,'location_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'Department'); ?>
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
		<?php echo $form->labelEx($model,'Problem'); ?>
		<?php echo $form->textField($model,'request_problem', array(
                            'disabled' => 'disabled', 'size' => 105,)); ?>
		<?php echo $form->error($model,'request_problem'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'Detail'); ?>
		<?php echo $form->textArea($model,'request_detail', array(
                            'disabled' => "disabled",
                            'rows'=>6,
                            'cols'=>80,
            )); ?>
		<?php echo $form->error($model,'request_detail'); ?>
	</div>
    
       <div class="row">
		<?php echo $form->labelEx($model,'request_remark'); ?>
		<?php echo $form->textArea($model,'request_remark', array(
                            'rows'=>6,
                            'cols'=>80,
            )); ?>
		<?php echo $form->error($model,'request_remark'); ?>
	</div>

        <div class="row buttons">
                <?php echo CHtml::submitButton('Accept Request'); ?>
        </div>
    
        <?php echo $form->hiddenField($model, 'request_get_date'); ?>
        <?php echo $form->hiddenField($model, 'user_accept_request'); ?>
        <?php echo $form->hiddenField($model, 'request_status'); ?>
<?php $this->endWidget(); ?>

</div><!-- form -->