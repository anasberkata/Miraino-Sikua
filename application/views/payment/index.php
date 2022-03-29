<div class="page-content">

  <section class="section">
    <div class="card">

      <div class="card-header">
        <div class="row">
          <div class="col-12 col-lg-8">
            <h4 class="card-title pt-2">Data Keuangan</h4>
          </div>
          <div class="col-12 col-lg-4">
            <a href="<?= base_url('payment/payment_add'); ?>" class='btn btn-primary icon'>
              <span>Tambah Data</span>
            </a>

            <div class="btn-group w-50 float-end" role="button">
              <a href="<?= base_url('payment/printPDF') ?>" class="btn icon btn-success" target="_blank"><i class="bicon dripicons-print"></i></a>
              <a href="<?= base_url('payment/exportExcel') ?>" class="btn icon btn-info"><i class="icon dripicons-download"></i></a>
            </div>
          </div>
        </div>
      </div>

      <div class="card-body">

        <?= $this->session->flashdata('message'); ?>

        <form action="<?= base_url('payment/payment_search'); ?>" method="post">
          <div class="row">
            <div class="col-lg-5">
              <div class="form-group row align-items-center">
                <div class="col-lg-3 col-3">
                  <label class="col-form-label">Nama</label>
                </div>
                <div class="col-lg-9 col-9">
                  <input type="text" class="form-control" name="name">
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
              <th>Tanggal Pembayaran</th>
              <th>Penanggung Jawab</th>
              <th>Nominal</th>
              <th>Keterangan</th>
              <?php if ($user['role_id'] == 3) : ?>
                <!-- Aksi Hilang -->
              <?php else : ?>
                <th>Opsi</th>
              <?php endif; ?>

            </tr>
          </thead>
          <tbody>
            <?php $i = 1; ?>
            <?php foreach ($payment->result() as $pay) : ?>
              <tr>
                <td><?= $i; ?></td>
                <td><?= $pay->name; ?></td>
                <td><?= $pay->program; ?></td>
                <td><?= date('d F Y', strtotime($pay->date_payment)); ?></td>
                <td><?= $pay->person_responsible; ?></td>
                <td>Rp. <?= number_format($pay->nominal, 2, ',', '.'); ?></td>
                <td><?= $pay->description; ?></td>

                <?php if ($user['role_id'] == 3) : ?>
                  <!-- Aksi Hilang -->
                <?php else : ?>
                  <td>
                    <a href="<?= base_url('payment/payment_edit_page/') . $pay->id ?>"><span class="badge bg-warning">Edit</span></a>
                    <br>
                    <a href="" data-bs-toggle="modal" data-bs-target="#danger<?= $pay->id ?>"><span class="badge bg-danger">Hapus</span></a>

                    <!-- Modal Hapus -->
                    <div class="modal-danger me-1 mb-1 d-inline-block">
                      <div class="modal fade text-left" id="danger<?= $pay->id ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel120" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
                          <div class="modal-content">


                            <div class="modal-header bg-danger">
                              <h5 class="modal-title white" id="myModalLabel120">Hapus Data Keuangan Peserta <?= $pay->name; ?></h5>
                              <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                <i data-feather="x"></i>
                              </button>
                            </div>
                            <div class="modal-body">
                              Yakin ingin menghapus data keuangan peserta <?= $pay->name ?>!
                            </div>
                            <form class="form-horizontal" method="post" action="<?= base_url('payment/payment_delete') ?>">
                              <div class="modal-footer">
                                <input type="hidden" name="id" value="<?= $pay->id; ?>">
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