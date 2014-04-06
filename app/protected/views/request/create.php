<?php

/* @var $this RequestController */
/* @var $model Request */

$this->breadcrumbs=array(
	'Requests',
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

<?php $this->renderPartial('RequestForm', array('model'=>$model)); ?>