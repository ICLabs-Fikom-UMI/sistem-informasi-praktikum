<?php

class Laboratorium extends Controller {
    public function index() {
        $data['title'] = 'Laboratorium';

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('laboratorium/index');
        $this->view('templates/footer');
    }
}