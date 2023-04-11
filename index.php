<?php

require('Autoload.php');

$user = new User();

$user->create([
    'user_first_name' => 'John',
    'user_last_name' => 'Doe',
    'user_name' => 'johndoe',
    'user_number' => '1234567890',
    'user_email' => 'asda@gmail.com',
    'user_password' => '1`23123',
    'user_gender' => 'Male',
    'user_number' => '123456879',
    'user_roles' => 'patient',
]);

$patient = new Patientes();

$patient->create([
    'patient_id' => $user->lastInsertId(),
    'doctor_id' => 1
]);