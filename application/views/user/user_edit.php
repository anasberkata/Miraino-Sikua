<div class="page-content">

  <section class="section">
    <div class="card">

      <div class="card-header">
        <div class="row">
          <div class="col">
            <h4 class="card-title pt-2">Edit User - <?= $detail_user["name"]; ?></h4>
          </div>
          <div class="col">
            <a href="<?= base_url('user/users'); ?>" class='btn btn-primary float-end icon'>
              <span>Kembali</span>
            </a>
          </div>
        </div>
      </div>
      <div class="card-body">

        <?= $this->session->flashdata('message'); ?>

        <form action="<?= base_url('user/user_edit'); ?>" method="post">
          <div class="row">
            <div class="col-md-6">
              <input type="hidden" name="id" value="<?= $detail_user["id"]; ?>">
              <div class="form-group">
                <input type="hidden" class="form-control" id="id" name="id" value="<?= $detail_user["id"]; ?>">
                <label for="name">Nama Lengkap</label>
                <input type="text" class="form-control" id="name" placeholder="Nama Lengkap" name="name" value="<?= $detail_user["name"]; ?>">
                <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" placeholder="Username" name="username" value="<?= $detail_user["username"]; ?>">
                <?= form_error('username', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="new_password">Password Baru (Kosongkan jika tidak ingin dirubah)</label>
                <input type="password" class="form-control" id="new_password" placeholder="Password Baru" name="new_password">
                <?= form_error('new_password', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>
            </div>

            <div class="col-md-6">
              <div class="form-group">
                <label for="email">Alamat E-Mail</label>
                <input type="email" class="form-control" id="email" placeholder="Alamat E-Mail" name="email" value="<?= $detail_user["email"]; ?>">
                <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class=" form-group">
                <label for="role_id">Level</label>
                <select class="form-select" name="role_id" id="role_id">
                  <option value="<?= $detail_user["role_id"]; ?>">
                    <?= $detail_user["role"]; ?>
                  </option>
                  <option value="2">Direktur</option>
                  <option value="3">Admin</option>
                  <option value="5">Keuangan</option>
                </select>
              </div>

              <div class=" form-group">
                <button type="submit" class="btn btn-primary w-100 mt-4">Edit</button>
              </div>
            </div>
          </div>
        </form>

      </div>
    </div>
  </section>

</div>