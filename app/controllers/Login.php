<?php

class Login extends Controller {
    public function index() {
        $data['title'] = 'Login';

        $this->view('templates/header', $data);
        $this->view('login/index');
        $this->view('templates/footer');
    }

    public function login() {
        $email = $_POST['email'];
        $password = $_POST['password'];

        $role = $this->model('Login_model')->getRole($email);

        echo var_dump($_POST);
        echo "<br></br>";

        $id_user = $this->model('Login_model')->validateLogin($email, $password);

        if ($id_user) {
            echo "Berhasil Login";

            $is_password_default = $this->model('Login_model')->isDefaultPassword($password);
            // [PENTINGJ] hapus tanda (!) negasi untuk sementara untuk mengabaikan password default
            if (!$is_password_default) {
                // header('Location: change-default-password.php');
                echo "Password Default";
                exit();
            }
            else {
                header('Location: ' . BASEURL . '/home');
                exit;
            }
        }
        else {
            echo "Email Atau Password Salah";
        }
    }

}