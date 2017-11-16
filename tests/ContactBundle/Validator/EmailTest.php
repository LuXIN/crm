<?php
/**
 * Created by PhpStorm.
 * User: crm-team
 * Date: 16/11/17
 * Time: 14:18
 */

namespace Tests\ContactBundle\Validator;

use PHPUnit\Framework\TestCase;
use \ContactBundle\Validator\Email;

class EmailTest extends TestCase
{

    public function dataProvider() {
        return [
          ['email@email.com', true],
          ['email@email.com', true],
          ['email@email.com', true],
          ['email@email.com', true],
        ];
    }

    /**
     * @dataProvider dataProvider
     */
    public function testIsValid($email, $expected) {
        $this->assertEquals($expected, Email::isValid($email));
    }
}