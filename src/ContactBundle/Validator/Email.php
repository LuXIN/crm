<?php
/**
 * Created by PhpStorm.
 * User: crm-team
 * Date: 16/11/17
 * Time: 14:14
 */

namespace ContactBundle\Validator;

class Email
{
    public static function isValid(string $email) : bool
    {
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            // invalid emailaddress
            return false;
        }
        return true;
    }
}