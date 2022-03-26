<div class="page-content">

  <section class="section">
    <div class="card">
      <div class="card-header">
        <div class="row">
          <div class="col">
            <h4 class="card-title pt-2">Data User</h4>
          </div>
          <div class="col">
            <a href="<?= base_url('user/user_add'); ?>" class='btn btn-primary float-end icon'>
              <span>Tambah Data</span>
            </a>
          </div>
        </div>
      </div>

      <div class="card-body">

        <?= $this->session->flashdata('message'); ?>

        <table class="table table-striped small" id="table1">
          <thead>
            <tr>
              <th>No.</th>
              <th>Name</th>
              <th>Username</th>
              <th>Email</th>
              <th>Opsi</th>
            </tr>
          </thead>
          <tbody>

            <?php $i = 1; ?>
            <?php foreach ($users as $u) : ?>
              <tr>
                <td><?= $i; ?></td>
                <td><?= $u->name; ?></td>
                <td><?= $u->username; ?></td>
                <td><?= $u->email; ?></td>
                <td>
                  <a href="<?= base_url('user/user_detail/') . $u->id; ?>"><span class="badge bg-success">Detail</span></a>
                  <a href="<?= base_url('user/user_edit/?id=') . $u->id; ?>"><span class="badge bg-warning">Edit</span></a>
                  <a href="" data-bs-toggle="modal" data-bs-target="#danger<?= $u->id ?>"><span class="badge bg-danger">Hapus</span></a>

                  <!-- Modal Hapus -->
                  <div class="modal-danger me-1 mb-1 d-inline-block">
                    <div class="modal fade text-left" id="danger<?= $u->id ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel120" aria-hidden="true">
                      <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
                        <div class="modal-content">


                          <div class="modal-header bg-danger">
                            <h5 class="modal-title white" id="myModalLabel120">Hapus User <?= $u->name; ?></h5>
                            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                              <i data-feather="x"></i>
                            </button>
                          </div>
                          <div class="modal-body">
                            Yakin ingin menghapus data <?= $u->name ?>!
                          </div>
                          <form class="form-horizontal" method="post" action="<?= base_url('user/user_delete') ?>">
                            <div class="modal-footer">
                              <input type="hidden" name="id" value="<?= $u->id; ?>">
                              <button type="button" class="btn btn-light-secondary" data-bs-dismiss="modal" aria-hidden="true">
                                <i class="bx bx-x d-block d-sm-none"></i>
                                <span class="d-none d-sm-block">Batal</span>
                              </button>
                              <button type="submit" class="btn btn-danger ml-1">
                                <i class="bx bx-check d-block d-sm-none"></i>
                                <span class="d-none d-sm-block">Hapus</span>
                              </button>
                            </div>
                          </form>


                        </div>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
              <?php $i++; ?>
            <?php endforeach; ?>

          </tbody>
        </table>
      </div>
    </div>
  </section>

</div>