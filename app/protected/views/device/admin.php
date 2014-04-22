<?php
/* @var $this DeviceController */
/* @var $model Device */

$this->breadcrumbs=array(
	'Devices'=>array('index'),
	'Manage',
);

$this->menu=array(
	//array('label'=>'List Device', 'url'=>array('index')),
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

$('#export-button').on('click',function() {
    $.fn.yiiGridView.export();
});
$.fn.yiiGridView.export = function() {
    $.fn.yiiGridView.update('device-grid',{ 
        success: function() {
            $('#device-grid').removeClass('grid-view-loading');
            window.location = '". $this->createUrl('GetExportFile')  . "';
        },
        data: $('.search-form form').serialize() + '&export=true'
    });
}

");
/*
$('#export-button').on('click',function() {
    $.fn.yiiGridView.export();
});
$.fn.yiiGridView.export = function() {
    $.fn.yiiGridView.update('device-grid',{ 
        success: function() {
            $('#device-grid').removeClass('grid-view-loading');
            window.location = '". $this->createUrl('GetExportFile')  . "';
        },
        data: $('.search-form form').serialize() + '&export=true'
    });
}
*/
?>

<h1>Manage Devices</h1>

<div class="button">
<?php echo CHtml::button('Export to excel (.csv)', array('id'=>'export-button','class'=>'span-3 button')); ?>
</div>
</br>
</br>
<?php 
    $pageSize=Yii::app()->user->getState('pageSize',Yii::app()->params['defaultPageSize']);
    $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'device-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
            
                array(
			'name' => 'device_code',
			'type'=>'raw',
			'value' => 'CHtml::link(UHtml::markSearch($data,"device_code"),array("device/view","id"=>$data->id))',
		),
                array(
                        'name'=>'location_name',
                        'value'=>'$data->locations->location_name',
                ),
                array(
			'name'=>'device_type_name',
			'value'=>'$data->device_types->device_type_name',
		),
                array(
			'name'=>'device_brand_name',
			'value'=>'$data->device_brands->device_brand_name',
		),
                array(
			'name'=>'device_model_name',
			'value'=>'$data->device_models->device_model_name',
		),
                array(
			'name'=>'device_owner',
			'value'=>'$data->device_owner',
		),
		/*
		'device_create_at',
		'device_buy_date',
		'device_warranty_expire',
		'device_remark',
		*/
		array(
                        'class'=>'CButtonColumn',
                        'header'=>CHtml::dropDownList('pageSize',$pageSize,array(10=>10,20=>20,50=>50,100=>100,150=>150),array(
                                  'onchange'=>"$.fn.yiiGridView.update('device-grid',{ data:{pageSize: $(this).val() }})",
                    )),
                ),
	),
)); ?>
