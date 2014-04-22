<?php

/**
 * This is the model class for table "device_brands".
 *
 * The followings are the available columns in table 'device_brands':
 * @property integer $id
 * @property integer $device_type_id
 * @property string $device_brand_name
 *
 * The followings are the available model relations:
 * @property DeviceTypes $deviceType
 * @property DeviceModels[] $deviceModels
 * @property Devices[] $devices
 */
class DeviceBrand extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'device_brands';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('device_brand_name', 'required'),
			array('device_brand_name', 'length', 'max'=>50),
                        //array('device_brand_name', 'match', 'pattern' => '/^[A-Za-z]+$/u','message' => "Incorrect symbols (A-z)."),
			array('device_brand_name', 'unique'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, device_brand_name', 'safe', 'on'=>'search'),
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
			'device_models' => array(self::HAS_MANY, 'DeviceModel', 'device_brand_id'),
			'devices' => array(self::HAS_MANY, 'Device', 'device_brand_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'device_brand_name' => 'Device Brand',
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
		$criteria->compare('device_brand_name',$this->device_brand_name,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return DeviceBrand the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
