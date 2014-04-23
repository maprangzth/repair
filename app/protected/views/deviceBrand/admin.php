<?php
/* @var $this DeviceBrandController */
/* @var $model DeviceBrand */

$this->breadcrumbs=array(
	'Device Brands',
	'Manage',
);

$this->menu=array(
	//array('label'=>'List DeviceBrand', 'url'=>array('index')),
	array('label'=>'Create DeviceBrand', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#device-brand-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Device Brands</h1>

<?php 
$pageSize=Yii::app()->user->getState('pageSize',Yii::app()->params['defaultPageSize']);
$this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'device-brand-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'device_brand_name',
		array(
                        'class'=>'CButtonColumn',
                        'header'=>CHtml::dropDownList('pageSize',$pageSize,array(10=>10,20=>20,50=>50,100=>100,150=>150),array(
                                  'onchange'=>"$.fn.yiiGridView.update('device-brand-grid',{ data:{pageSize: $(this).val() }})",
                    )),
                ),
	),
)); ?>
