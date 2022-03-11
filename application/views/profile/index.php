<div class="page-content">

  <section class="section">
    <div class="card">
      <div class="card-header">
        <div class="row">
          <div class="col">
            <h4 class="card-title pt-2">Profile Anda</h4>
          </div>
          <div class="col-4">
            <div class="btn-group w-100" role="button">
              <a href="<?= base_url('profile/profile_edit'); ?>" class="btn icon btn-primary">Edit</a>
              <a href="<?= base_url('profile/profile_change_password'); ?>" class="btn icon btn-warning">Ganti Password</a>
            </div>
          </div>
        </div>
      </div>
      <div class="card-body">
        <ul class="list-group">
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">Nama Lengkap</div>
              <div class="col-8">: <?= $user['name']; ?></div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">Username</div>
              <div class="col-8">: <?= $user['username']; ?></div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">E-Mail</div>
              <div class="col-8">: <?= $user['email']; ?></div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">Role</div>
              <div class="col-8">:
                <?php if ($user['role_id'] == 1) : ?>
                  Super Admin
                <?php elseif ($user['role_id'] == 2) : ?>
                  Admin
                <?php elseif ($user['role_id'] == 3) : ?>
                  Manager
                <?php endif; ?>
              </div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">Tanggal Dibuat</div>
              <div class="col-8">: <?= $user['date_created']; ?></div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </section>

</div>