<?php

/* @var $this RequestController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Requests',
);
if(!Yii::app()->user->isGuest) {
	$this->layout='//layouts/column2';
	$this->menu=array(
	array('label'=>'Create Request', 'url'=>array('create')),
	array('label'=>'Manage Request', 'url'=>array('admin')),
);
}
?>

<h1>Requests</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
