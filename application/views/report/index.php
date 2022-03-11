<div class="page-content">

  <section class="section">
    <div class="card">

      <div class="card-header">
        <div class="row">
          <div class="col">
            <h4 class="card-title pt-2">Data Pengeluaran</h4>
          </div>
          <div class="col">
            <?php if ($user['role_id'] == 3) : ?>
              <!-- Tombol Tambah Hilang -->
            <?php else : ?>
              <a href="<?= base_url('report/report_add_page'); ?>" class='btn btn-primary float-end icon'>
                <span>Tambah Data</span>
              </a>
            <?php endif; ?>
          </div>
        </div>
      </div>

      <div class="card-body">

        <?= $this->session->flashdata('message'); ?>

        <div class="row">
          <div class="col-lg-10">
            <form action="" method="post">
              <div class=" row">
                <div class="col-lg-5">
                  <div class="form-group row align-items-center">
                    <div class="col-lg-3 col-3">
                      <label class="col-form-label">Tanggal</label>
                    </div>
                    <div class="col-lg-9 col-9">
                      <input type="date" class="form-control" name="tgl_awal">
                    </div>
                  </div>
                </div>

                <div class="col-lg-5">
                  <div class="form-group row align-items-center">
                    <div class="col-lg-3 col-3">
                      <label class="col-form-label">Sampai</label>
                    </div>
                    <div class="col-lg-9 col-9">
                      <input type="date" class="form-control" name="tgl_akhir">
                    </div>
                  </div>
                </div>

                <div class="col-lg-2">
                  <div class="form-group align-items-center">
                    <button type="submit" class="btn btn-primary w-100" name="submit"><i class="icon dripicons-search"></i></button>
                  </div>
                </div>
              </div>
            </form>
          </div>

          <div class="col-lg-2">
            <div class="btn-group w-100" role="button">
              <a href="" class="btn icon btn-success"><i class="bicon dripicons-print"></i></a>
              <a href="" class="btn icon btn-info"><i class="icon dripicons-download"></i></a>
            </div>
          </div>
        </div>

        <table class="table table-striped small" id="table1">
          <thead>
            <tr>
              <th>No.</th>
              <th>Jenis Pengeluaran</th>
              <th>Nominal</th>
              <th>Tanggal Pembayaran</th>
              <?php if ($user['role_id'] == 3) : ?>
                <!-- Aksi Hilang -->
              <?php else : ?>
                <th>Opsi</th>
              <?php endif; ?>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1; ?>
            <?php foreach ($report->result() as $re) : ?>
              <tr>
                <td><?= $i; ?></td>
                <td><?= $re->output_type; ?></td>
                <td>Rp. <?= number_format($re->nominal, 2, ',', '.'); ?></td>
                <td><?= $re->date_payment; ?></td>
                <?php if ($user['role_id'] == 3) : ?>
                  <!-- Aksi Hilang -->
                <?php else : ?>
                  <td>
                    <a href="<?= base_url('report/report_edit_page/') . $re->id ?>"><span class="badge bg-warning">Edit</span></a>
                    <br>
                    <a href="" data-bs-toggle="modal" data-bs-target="#danger<?= $re->id ?>"><span class="badge bg-danger">Hapus</span></a>

                    <!-- Modal Hapus -->
                    <div class="modal-danger me-1 mb-1 d-inline-block">
                      <div class="modal fade text-left" id="danger<?= $re->id ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel120" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
                          <div class="modal-content">


                            <div class="modal-header bg-danger">
                              <h5 class="modal-title white" id="myModalLabel120">Hapus Data Keuangan Peserta <?= $re->output_type; ?></h5>
                              <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                <i data-feather="x"></i>
                              </button>
                            </div>
                            <div class="modal-body">
                              Yakin ingin menghapus data pengeluaran <?= $re->output_type ?>!
                            </div>
                            <form class="form-horizontal" method="post" action="<?= base_url('report/report_delete') ?>">
                              <div class="modal-footer">
                                <input type="hidden" name="id" value="<?= $re->id; ?>">
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
                <?php endif; ?>
              </tr>
              <?php $i++; ?>
            <?php endforeach; ?>
          </tbody>
        </table>
      </div>
    </div>
  </section>

</div>