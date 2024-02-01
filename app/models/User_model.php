<?php

class User_model {
    private $table = 'user';
    private $db;

    public function __construct() {
        $this->db = new Database();
    }

    public function getAllUser() {
        $this->db->query('SELECT * FROM ' . $this->table);

        return $this->db->resultSet();
    }

    public function getUserByIdUser($id_user) {
        $this->db->query('SELECT * FROM ' . $this->table . ' WHERE id_user = :id_user');

        $this->db->bind('id_user', $id_user);

        return $this->db->single();
    }

    public function getRoleByEmail($email) {
        $query = 'SELECT role FROM ' . $this->table . ' WHERE email = :email';
        
        $this->db->query($query);
        $this->db->bind('email', $email);
        
        return $this->db->single();
    }

    public function isDefaultPassword($password) {
        $defaultPasswords = ['admin', 'asisten', 'dosen'];
        
        return in_array($password, $defaultPasswords);
    }

    public function resetPassword($id_user, $pass) {
        $query = 'UPDATE user SET password = password(:pass) WHERE id_user = :id_user';

        $this->db->query($query);
        $this->db->bind('id_user', $id_user);
        $this->db->bind('pass', $pass);
        
        $this->db->execute();
        
        return $this->db->rowCount();
    }

    public function validateLogin($email, $password) {
        $query = 'SELECT id_user, password FROM ' . $this->table . ' WHERE email = :email and password = password(:password)';

        $this->db->query($query);
        $this->db->bind('email', $email);
        $this->db->bind('password', $password);

        $result = $this->db->single();

        if ($result) {
            return $result['id_user'];
        }
        else {
            return false;
        }
    }

    public function changePassword($data) {
        $query = 'UPDATE ' . $this->table .
                    ' SET
                        password = password(:password)
                      WHERE
                        id_user = :id_user';
        
        $this->db->query($query);
        $this->db->bind('password', $data['password_new']);
        $this->db->bind('id_user', $_SESSION['id_user']);

        $this->db->execute();

        return $this->db->rowCount();
    }

}