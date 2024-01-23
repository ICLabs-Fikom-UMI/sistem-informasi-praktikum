<div class="login d-flex align-items-center">
    <form action="<?= BASEURL?>/login/login" method="post">
        <div class="login mw-360 d-flex flex-column align-items-center justify-content-center vh-100">
            <div class="p-2 text-center">
                <img src="images/logo_name_title.png" alt="" style="width: 100%;">
            </div>
            <div class="p-2" style="max-width: 360px; width: 100%;">
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" placeholder="email@umi.ac.id" name="email">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <div class="input-group">
                        <input type="password" class="form-control" id="password" placeholder="password" name="password">
                        <span class="input-group-text" id="togglePassword">
                            <i class="fa fa-eye-slash" aria-hidden="true"></i>
                        </span>
                    </div>
                    </div>
                <div class="mb-3">
                    <button type="submit" class="btn btn-primary btn-block" style="width: 360px">Login</button>
                </div>
            </div>
        </div>
    </form>
</div>