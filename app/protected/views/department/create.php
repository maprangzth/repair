<?php
/* @var $this DepartmentController */
/* @var $model Department */

$this->breadcrumbs=array(
	'Departments',
	'Create',
);

$this->menu=array(
	//array('label'=>'List Department', 'url'=>array('index')),
	array('label'=>'Manage Department', 'url'=>array('admin')),
);
?>

<h1>Create Department</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>