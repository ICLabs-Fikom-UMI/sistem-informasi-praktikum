<?php

class Settings extends Controller {
    public function index() {
        $data['title'] = 'Settings';
        $data['header'] = 'Settings';
        $data['detail'] = 'Dapat mengatur bobot penilaian dan dokuman';

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('templates/headerProfile', $data);
        $this->view('settings/index');
        $this->view('templates/footer');
    }
}