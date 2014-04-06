<?php

/* @var $this RequestController */
/* @var $model Request */

$this->breadcrumbs=array(
	'Requests'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
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

<h1>Request Accept # <?php echo $model->devices->device_code; ?></h1>

<?php $this->renderPartial('RequestGetRequestForm', array('model'=>$model)); ?>