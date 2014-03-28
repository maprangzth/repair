<?php

/**
 * This is the model class for table "device_models".
 *
 * The followings are the available columns in table 'device_models':
 * @property integer $id
 * @property integer $device_brand_id
 * @property string $device_model_name
 *
 * The followings are the available model relations:
 * @property DeviceBrands $deviceBrand
 * @property Devices[] $devices
 */
class DeviceModel extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'device_models';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('device_brand_id, device_model_name', 'required'),
			array('device_brand_id', 'numerical', 'integerOnly'=>true),
			array('device_model_name', 'length', 'max'=>50),
                        //array('device_model_name', 'match', 'pattern' => '/^[A-Za-z0-9_]+$/u','message' => "Incorrect symbols (A-z0-9_)."),
			array('device_model_name', 'unique'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, device_brand_id, device_model_name', 'safe', 'on'=>'search'),
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
			'device_brands' => array(self::BELONGS_TO, 'DeviceBrand', 'device_brand_id'),
			'devices' => array(self::HAS_MANY, 'Device', 'device_model_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'device_brand_id' => 'Device Brand',
			'device_model_name' => 'Device Model',
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
		$criteria->compare('device_brand_id',$this->device_brand_id);
		$criteria->compare('device_model_name',$this->device_model_name,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return DeviceModel the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
