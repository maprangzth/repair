<?php
/* @var $this DeviceController */
/* @var $model Device */

$this->breadcrumbs=array(
	'Devices'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Device', 'url'=>array('index')),
	array('label'=>'Create Device', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#device-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Devices</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'device-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'device_code',
                array(
			'name'=>'device_type_name',
			'value'=>'$data->device_types->device_type_name',
                        'htmlOptions'=>array('style'=>'text-align:center','width'=>150),
		),
                array(
			'name'=>'device_brand_name',
			'value'=>'$data->device_brands->device_brand_name',
                        'htmlOptions'=>array('style'=>'text-align:center','width'=>100),
		),
                array(
			'name'=>'device_model_name',
			'value'=>'$data->device_models->device_model_name',
                        'htmlOptions'=>array('style'=>'text-align:center','width'=>100),
		),
                array(
			'name'=>'location_name',
			'value'=>'$data->locations->location_name',
                        'htmlOptions'=>array('style'=>'text-align:center','width'=>80),
		),
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
