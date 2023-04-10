<?php

class Patient extends Model{
    public function __construct(){
        parent::__construct('tbl_patients', 'patient_id');
    }

    public function createPatient(){
        $user = new User();

        $random_password = rand();

        $res = $user->create([
            'user_first_name' => Input::get('first_name'),
            'user_last_name' => Input::get('last_name'),
            'user_name' => Input::get('username'),
            'user_number' => Input::get('number'),
            'user_email' => Input::get('email'),
            'user_password' => $random_password,
            'user_gender' => Input::get('gender'),
            'user_roles' => 'patient',
        ]);
        
        if($res){
            $this->create([
                'patient_id' => $res
            ]);
            return true;
        }
        
        return false;
    }
}