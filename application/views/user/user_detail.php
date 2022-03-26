<div class="page-content">

  <section class="section">
    <div class="card">
      <div class="card-header">
        <div class="row">
          <div class="col">
            <h4 class="card-title pt-2">Detail User - <?= $detail_user["name"]; ?></h4>
          </div>
          <div class="col">
            <a href="<?= base_url('user/users'); ?>" class='btn btn-primary float-end icon'>
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
              <div class="col-8">: <?= $detail_user["name"] ?></div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">Username</div>
              <div class="col-8">: <?= $detail_user["username"] ?></div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">E-Mail</div>
              <div class="col-8">: <?= $detail_user["email"] ?></div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">Role</div>
              <div class="col-8">: <?= $detail_user["role"] ?></div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="row">
              <div class="col-4">Tanggal Dibuat</div>
              <div class="col-8">: <?= date('d F Y', strtotime($detail_user["date_created"])); ?></div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </section>

</div>