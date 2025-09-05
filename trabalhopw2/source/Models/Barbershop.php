<?php

namespace Source\Models;

use Source\Core\Connect;
use Source\Core\Model;
use PDO;
use PDOException;

class Barbershop extends Model{
    protected $id;
    protected $user_id;
    protected $name;
    protected $address;
    protected $phone;
    protected $photo;

    public function __construct(
        int $id = null,
        int $user_id = null,
        string $name = null,
        string $address = null,
        string $phone = null,
        string $photo = null 
    )
    {
        $this->table = "barbershops";
        $this->id = $id;
        $this->user_id = $user_id;
        $this->name = $name;
        $this->address = $address;
        $this->password = $password;
        $this->phone = $phone;
        $this->photo = $photo;
    }
public function getId() {
    return $this->id;
}

public function setId($id) {
    $this->id = $id;
}

public function getUserId() {
    return $this->user_id;
}

public function setUserId($user_id) {
    $this->user_id = $user_id;
}

public function getName() {
    return $this->name;
}

public function setName($name) {
    $this->name = $name;
}

public function getAddress() {
    return $this->address;
}

public function setAddress($address) {
    $this->address = $address;
}

public function getPassword() {
    return $this->password;
}

public function setPassword($password) {
    $this->password = $password;
}

public function getPhone() {
    return $this->phone;
}

public function setPhone($phone) {
    $this->phone = $phone;
}

public function getPhoto() {
    return $this->photo;
}

public function setPhoto($photo) {
    $this->photo = $photo;
}

public function getTable() {
    return $this->table;
}

public function setTable($table) {
    $this->table = $table;
}


}