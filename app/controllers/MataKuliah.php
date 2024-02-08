<?php

class MataKuliah extends Controller {
    public function getDataById() {
        echo json_encode($this->model('MataKuliah_model')->getDataById($_POST['id']));
    }
}