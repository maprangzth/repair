<?php

/**
 * This is the model class for table "requests".
 *
 * The followings are the available columns in table 'requests':
 * @property integer $id
 * @property string $request_fname
 * @property string $request_lname
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
 * @property string $request_start_repair_date
 * @property string $request_end_repair_date
 * @property string $request_clame_date
 * @property string $request_clame_remark
 * @property string $request_close_date
 * @property integer $user_repair_id
 * @property integer $user_close_id
 * @property string $request_answer
 * @property string $request_repair_detail
 * @property string $request_status
 * @property string $request_end_remark
 *
 * The followings are the available model relations:
 * @property Users $userClose
 * @property Locations $location
 * @property Departments $department
 * @property Devices $device
 * @property Users $userRepair
 */
class Request extends CActiveRecord
{
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
			array('request_fname, request_lname, request_en, request_ext, request_email, location_id, department_id, device_id, request_problem, request_detail', 'required'),
			array('request_en, request_ext, location_id, department_id, device_id, user_repair_id, user_close_id', 'numerical', 'integerOnly'=>true),
			array('request_fname, request_lname', 'length', 'max'=>50),
			array('request_email', 'length', 'max'=>125),
			array('request_problem, request_clame_remark', 'length', 'max'=>500),
			array('request_status', 'length', 'max'=>10),
			array('request_get_date, request_start_repair_date, request_end_repair_date, request_clame_date, request_close_date', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, request_fname, request_lname, request_en, request_ext, request_email, location_id, department_id, device_id, request_problem, request_detail, request_remark, request_create_date, request_get_date, request_start_repair_date, request_end_repair_date, request_clame_date, request_clame_remark, request_close_date, user_repair_id, user_close_id, request_answer, request_repair_detail, request_status, request_end_remark', 'safe', 'on'=>'search'),
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
			'userClose' => array(self::BELONGS_TO, 'Users', 'user_close_id'),
			'location' => array(self::BELONGS_TO, 'Locations', 'location_id'),
			'department' => array(self::BELONGS_TO, 'Departments', 'department_id'),
			'device' => array(self::BELONGS_TO, 'Devices', 'device_id'),
			'userRepair' => array(self::BELONGS_TO, 'Users', 'user_repair_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'request_fname' => 'First name',
			'request_lname' => 'Last name',
			'request_en' => 'En.',
			'request_ext' => 'Ext.',
			'request_email' => 'E-mail',
			'location_id' => 'Location',
			'department_id' => 'Department',
			'device_id' => 'Device',
			'request_problem' => 'Requests problem',
			'request_detail' => 'Requests detail',
			'request_remark' => 'Requests remark',
			'request_create_date' => 'Requests date',
			'request_get_date' => 'Get request date',
			'request_start_repair_date' => 'Start repair',
			'request_end_repair_date' => 'End repair',
			'request_clame_date' => 'Clame date',
			'request_clame_remark' => 'Clame remark',
			'request_close_date' => 'Closed date',
			'user_repair_id' => 'Repair by',
			'user_close_id' => 'Close by',
			'request_answer' => 'Requests answer',
			'request_repair_detail' => 'Repair detail',
			'request_status' => 'Requests status',
			'request_end_remark' => 'End remark',
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
		$criteria->compare('request_fname',$this->request_fname,true);
		$criteria->compare('request_lname',$this->request_lname,true);
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
		$criteria->compare('request_start_repair_date',$this->request_start_repair_date,true);
		$criteria->compare('request_end_repair_date',$this->request_end_repair_date,true);
		$criteria->compare('request_clame_date',$this->request_clame_date,true);
		$criteria->compare('request_clame_remark',$this->request_clame_remark,true);
		$criteria->compare('request_close_date',$this->request_close_date,true);
		$criteria->compare('user_repair_id',$this->user_repair_id);
		$criteria->compare('user_close_id',$this->user_close_id);
		$criteria->compare('request_answer',$this->request_answer,true);
		$criteria->compare('request_repair_detail',$this->request_repair_detail,true);
		$criteria->compare('request_status',$this->request_status,true);
		$criteria->compare('request_end_remark',$this->request_end_remark,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
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
