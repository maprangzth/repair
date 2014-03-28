<?php

/**
 * This is the model class for table "devices".
 *
 * The followings are the available columns in table 'devices':
 * @property integer $id
 * @property integer $location_id
 * @property integer $device_type_id
 * @property integer $device_brand_id
 * @property integer $device_model_id
 * @property string $device_code
 * @property string $device_create_at
 * @property string $device_buy_date
 * @property string $device_warranty_expire
 * @property string $device_remark
 *
 * The followings are the available model relations:
 * @property DeviceBrands $deviceBrand
 * @property Locations $location
 * @property DeviceModels $deviceModel
 * @property DeviceTypes $deviceType
 */
class Device extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
 
        public $location_name;
        public $device_type_name;
        public $device_brand_name;
        public $device_model_name;
    
	public function tableName()
	{
		return 'devices';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('location_id, device_type_id, device_brand_id, device_model_id, device_code', 'required'),
			array('location_id, device_type_id, device_brand_id, device_model_id', 'numerical', 'integerOnly'=>true),
			array('device_code', 'length', 'max'=>50),
			array('device_code', 'match', 'pattern' => '/^[A-Za-z0-9_]+$/u','message' => "Incorrect symbols (A-z0-9_)."),
			array('device_code', 'unique'),
			array('device_create_at', 'default', 'value' => date('Y-m-d H:i:s'), 'setOnEmpty' => true, 'on' => 'insert'),
			array('device_buy_date,device_warranty_expire', 'default', 'value' => '0000-00-00 00:00:00', 'setOnEmpty' => true, 'on' => 'insert'),
			array('device_remark', 'length', 'max'=>255),
                        array('device_buy_date, device_warranty_expire, device_remark', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, location_id, device_type_id, device_brand_id, device_model_id, device_code, device_create_at, device_buy_date, device_warranty_expire, device_remark, location_name, device_type_name, device_brand_name, device_model_name', 'safe', 'on'=>'search'),
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
                        'locations' => array(self::BELONGS_TO, 'Location', 'location_id'),
                        'device_types' => array(self::BELONGS_TO, 'DeviceType', 'device_type_id'),
			'device_brands' => array(self::BELONGS_TO, 'DeviceBrand', 'device_brand_id'),
			'device_models' => array(self::BELONGS_TO, 'DeviceModel', 'device_model_id'),
			
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'location_id' => 'Location',
			'device_type_id' => 'Device Type',
			'device_brand_id' => 'Device Brand',
			'device_model_id' => 'Device Model',
			'device_code' => 'Device Code',
			'device_create_at' => 'Device create at',
			'device_buy_date' => 'Device buy date',
			'device_warranty_expire' => 'Device warrany expire',
			'device_remark' => 'Device Remark',
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
		$criteria->compare('location_id',$this->location_id);
		$criteria->compare('device_type_id',$this->device_type_id);
		$criteria->compare('device_brand_id',$this->device_brand_id);
		$criteria->compare('device_model_id',$this->device_model_id);
		$criteria->compare('device_code',$this->device_code,true);
		$criteria->compare('device_create_at',$this->device_create_at,true);
		$criteria->compare('device_buy_date',$this->device_buy_date,true);
		$criteria->compare('device_warranty_expire',$this->device_warranty_expire,true);
		$criteria->compare('device_remark',$this->device_remark,true);

                $criteria->compare('device_types.device_type_name', $this->device_type_name,true);
                $criteria->compare('device_brands.device_brand_name', $this->device_brand_name,true);
                $criteria->compare('device_models.device_model_name', $this->device_model_name,true);
                $criteria->compare('locations.location_name', $this->location_name,true);
                
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Device the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
