<div class="page-content">

  <section class="section">
    <div class="card">

      <div class="card-header">
        <div class="row">
          <div class="col">
            <h4 class="card-title pt-2">Tambah User</h4>
          </div>
          <div class="col">
            <a href="<?= base_url('user'); ?>" class='btn btn-primary float-end icon'>
              <span>Kembali</span>
            </a>
          </div>
        </div>
      </div>
      <div class="card-body">

        <form action="<?= base_url('user/user_add'); ?>" method="post">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label for="name">Nama Lengkap</label>
                <input type="text" class="form-control" id="name" placeholder="Nama Lengkap" name="name" required>
                <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="username">username</label>
                <input type="text" class="form-control" id="username" placeholder="Username" name="username" required>
                <?= form_error('username', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="email">Alamat E-Mail</label>
                <input type="email" class="form-control" id="email" placeholder="Alamat E-Mail" name="email" required>
                <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>
            </div>

            <div class="col-md-6">
              <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
                <?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="role_id">Level</label>
                <select class="form-select" name="role_id" id="role_id" required>
                  <option value="2">Admin</option>
                  <option value="3">Manager</option>
                </select>
              </div>

              <div class="form-group">
                <button type="submit" class="btn btn-primary w-100 mt-4">Tambah</button>
              </div>
            </div>
          </div>
        </form>

      </div>
    </div>
  </section>

</div>