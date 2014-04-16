<?php 

/* @var $this RequestController */
/* @var $model Request */

$this->breadcrumbs=array(
	'Requests'=>array('index'),
	$model->id,
);
if(!Yii::app()->user->isGuest) {
	$this->layout='//layouts/column2';
$this->menu=array(
	//array('label'=>'List Request', 'url'=>array('admin')),
	//array('label'=>'Create Request', 'url'=>array('create')),
	//array('label'=>'Update Request', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Request', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Request', 'url'=>array('admin')),
);
}
?>

<h1>View Request For #<?php echo $model->devices->device_code; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'request_by_user',
		'request_en',
		'request_ext',
		'request_email',
		'locations.location_name',
		'departments.department_name',
		'devices.device_code',
		'request_problem',
		'request_detail',
		'request_remark',
		'request_create_date',
		'request_get_date',
		'user_accept_request',
		'request_start_repair_date',
		'user_repair',
		'request_end_repair_date',
		'request_close_date',
		'user_close',
		'request_answer',
		'request_repair_detail',
		'request_status',
		'request_end_remark',
	),
)); ?>
