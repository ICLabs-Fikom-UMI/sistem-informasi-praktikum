<form action="<?= BASEURL?>/login/changepassworddefault" method="post">
    <div class="login mw-360 d-flex flex-column align-items-center justify-content-center vh-100">
        <div class="p-2 text-center">
            <img src="<?=BASEURL?>/images/logo_name_title.png" alt="" style="width: 100%;">
        </div>
        <div class="p-2" style="max-width: 360px; width: 100%;">
            <div class="mb-3">
                <label for="password_new" class="form-label">Password Baru</label>
                <div class="input-group">
                    <input type="password" class="form-control" id="password_new" placeholder="password baru" name="password_new">
                    <span class="input-group-text" id="togglePassword">
                        <i class="fa fa-eye-slash" aria-hidden="true"></i>
                    </span>
                </div>
            </div>
            <div class="mb-3">
                <label for="password_confirm" class="form-label">Konfirmasi Password</label>
                <div class="input-group">
                    <input type="password" class="form-control" id="password_confirm" placeholder="konfirmasi password" name="password_confirm">
                    <span class="input-group-text" id="togglePassword">
                        <i class="fa fa-eye-slash" aria-hidden="true"></i>
                    </span>
                </div>
            </div>
            <div class="mb-3">
                <button id="btn_change_pass" type="submit" class="btn btn-primary btn-block" style="width: 360px">Ganti Password</button>
            </div>
        </div>
    </div>
</form>