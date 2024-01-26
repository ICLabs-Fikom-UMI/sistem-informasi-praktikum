<?php
session_start();

class Login extends Controller {
    public function index() {
        if (isset($_SESSION['id_user'])) {
            header('Location: ' . BASEURL . '/daftarnilai');
            exit;
        }
        
        $data['title'] = 'Login';
        $this->view('templates/header', $data);
        $this->view('login/index');
        $this->view('templates/footer');
    }

    public function login() {
        $email = $_POST['email'];
        $password = $_POST['password'];

        $role = $this->model('User_model')->getRoleByEmail($email);

        echo var_dump($_POST);
        echo "<br></br>";

        $id_user = $this->model('User_model')->validateLogin($email, $password);

        if ($id_user) {
            echo "Berhasil Login";

            $is_password_default = $this->model('User_model')->isDefaultPassword($password);
            // [PENTINGJ] hapus tanda (!) negasi untuk sementara untuk mengabaikan password default
            if (!$is_password_default) {
                // header('Location: change-default-password.php');
                echo "Password Default";
                exit();
            }
            else {
                $_SESSION['id_user'] = $id_user;
                $_SESSION['role_user'] = $role['role'];
                header('Location: ' . BASEURL . '/daftarNilai');
                exit;
            }
        }
        else {
            echo "Email Atau Password Salah";
        }
    }
    
    public function logout() {
        session_start();
        session_unset();
        session_destroy();

        header('Location: ' . BASEURL . '/login');
        exit;
    }

    public function resetPassword($id_user) {
        if ($this->model('User_model')->resetPassword($id_user) > 0) {
            // Flasher::setFlash('berhasil', 'diganti', 'success');
            header('Location: ' . BASEURL . '/');
            exit;
        }
    }
}