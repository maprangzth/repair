<!DOCTYPE html>
<html lang="en">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="repair-system-wd">
	<meta name="author" content="k.kamsamur@gmail.com">

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->
        
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>

<div class="container" id="page">

	<div id="header">
            <?php echo CHtml::image(Yii::app()->request->baseUrl."/images/cover-wd.png","IT-Helpdesk : Ext. 77277"); ?>
	</div><!-- header -->

	<div id="mainMbMenu">
		<?php $this->widget('application.extensions.mbmenu.MbMenu',array(
                        'activeCssClass'=>'active',
                        'activateParents'=>true,
                        'encodeLabel' => false,
			'items'=>array(
				array('label'=>'Home', 'url'=>array('/site/index')),
				array('label'=>'Request Form', 'url'=>array('/request/RequestForm'), 'visible'=>Yii::app()->user->isGuest),
                                array('label'=>'Check Request', 'url'=>array('/request/checkrequest'), 'visible'=>Yii::app()->user->isGuest),
				array('label'=>'Contact', 'url'=>array('/site/contact'), 'visible'=>!Yii::app()->user->checkAccess(Rights::module()->superuserName)&& !Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'Rights', 'url'=>array('/rights'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->superuserName)),
                                array('url'=>Yii::app()->getModule('user')->loginUrl, 'label'=>Yii::app()->getModule('user')->t("IT-Helpdesk Login"), 'visible'=>Yii::app()->user->isGuest),
                                //array('url'=>Yii::app()->getModule('user')->registrationUrl, 'label'=>Yii::app()->getModule('user')->t("Register"), 'visible'=>Yii::app()->user->isGuest),
                                array('url'=>array('/user/profile'), 'label'=>Yii::app()->getModule('user')->t("Profile"), 'visible'=>!Yii::app()->user->isGuest),
                                array('label'=>'Queues', 'url'=>array('/request/RequestGetRequest'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'To Pending', 'url'=>array('/request/RequestGetRepair'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'To Completed', 'url'=>array('/request/EndRepair'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'Close Job', 'url'=>array('/request/CloseJob'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                
                                array('label'=>'IT-Helpdesk Manage',
                                    'items'=>array(
                                        array('label'=>'Report Repair', 'url'=>array('/request/admin'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                        array('label'=>'Location', 'url'=>array('/location/index'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                        array('label'=>'Department', 'url'=>array('/department/index'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                        array('label'=>'Device', 'url'=>array('/device/index'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                        array('label'=>'Device Type', 'url'=>array('/devicetype/index'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                        array('label'=>'Device Brand', 'url'=>array('/devicebrand/index'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                        array('label'=>'Device Model', 'url'=>array('/devicemodel/index'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                    ),
                                  ),
                                
                                array('url'=>Yii::app()->getModule('user')->logoutUrl, 'label'=>Yii::app()->getModule('user')->t("Logout").' ('.Yii::app()->user->name.')', 'visible'=>!Yii::app()->user->isGuest),
			),
		)); ?>
	</div><!-- mainmenu -->
        
        <?php
        /*
         <div id="mainmenu">
		<?php $this->widget('zii.widgets.CMenu',array(
                        'activeCssClass'=>'active',
                        'activateParents'=>true,
                        'encodeLabel' => false,
			'items'=>array(
				array('label'=>'Home', 'url'=>array('/site/index')),
				array('label'=>'Request Form', 'url'=>array('/request/RequestForm'), 'visible'=>Yii::app()->user->isGuest),
                                array('label'=>'Check Request', 'url'=>array('/request/checkrequest'), 'visible'=>Yii::app()->user->isGuest),
				array('label'=>'Contact', 'url'=>array('/site/contact'), 'visible'=>!Yii::app()->user->checkAccess(Rights::module()->superuserName)&& !Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'Rights', 'url'=>array('/rights'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->superuserName)),
                                array('url'=>Yii::app()->getModule('user')->loginUrl, 'label'=>Yii::app()->getModule('user')->t("IT-Helpdesk Login"), 'visible'=>Yii::app()->user->isGuest),
                                //array('url'=>Yii::app()->getModule('user')->registrationUrl, 'label'=>Yii::app()->getModule('user')->t("Register"), 'visible'=>Yii::app()->user->isGuest),
                                array('url'=>array('/user/profile'), 'label'=>Yii::app()->getModule('user')->t("Profile"), 'visible'=>!Yii::app()->user->isGuest),
                                array('label'=>'Queues To Repairing', 'url'=>array('/request/RequestGetRequest'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'Start Repair', 'url'=>array('/request/RequestGetRepair'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'End Repair', 'url'=>array('/request/EndRepair'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'Close Job', 'url'=>array('/request/CloseJob'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                //array('label'=>'End Repair', 'url'=>array('/request/EndRepair'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'Location', 'url'=>array('/location/index'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'Department', 'url'=>array('/department/index'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'Device', 'url'=>array('/device/index'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'Device Type', 'url'=>array('/devicetype/index'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'Device Brand', 'url'=>array('/devicebrand/index'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'Device Model', 'url'=>array('/devicemodel/index'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                
                                array('url'=>Yii::app()->getModule('user')->logoutUrl, 'label'=>Yii::app()->getModule('user')->t("Logout").' ('.Yii::app()->user->name.')', 'visible'=>!Yii::app()->user->isGuest),
			),
		)); ?>
	</div><!-- mainmenu -->
         */
        ?>
	<?php if(isset($this->breadcrumbs)):?>
		<?php $this->widget('zii.widgets.CBreadcrumbs', array(
			'links'=>$this->breadcrumbs,
		)); ?><!-- breadcrumbs -->
	<?php endif?>

	<?php echo $content; ?>

	<div class="clear"></div>

	<div id="footer">
            Copyright &copy; <?php echo date('Y'); ?> <a href="http://www.sut.ac.th" target="_blank">Suranaree University of Technology</a> || Western Digital (Thailand) Co.Ltd. 
		All Rights Reserved.
	</div><!-- footer -->

</div><!-- page -->

</body>
</html>
