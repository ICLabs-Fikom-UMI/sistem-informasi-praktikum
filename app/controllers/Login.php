<?php

class Login extends Controller {
    public function index() {
        $data['title'] = 'Home';

        $this->view('templates/header', $data);
        $this->view('login/index');
        $this->view('templates/footer');
    }

    public function login() {
        $email = $_POST['email'];
        $password = $_POST['password'];
    }
}