<div class="page-content">

  <section class="section">
    <div class="card">
      <div class="card-header">
        <div class="row">
          <div class="col-12 col-lg-8">
            <h4 class="card-title pt-2">Profile Anda</h4>
          </div>
          <div class="col-12 col-lg-4">
            <div class="btn-group w-100" role="button">
              <a href="<?= base_url('user/profile_edit'); ?>" class="btn icon btn-primary">Edit</a>
              <a href="<?= base_url('user/profile_change_password'); ?>" class="btn icon btn-warning">Ganti Password</a>
            </div>
          </div>
        </div>
      </div>
      <div class="card-body">

        <?= $this->session->flashdata('message'); ?>

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
              <div class="col-4">Tanggal Dibuat</div>
              <div class="col-8">: <?= date('d F Y', strtotime($user['date_created'])); ?></div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </section>

</div>