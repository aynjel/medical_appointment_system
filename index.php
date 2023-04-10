<?php

require('Autoload.php');

$user = new User();

$user->update(69,[
    'user_first_name' => 'John',
    'user_last_name' => 'Doe'
]);

H::debug($user->find(69));
// if($res){
//     echo 'Updated';
// }else{
//     echo 'Something went wrong';
// }