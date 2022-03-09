<div id="auth">
  <div class="row h-100">

    <div class="col-lg-7 d-none d-lg-block">
      <div id="auth-right">
      </div>
    </div>

    <div class="col-lg-5 col-12">
      <div id="auth-left">

        <div class="auth-logo">
          <img src="assets/images/logo/Logo MHJ Web.png" alt="Logo Miraino" class="shadow rounded-circle">
        </div>
        <h3>SIK LPK MIRAINO HASHI JAYA</h3>
        <p class="auth-subtitle mb-4">Sistem Informasi Keuangan PT. Miraino Hashi Jaya</p>

        <?= $this->session->flashdata('message'); ?>

        <form action="<?= base_url('auth'); ?>" method="POST">
          <div class="form-group position-relative has-icon-left mb-4">
            <input type="text" class="form-control form-control-xl" placeholder="Username" name="username" value="<?= set_value('email'); ?>">
            <div class="form-control-icon">
              <i class="bi bi-person"></i>
            </div>
            <?= form_error('username', '<small class="text-danger pl-3">', '</small>'); ?>
          </div>

          <div class="form-group position-relative has-icon-left mb-4">
            <input type="password" class="form-control form-control-xl" placeholder="Password" name="password">
            <div class="form-control-icon">
              <i class="bi bi-shield-lock"></i>
            </div>
            <?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
          </div>
          <button class="btn btn-primary btn-block btn-lg shadow-lg">Log in</button>
        </form>

      </div>
    </div>
  </div>
</div>