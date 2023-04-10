<?php

class Config{
    private static $config = [
        'mysql' => [
            'host' => 'localhost',
            'username' => 'root',
            'password' => '',
            'db' => 'medical_as',
            'options' => [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ,
                PDO::ATTR_EMULATE_PREPARES => false
            ]
        ],
        'website' => [
            'name' => 'Medical Appointment System',
            'url' => 'http://localhost/medical_as/',
        ],
        'mail' => [
            'host' => 'smtp.gmail.com',
            'username' => 'primeangel76@gmail.com',
            'password' => 'vzqwmkbsclwgazll',
            'port' => 587,
            'encryption' => 'tls',
            'from' => 'Medical Appointment System',
            'from_email' => 'primeangel76@gmail.com',
        ],
    ];
    
    public static function get($path = null)
    {
        if ($path) {
            $config = self::$config;
            $path = explode('/', $path);
            
            foreach ($path as $bit) {
                if (isset($config[$bit])) {
                    $config = $config[$bit];
                }
            }
            
            return $config;
        }
        
        return false;
    }
}