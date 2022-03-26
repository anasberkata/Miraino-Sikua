<div class="page-content">

  <section class="section">
    <div class="card">

      <div class="card-header">
        <div class="row">
          <div class="col">
            <h4 class="card-title pt-2">Edit Password Anda</h4>
          </div>
          <div class="col">
            <a href="<?= base_url('user'); ?>" class='btn btn-primary float-end icon'>
              <span>Kembali</span>
            </a>
          </div>
        </div>
      </div>
      <div class="card-body">

        <?= $this->session->flashdata('message'); ?>

        <form action="<?= base_url('user/profile_change_password'); ?>" method="post">
          <div class="row">
            <div class="col-md">
              <div class="form-group">
                <label for="current_password">Password Lama</label>
                <input type="password" class="form-control" id="current_password" placeholder="Password Lama Anda" name="current_password">
                <?= form_error('current_password', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="new_password1">Password Baru</label>
                <input type="password" class="form-control" id="new_password1" placeholder="Password Baru" name="new_password1">
                <?= form_error('new_password1', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>
              <div class="form-group">
                <label for="new_password2">Konfirmasi Password Baru</label>
                <input type="password" class="form-control" id="new_password2" placeholder="Konfirmasi Password" name="new_password2">
                <?= form_error('new_password2', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class=" form-group">
                <button type="submit" class="btn btn-primary w-100 mt-4">Ganti Password</button>
              </div>
            </div>
          </div>
        </form>

      </div>
    </div>
  </section>

</div>