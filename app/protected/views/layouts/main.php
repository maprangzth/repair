<!DOCTYPE html>
<html lang="en">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="repair-system-wd">
	<meta name="author" content="k.kamsamur@gmail.com">
        
        <?php $baseUrl = Yii::app()->request->baseUrl; ?>

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->
        
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />
        
        <link href="/css/fix-ie-v1.07.css" rel="stylesheet" type="text/css"/>
        
        <link rel="shortcut icon" href="<?php echo Yii::app()->request->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>

<div class="container" id="page">
        <?php /*
	<div id="header">
            <?php echo CHtml::image(Yii::app()->request->baseUrl."/images/cover-wd.png","IT-Helpdesk : Call center 77277"); ?>
	</div><!-- header -->
         */ ?>
         <?php echo CHtml::image(Yii::app()->request->baseUrl."/images/cover-wd.png","IT-Helpdesk : Call center 77277"); ?>
    
	<div id="mainMbMenu">
		<?php $this->widget('application.extensions.mbmenu.MbMenu',array(
                        'activeCssClass'=>'active',
                        'activateParents'=>true,
                        'encodeLabel' => false,
			'items'=>array(
				array('label'=>'Home', 'url'=>array('/site/index')),
				array('label'=>'Request Form', 'url'=>array('/request/RequestForm'), 'visible'=>Yii::app()->user->isGuest),
                                array('label'=>'Check Status', 'url'=>array('/request/CheckStatus'), 'visible'=>Yii::app()->user->isGuest),
				array('label'=>'Contact', 'url'=>array('/site/contact'), 'visible'=>!Yii::app()->user->checkAccess(Rights::module()->superuserName)&& !Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'Rights', 'url'=>array('/rights'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->superuserName)),
                                array('url'=>Yii::app()->getModule('user')->loginUrl, 'label'=>Yii::app()->getModule('user')->t("IT-Helpdesk Login"), 'visible'=>Yii::app()->user->isGuest),
                                //array('url'=>Yii::app()->getModule('user')->registrationUrl, 'label'=>Yii::app()->getModule('user')->t("Register"), 'visible'=>Yii::app()->user->isGuest),
                                array('url'=>array('/user/profile'), 'label'=>Yii::app()->getModule('user')->t("Profile"), 'visible'=>!Yii::app()->user->isGuest),
                                array('label'=>'Queues', 'url'=>array('/request/RequestGetRequest'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'To Pending', 'url'=>array('/request/RequestGetRepair'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'To Complete', 'url'=>array('/request/EndRepair'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                array('label'=>'Waiting To Close', 'url'=>array('/request/ToClose'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                            
                                array('label'=>'Helpdesk Manage',
                                    'items'=>array(
                                        array('label'=>'Closed Job', 'url'=>array('/request/ClosedJob'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                        array('label'=>'Manage Repair', 'url'=>array('/request/admin'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                        array('label'=>'Location', 'url'=>array('/location/admin'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                        //array('label'=>'Department', 'url'=>array('/department/index'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                        array('label'=>'Device', 'url'=>array('/device/admin'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                        array('label'=>'Device Type', 'url'=>array('/devicetype/admin'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                        array('label'=>'Device Brand', 'url'=>array('/devicebrand/admin'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
                                        array('label'=>'Device Model', 'url'=>array('/devicemodel/admin'), 'visible'=>Yii::app()->user->checkAccess(Rights::module()->helpdeskName)),
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
            <b> Copyright &copy; <?php echo date('Y'); ?> 
            <a href="http://www.sut.ac.th" target="_blank">Suranaree University of Technology</a>
            || <a href="http://wdth.wdc.com/" target="_blank">Western Digital (Thailand) Co.Ltd.</a>
            All Rights Reserved. </b>
	</div><!-- footer -->

</div><!-- page -->

</body>
</html>