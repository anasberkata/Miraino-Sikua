<div class="page-content">

  <section class="section">
    <div class="card">

      <div class="card-header">
        <div class="row">
          <div class="col-12 col-lg-8">
            <h4 class="card-title pt-2">Data Peserta CoE</h4>
          </div>
          <div class="col-12 col-lg-4">
            <?php if ($user['role_id'] == 3) : ?>
              <!-- Tombol Tambah Hilang -->
            <?php else : ?>
              <a href="<?= base_url('coe/coe_add_page'); ?>" class='btn btn-primary icon'>
                <span>Tambah Data</span>
              </a>
            <?php endif; ?>

            <div class="btn-group w-50 float-end" role="button">
              <a href="<?= base_url('coe/printPDF_search') ?>/?kumiai_name=<?= $_POST['kumiai_name']; ?>" class="btn icon btn-success" target="_blank"><i class="bicon dripicons-print"></i></a>
              <a href="<?= base_url('coe/exportExcel_search') ?>/?kumiai_name=<?= $_POST['kumiai_name']; ?>" class="btn icon btn-info"><i class="icon dripicons-download"></i></a>
            </div>
          </div>
        </div>
      </div>

      <div class="card-body">

        <?= $this->session->flashdata('message'); ?>

        <form action="<?= base_url('coe/coe_search'); ?>" method="post">
          <div class="row">
            <div class="col-lg-6">
              <div class="form-group row align-items-center">
                <div class="col-lg-4 col-4">
                  <label class="col-form-label">Nama Kumiai</label>
                </div>
                <div class="col-lg-8 col-8">
                  <input type="text" class="form-control" name="kumiai_name" value="<?= $_POST['kumiai_name'] ?>">
                </div>
              </div>
            </div>

            <div class="col-lg-1">
              <div class="form-group align-items-center">
                <button type="submit" class="btn btn-primary w-100" name="submit"><i class="icon dripicons-search"></i></button>
              </div>
            </div>
          </div>
        </form>

        <table class="table table-striped small" id="table1">
          <thead>
            <tr>
              <th>No.</th>
              <th>Name</th>
              <th>Program</th>
              <th>Nama Kumiai</th>
              <th>Opsi</th>
            </tr>
          </thead>
          <tbody>

            <?php $i = 1; ?>
            <?php foreach ($coe->result() as $prt) : ?>
              <tr>
                <td><?= $i; ?></td>
                <td><?= $prt->name; ?></td>
                <td><?= $prt->program; ?></td>
                <td><?= $prt->kumiai_name; ?></td>
                <td>
                  <a href="<?= base_url('coe/coe_detail/') . $prt->id ?>"><span class="badge bg-success">Detail</span></a>
                  <?php if ($user['role_id'] == 3) : ?>
                    <!-- Aksi Hilang -->
                  <?php else : ?>
                    <a href="<?= base_url('coe/coe_edit_page/') . $prt->id ?>"><span class="badge bg-warning">Edit</span></a>
                    <a href="" data-bs-toggle="modal" data-bs-target="#danger<?= $prt->id ?>"><span class="badge bg-danger">Hapus</span></a>

                    <!-- Modal Hapus -->
                    <div class="modal-danger me-1 mb-1 d-inline-block">
                      <div class="modal fade text-left" id="danger<?= $prt->id ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel120" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
                          <div class="modal-content">


                            <div class="modal-header bg-danger">
                              <h5 class="modal-title white" id="myModalLabel120">Hapus Peserta <?= $prt->name; ?></h5>
                              <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                <i data-feather="x"></i>
                              </button>
                            </div>
                            <div class="modal-body">
                              Yakin ingin menghapus data peserta <?= $prt->name ?>!
                            </div>
                            <form class="form-horizontal" method="post" action="<?= base_url('coe/coe_delete') ?>">
                              <div class="modal-footer">
                                <input type="hidden" name="id" value="<?= $prt->id; ?>">
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
                  <?php endif; ?>
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