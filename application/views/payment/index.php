<div class="page-content">

  <section class="section">
    <div class="card">

      <div class="card-header">
        <div class="row">
          <div class="col">
            <h4 class="card-title pt-2">Data Keuangan</h4>
          </div>
          <div class="col">
            <?php if ($user['role_id'] == 3) : ?>
              <!-- Tombol Tambah Hilang -->
            <?php else : ?>
              <a href="<?= base_url('payment/payment_add_page'); ?>" class='btn btn-primary float-end icon'>
                <span>Tambah Data</span>
              </a>
            <?php endif; ?>
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
                <td><?= $pay->date_payment; ?></td>
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