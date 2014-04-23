<?php

class RequestController extends RController
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
    
	//public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			//'accessControl', // perform access control for CRUD operations
			//'postOnly + delete', // we only allow deletion via POST request
			'rights',
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	/*
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('admin'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}
	*/
        
	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
        /*
	public function actionCreate()
	{
		$model=new Request;

		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		if(isset($_POST['Request']))
		{
			$model->attributes=$_POST['Request'];
			if($model->save())
				$this->redirect(array('CheckStatus'));
		}

		$this->render('RequestForm',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
        
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		if(isset($_POST['Request']))
		{       
			$model->attributes=$_POST['Request'];
			if($model->save())
				$this->redirect(array('admin'));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}
        
        public function actionRequestForm()
	{
		$model=new Request;

		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		if(isset($_POST['Request']))
		{
			$model->attributes=$_POST['Request'];
			if($model->save())
				$this->redirect(array('CheckStatus'));
		}

		$this->render('RequestForm',array(
			'model'=>$model,
		));
	}
        
        public function actionCheckStatusForm($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		if(isset($_POST['Request']))
		{       

                        $model->attributes=$_POST['Request'];
			if($model->save())
				$this->redirect(array('CheckStatus'));
		}

		$this->render('CheckStatusForm',array(
			'model'=>$model,
		));
	}
        
        public function actionRequestGetRequestForm($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		if(isset($_POST['Request']))
		{
                        $model->attributes=$_POST['Request'];
                    
                        $model->request_get_date = new CDbExpression('NOW()');
                        $model->user_accept_request = Yii::app()->user->username;
                        $model->request_status = 'accepted';
                        
			if($model->save())
				$this->redirect(array('RequestGetRepair'));
		}

		$this->render('RequestGetRequestForm',array(
			'model'=>$model,
		));
	}
        
        public function actionRequestGetRepairForm($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		if(isset($_POST['Request']))
		{      
                        $model->attributes=$_POST['Request'];
                        
                        $model->request_start_repair_date = new CDbExpression('NOW()');
                        $model->user_repair = Yii::app()->user->username;
                        $model->request_status = 'pending';
                        
			if($model->save())
				$this->redirect(array('EndRepair'));
		}

		$this->render('RequestGetRepairForm',array(
			'model'=>$model,
		));
	}
        
        public function actionEndRepairForm($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		if(isset($_POST['Request']))
		{       
                        
                        $model->attributes=$_POST['Request'];
                    
                        $model->request_end_repair_date = new CDbExpression('NOW()');
                        //$model->user_close = Yii::app()->user->username;
                        $model->request_status = 'completed';
                        
			if($model->save())
				$this->redirect(array('ToClose'));
		}

		$this->render('EndRepairForm',array(
			'model'=>$model,
		));
	}
        
        public function actionClosedJobForm($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		if(isset($_POST['Request']))
		{       
                        $model->attributes=$_POST['Request'];
                        
                        $model->request_close_date = new CDbExpression('NOW()');
                        $model->user_close = Yii::app()->user->username;
                        $model->request_status = 'closed';
                        
                        //$model->attributes=$_POST['Request'];
			if($model->save())
				$this->redirect(array('ClosedJob'));
		}

		$this->render('ClosedJobForm',array(
			'model'=>$model,
		));
	}
        
        public function actionToCloseForm($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		if(isset($_POST['Request']))
		{       
                    
                        $model->attributes=$_POST['Request'];
                    
                        $model->request_close_date = new CDbExpression('NOW()');
                        $model->user_close = Yii::app()->user->username;
                        $model->request_status = 'closed';
                        
                        //$model->attributes=$_POST['Request'];
			if($model->save())
				$this->redirect(array('ClosedJob'));
		}

		$this->render('ToCloseForm',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('Request');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Request('search');
		$model->unsetAttributes();  // clear any default values
                
                if (isset($_GET['pageSize'])) {
                    Yii::app()->user->setState('pageSize',(int)$_GET['pageSize']);
                    unset($_GET['pageSize']);
                }
                
		if(isset($_GET['Request']))
			$model->attributes=$_GET['Request'];
                
                if(Yii::app()->request->getParam('export')) {
                    $this->actionExport();
                    Yii::app()->end();
                }
                
		$this->render('admin',array(
			'model'=>$model,
		));
	}
        
        public function actionExport()
        {
            $fp = fopen('php://temp', 'w');

            /* 
             * Write a header of csv file
             */
            $headers = array(
                    'devices.device_code',
                    'request_by_user',
                    'request_en',
                    'request_ext',
                    'request_email',
                    'locations.location_name',
                    'request_create_date',
                    'request_get_date',
                    'user_accept_request',
                    'request_start_repair_date',
                    'request_end_repair_date',
                    'user_repair',
                    'request_close_date',
                    'user_close',
                    'request_status',
                );
            $row = array();
            foreach($headers as $header) {
                $row[] = Request::model()->getAttributeLabel($header);
            }
            fputcsv($fp,$row);

            /*
             * Init dataProvider for first page
             */
            $model=new Request('search');
            $model->unsetAttributes();  // clear any default values
            if(isset($_GET['Request'])) {
                $model->attributes=$_GET['Request'];
            }
            $dp = $model->search();
            $dp->setPagination(false);

            /*
             * Get models, write to a file
             */

            $models = $dp->getData();
            foreach($models as $model) {
                $row = array();
                foreach($headers as $head) {
                    $row[] = CHtml::value($model,$head);
                }
                fputcsv($fp,$row);
            }

            /*
             * save csv content to a Session
             */
            rewind($fp);
            Yii::app()->user->setState('export',stream_get_contents($fp));
            fclose($fp);
        }
        
        public function actionGetExportFile()
        {
                Yii::app()->request->sendFile('Repair-Report.csv',Yii::app()->user->getState('export'));
                Yii::app()->user->clearState('export');
        }
	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Request the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Request::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}
        
        public function actionRequestGetRequest() {
            $model = new Request();
            $this->render('RequestGetRequest', array(
                'model' => $model
            ));
        }
        
        public function actionCheckStatus() {
            
            $model = new Request();
            
            $this->render('CheckStatus', array(
                'model' => $model
            ));
        }
        
        public function actionRequestGetRepair() {
            $model = new Request();
            $this->render('RequestGetRepair', array(
                'model' => $model
            ));
        }
        
        public function actionEndRepair() {
            $model = new Request();
            $this->render('EndRepair', array(
                'model' => $model
            ));
        }
        
        public function actionClosedJob() {
            $model = new Request();
            $this->render('ClosedJob', array(
                'model' => $model
            ));
        }
        
        public function actionToClose() {
            $model = new Request();
            $this->render('ToClose', array(
                'model' => $model
            ));
        }
        
	/**
	 * Performs the AJAX validation.
	 * @param Request $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='request-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
