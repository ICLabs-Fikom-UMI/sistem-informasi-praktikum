<?php
session_start();
?>
<div id="main" class="d-flex flex-column">
  <!-- Header -->
  <div class="header mb-3">
    <div class="title-profile d-flex justify-content-between align-items-center">
      <div class="title">
        <h3><?= $data['header']?></h3>
        <h5><?= $data['detail']?></h5>
      </div>
      <div class="profile">
        <div class="btn-group">
          <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            <span class="profile-name">Kak Fatimah</span><br>
            <span class="profile-role"><?= $_SESSION['role_user']?></span>
          </button>
          <ul class="dropdown-menu">
            <li><a href="<?= BASEURL?>/login/changePassword" class="dropdown-item dropdown-item-data">changePassword</a></li>
            <li><a href="<?= BASEURL?>/login/logout" class="dropdown-item dropdown-item-data">Logout</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>