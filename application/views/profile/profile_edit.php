<div class="page-content">

  <section class="section">
    <div class="card">

      <div class="card-header">
        <div class="row">
          <div class="col">
            <h4 class="card-title pt-2">Edit User - <?= $user["name"]; ?></h4>
          </div>
          <div class="col">
            <a href="<?= base_url('profile'); ?>" class='btn btn-primary float-end icon'>
              <span>Kembali</span>
            </a>
          </div>
        </div>
      </div>
      <div class="card-body">

        <?= $this->session->flashdata('message'); ?>

        <form action="<?= base_url('profile/profile_edit'); ?>" method="post">
          <div class="row">
            <div class="col-md">
              <input type="hidden" name="id" value="<?= $user["id"]; ?>">
              <div class="form-group">
                <label for="name">Nama Lengkap</label>
                <input type="text" class="form-control" id="name" placeholder="Nama Lengkap" name="name" value="<?= $user["name"]; ?>">
                <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="username">username</label>
                <input type="text" class="form-control" id="username" placeholder="Username" name="username" value="<?= $user["username"]; ?>">
                <?= form_error('username', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>
              <div class="form-group">
                <label for="email">Alamat E-Mail</label>
                <input type="email" class="form-control" id="email" placeholder="Alamat E-Mail" name="email" value="<?= $user["email"]; ?>">
                <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
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