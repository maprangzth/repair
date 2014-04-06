<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity
{
	private $_id;
        private $_email;
        
        private $location_id;
        private $department_id;
        private $employee_number;
        private $extension_number;


        const ERROR_EMAIL_INVALID=3;
	const ERROR_STATUS_NOTACTIV=4;
	const ERROR_STATUS_BAN=5;
	/**
	 * Authenticates a user.
	 * The example implementation makes sure if the username and password
	 * are both 'demo'.
	 * In practical applications, this should be changed to authenticate
	 * against some persistent user identity storage (e.g. database).
	 * @return boolean whether authentication succeeds.
	 */
	public function authenticate()
	{
		if (strpos($this->username,"@")) {
			$user=User::model()->notsafe()->findByAttributes(array('email'=>$this->username));
		} else {
			$user=User::model()->notsafe()->findByAttributes(array('username'=>$this->username));
		}
		if($user===null)
			if (strpos($this->username,"@")) {
				$this->errorCode=self::ERROR_EMAIL_INVALID;
			} else {
				$this->errorCode=self::ERROR_USERNAME_INVALID;
			}
		else if(Yii::app()->getModule('user')->encrypting($this->password)!==$user->password)
			$this->errorCode=self::ERROR_PASSWORD_INVALID;
		else if($user->status==0&&Yii::app()->getModule('user')->loginNotActiv==false)
			$this->errorCode=self::ERROR_STATUS_NOTACTIV;
		else if($user->status==-1)
			$this->errorCode=self::ERROR_STATUS_BAN;
		else {
			$this->_id=$user->id;
			$this->username=$user->username;
                        $this->_email=$user->email;
                        $this->location_id=$user->location_id;
                        $this->location_id=$user->location_id;
                        $this->department_id=$user->department_id;
                        $this->extension_number=$user->extension_number;
                        $this->employee_number=$user->employee_number;
			$this->errorCode=self::ERROR_NONE;
                        
                        Yii::app()->session['username'] = $user->username;
                        Yii::app()->session['email'] = $user->email;
                        Yii::app()->session['location_id'] = $user->location_id;
                        Yii::app()->session['department_id'] = $user->department_id;
                        Yii::app()->session['extension_number'] = $user->extension_number;
                        Yii::app()->session['employee_number'] = $user->employee_number;
		}
		return !$this->errorCode;
	}
    
    /**
    * @return integer the ID of the user record
    */
	public function getId()
	{
		return $this->_id;
	}
}