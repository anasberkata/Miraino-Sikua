<div class="page-content">

  <section class="section">
    <div class="card">
      <div class="card-header">
        <div class="row">
          <div class="col">
            <h4 class="card-title pt-2">Detail User - <?= $users->name; ?></h4>
          </div>
          <div class="col">
            <a href="<?= base_url('user'); ?>" class='btn btn-primary float-end icon'>
              <span>Kembali</span>
            </a>
          </div>
        </div>
      </div>
      <div class="card-body">
        <ul class="list-group">
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">Nama Lengkap</div>
              <div class="col-8">: <?= $users->name; ?></div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">Username</div>
              <div class="col-8">: <?= $users->username; ?></div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">E-Mail</div>
              <div class="col-8">: <?= $users->email; ?></div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">Role</div>
              <div class="col-8">:
                <?php if ($users->role_id == 1) : ?>
                  Super Admin
                <?php elseif ($users->role_id == 2) : ?>
                  Admin
                <?php elseif ($users->role_id == 3) : ?>
                  Manager
                <?php endif; ?>
              </div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">Tanggal Dibuat</div>
              <div class="col-8">: <?= date('d F Y', strtotime($users->date_created)); ?></div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </section>

</div>