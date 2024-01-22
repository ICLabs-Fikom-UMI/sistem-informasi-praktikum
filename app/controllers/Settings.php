<?php

class Settings extends Controller {
    public function index() {
        $data['title'] = 'Settings';

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('settings/index');
        $this->view('templates/footer');
    }
}