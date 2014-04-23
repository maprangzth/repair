<?php
/* @var $this DepartmentController */
/* @var $model Department */

$this->breadcrumbs=array(
	'Departments',
	//$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	//array('label'=>'List Department', 'url'=>array('index')),
	array('label'=>'Create Department', 'url'=>array('create')),
	//array('label'=>'View Department', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Department', 'url'=>array('admin')),
);
?>

<h1>Update Department #<?php echo $model->department_name; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>