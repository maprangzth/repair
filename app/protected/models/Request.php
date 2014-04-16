<?php

/**
 * This is the model class for table "requests".
 *
 * The followings are the available columns in table 'requests':
 * @property integer $id
 * @property string $request_by_user
 * @property integer $request_en
 * @property integer $request_ext
 * @property string $request_email
 * @property integer $location_id
 * @property integer $department_id
 * @property integer $device_id
 * @property string $request_problem
 * @property string $request_detail
 * @property string $request_remark
 * @property string $request_create_date
 * @property string $request_get_date
 * @property string $user_accept_request
 * @property string $request_start_repair_date
 * @property string $user_repair
 * @property string $request_end_repair_date
 * @property string $request_close_date
 * @property string $user_close
 * @property string $request_answer
 * @property string $request_repair_detail
 * @property string $request_status
 * @property string $request_end_remark
 *
 * The followings are the available model relations:
 * @property Departments $department
 * @property Devices $device
 * @property Locations $location
 */
class Request extends CActiveRecord
{
    
        public $device_code; 
        public $location_name;

        /**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'requests';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('request_by_user, request_en, request_ext, location_id, department_id, device_id, request_problem, request_detail', 'required'),
			array('request_en, request_ext, location_id, department_id, device_id', 'numerical', 'integerOnly'=>true),
			array('request_by_user, user_accept_request, user_repair, user_close', 'length', 'max'=>50),
                    
			array('request_email', 'length', 'max'=>125),
			array('request_problem', 'length', 'max'=>500),
                        array('request_remark', 'length', 'max'=>500),
                        array('request_answer', 'length', 'max'=>500),
                        array('request_repair_detail', 'length', 'max'=>500),
                        array('request_end_remark', 'length', 'max'=>500),
			array('request_status', 'length', 'max'=>10),
                    
                        array('request_create_date', 'default', 'value' => date('Y-m-d H:i:s'), 'setOnEmpty' => true, 'on' => 'insert'),
			array('request_get_date, request_start_repair_date, request_end_repair_date, request_close_date', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, request_by_user, request_en, device_code, location_name, request_ext, request_email, location_id, department_id, device_id, request_problem, request_detail, request_remark, request_create_date, request_get_date, user_accept_request, request_start_repair_date, user_repair, request_end_repair_date, request_close_date, user_close, request_answer, request_repair_detail, request_status, request_end_remark', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'departments' => array(self::BELONGS_TO, 'Department', 'department_id'),
			'devices' => array(self::BELONGS_TO, 'Device', 'device_id'),
			'locations' => array(self::BELONGS_TO, 'Location', 'location_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'request_by_user' => 'Request by',
			'request_en' => 'En',
			'request_ext' => 'Ext',
			'request_email' => 'E-mail',
			'location_id' => 'Location',
			'department_id' => 'Department',
			'device_id' => 'Device',
			'request_problem' => 'Problem',
			'request_detail' => 'Detail',
			'request_remark' => 'Remark',
			'request_create_date' => 'Requested date',
			'request_get_date' => 'Accepted date',
			'user_accept_request' => 'Accepted by',
			'request_start_repair_date' => 'Start repair date',
			'user_repair' => 'Repair by',
			'request_end_repair_date' => 'End repair date',
			'request_close_date' => 'Close job date',
			'user_close' => 'Close job by',
			'request_answer' => 'Cause symptoms',
			'request_repair_detail' => 'Repair detail',
			'request_status' => 'Status',
			'request_end_remark' => 'End remark',
                        'device_code' => 'Device',
                        'location_name' => 'Location',
                    
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('request_by_user',$this->request_by_user,true);
		$criteria->compare('request_en',$this->request_en,true);
		$criteria->compare('request_ext',$this->request_ext,true);
		$criteria->compare('request_email',$this->request_email,true);
		$criteria->compare('location_id',$this->location_id);
		$criteria->compare('department_id',$this->department_id);
		$criteria->compare('device_id',$this->device_id);
		$criteria->compare('request_problem',$this->request_problem,true);
		$criteria->compare('request_detail',$this->request_detail,true);
		$criteria->compare('request_remark',$this->request_remark,true);
		$criteria->compare('request_create_date',$this->request_create_date,true);
		$criteria->compare('request_get_date',$this->request_get_date,true);
		$criteria->compare('user_accept_request',$this->user_accept_request,true);
		$criteria->compare('request_start_repair_date',$this->request_start_repair_date,true);
		$criteria->compare('user_repair',$this->user_repair,true);
		$criteria->compare('request_end_repair_date',$this->request_end_repair_date,true);
		$criteria->compare('request_close_date',$this->request_close_date,true);
		$criteria->compare('user_close',$this->user_close,true);
		$criteria->compare('request_answer',$this->request_answer,true);
		$criteria->compare('request_repair_detail',$this->request_repair_detail,true);
		$criteria->compare('request_status',$this->request_status,true);
		$criteria->compare('request_end_remark',$this->request_end_remark,true);
                
                if($this->device_code)
                {
                        $criteria->together  =  true;
                        $criteria->with = array('devices');
                        $criteria->compare('devices.device_code',$this->device_code,true);
                }
                
                if($this->location_name)
                {
                        $criteria->together  =  true;
                        $criteria->with = array('locations');
                        $criteria->compare('locations.location_name',$this->location_name,true);
                }

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

        public function searchRequest() {
            $criteria = new CDbCriteria();
            $criteria->condition = "request_status = 'waiting'";
            
            $criteria->compare('request_by_user',$this->request_by_user,true);
            $criteria->compare('request_en',$this->request_en);
            $criteria->compare('request_ext',$this->request_ext);
            $criteria->compare('request_email',$this->request_email,true);
            $criteria->compare('location_id',$this->location_id);
            $criteria->compare('department_id',$this->department_id);
            $criteria->compare('device_id',$this->device_id);
            $criteria->compare('request_problem',$this->request_problem,true);
            $criteria->compare('request_detail',$this->request_detail,true);
            $criteria->compare('request_remark',$this->request_remark,true);
            $criteria->compare('request_create_date',$this->request_create_date,true);
            $criteria->compare('request_get_date',$this->request_get_date,true);
            $criteria->compare('user_accept_request',$this->user_accept_request,true);
            $criteria->compare('request_start_repair_date',$this->request_start_repair_date,true);
            $criteria->compare('user_repair',$this->user_repair,true);
            $criteria->compare('request_end_repair_date',$this->request_end_repair_date,true);
            $criteria->compare('request_close_date',$this->request_close_date,true);
            $criteria->compare('user_close',$this->user_close,true);
            $criteria->compare('request_answer',$this->request_answer,true);
            $criteria->compare('request_repair_detail',$this->request_repair_detail,true);
            $criteria->compare('request_status',$this->request_status,true);
            $criteria->compare('request_end_remark',$this->request_end_remark,true);
            
            //$criteria->order = 'request_create_date';
            return new CActiveDataProvider($this, array(
                        'criteria' => $criteria
            ));
        }
        
        public function searchRequestRepair() {
            $criteria = new CDbCriteria();
            
            $criteria->compare('request_by_user',$this->request_by_user,true);
            $criteria->compare('request_en',$this->request_en);
            $criteria->compare('request_ext',$this->request_ext);
            $criteria->compare('request_email',$this->request_email,true);
            $criteria->compare('location_id',$this->location_id);
            $criteria->compare('department_id',$this->department_id);
            $criteria->compare('device_id',$this->device_id);
            $criteria->compare('request_problem',$this->request_problem,true);
            $criteria->compare('request_detail',$this->request_detail,true);
            $criteria->compare('request_remark',$this->request_remark,true);
            $criteria->compare('request_create_date',$this->request_create_date,true);
            $criteria->compare('request_get_date',$this->request_get_date,true);
            $criteria->compare('user_accept_request',$this->user_accept_request,true);
            $criteria->compare('request_start_repair_date',$this->request_start_repair_date,true);
            $criteria->compare('user_repair',$this->user_repair,true);
            $criteria->compare('request_end_repair_date',$this->request_end_repair_date,true);
            $criteria->compare('request_close_date',$this->request_close_date,true);
            $criteria->compare('user_close',$this->user_close,true);
            $criteria->compare('request_answer',$this->request_answer,true);
            $criteria->compare('request_repair_detail',$this->request_repair_detail,true);
            $criteria->compare('request_end_remark',$this->request_end_remark,true);
            
            $criteria->condition = "request_status = 'accepted'";
            
            //$criteria->order = 'request_create_date';
            return new CActiveDataProvider($this, array(
                        'criteria' => $criteria
            ));
        }
        
        public function searchCheckStatus() {
            $criteria = new CDbCriteria();
            $criteria->condition = "request_status != 'closed'";
            
            $criteria->compare('request_by_user',$this->request_by_user,true);
            $criteria->compare('request_en',$this->request_en);
            $criteria->compare('request_ext',$this->request_ext);
            $criteria->compare('request_email',$this->request_email,true);
            $criteria->compare('location_id',$this->location_id);
            $criteria->compare('department_id',$this->department_id);
            $criteria->compare('device_id',$this->device_id);
            $criteria->compare('request_problem',$this->request_problem,true);
            $criteria->compare('request_detail',$this->request_detail,true);
            $criteria->compare('request_remark',$this->request_remark,true);
            $criteria->compare('request_create_date',$this->request_create_date,true);
            $criteria->compare('request_get_date',$this->request_get_date,true);
            $criteria->compare('user_accept_request',$this->user_accept_request,true);
            $criteria->compare('request_start_repair_date',$this->request_start_repair_date,true);
            $criteria->compare('user_repair',$this->user_repair,true);
            $criteria->compare('request_end_repair_date',$this->request_end_repair_date,true);
            $criteria->compare('request_close_date',$this->request_close_date,true);
            $criteria->compare('user_close',$this->user_close,true);
            $criteria->compare('request_answer',$this->request_answer,true);
            $criteria->compare('request_repair_detail',$this->request_repair_detail,true);
            $criteria->compare('request_status',$this->request_status,true);
            $criteria->compare('request_end_remark',$this->request_end_remark,true);
            
            return new CActiveDataProvider(get_class($this), array(
                        'pagination'=>array(
                                'pageSize'=> 20,
                        ),
                        'criteria'=>$criteria,
                ));
        }
        
         public function getRequestStatus($data, $row) {
            switch ($data->request_status) {
                case 'waiting':
                    return 'Waiting';
                case 'accepted':
                    return 'Accepted';
                case 'pending':
                    return 'Pending';
                case 'completed':
                    return 'Completed';
                case 'closed':
                    return 'Closed';
            }
        }
        
        public function beforeValidate() {
            if ($this->isNewRecord) {
                $this->request_create_date = new CDbExpression('NOW()');
                $this->request_status = 'waiting';
            }

            return parent::beforeValidate();
        }
        
        public function searchGetRepair() {
            $criteria = new CDbCriteria();
            $criteria->condition = "request_status IN ('accepted')";
            
            return new CActiveDataProvider($this, array(
                        'criteria' => $criteria
                    ));
        }

        public function searchToComplete() {
            $criteria = new CDbCriteria();
            $criteria->condition = "request_status IN ('pending')";
           
            return new CActiveDataProvider($this, array(
                        'criteria' => $criteria
                    ));
        }
        
        public function searchClosedJob() {
            $criteria = new CDbCriteria();
            $criteria->condition = "request_status IN ('closed')";
            
            return new CActiveDataProvider($this, array(
                        'criteria' => $criteria
                    ));
        }
        
        public function searchToClose() {
            $criteria = new CDbCriteria();
            $criteria->condition = "request_status IN ('completed')";
            
            return new CActiveDataProvider($this, array(
                        'criteria' => $criteria
                    ));
        }
        
        
        public function getButtonGetRequestView($data, $row) {
            $param = array('request/RequestGetRequestForm', 'id' => $data->id);
            $link = CHtml::link($data->devices->device_code, $param);

            return $link;
        }
        
        public function getButtonGetRepairView($data, $row) {
            $param = array('request/RequestGetRepairForm', 'id' => $data->id);
            $link = CHtml::link($data->devices->device_code, $param);

            return $link;
        }
        
        public function getButtonEndRepairView($data, $row) {
            $param = array('request/EndRepairForm', 'id' => $data->id);
            $link = CHtml::link($data->devices->device_code, $param);

            return $link;
        }
        
        public function getButtonCloseJobView($data, $row) {
            $param = array('request/ToCloseForm', 'id' => $data->id);
            $link = CHtml::link($data->devices->device_code, $param);

            return $link;
        }
        
        public function getButtonClosedJobView($data, $row) {
            $param = array('request/ClosedJobForm', 'id' => $data->id);
            $link = CHtml::link($data->devices->device_code, $param);

            return $link;
        }
        
        public function getButtonGetCheckView($data, $row) {
            $param = array('request/CheckStatusForm', 'id' => $data->id);
            $link = CHtml::link($data->devices->device_code, $param);

            return $link;
        }
        
	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Request the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
