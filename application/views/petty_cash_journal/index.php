<div class="page-content">

    <section class="section">
        <div class="card">

            <div class="card-header">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <h4 class="card-title pt-2">Data Jurnal Kas Kecil</h4>
                    </div>
                    <div class="col-12 col-lg-4">
                        <a href="<?= base_url('petty_cash_journal/petty_cash_journal_add'); ?>" class='btn btn-primary icon'>
                            <span>Tambah Data</span>
                        </a>

                        <div class="btn-group float-end w-50" role="button">
                            <a href="<?= base_url('petty_cash_journal/printPDF') ?>" class="btn icon btn-success" target="_blank"><i class="bicon dripicons-print"></i></a>
                            <a href="<?= base_url('petty_cash_journal/exportExcel') ?>" class="btn icon btn-info"><i class="icon dripicons-download"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card-body">

                <?= $this->session->flashdata('message'); ?>

                <form action="<?= base_url('petty_cash_journal/petty_cash_journal_search'); ?>" method="post">
                    <div class=" row">
                        <div class="col-lg-5">
                            <div class="form-group row align-items-center">
                                <div class="col-lg-3 col-3">
                                    <label class="col-form-label" for="month">Bulan</label>
                                </div>
                                <div class="col-lg-9 col-9">
                                    <select class="form-select" id="month" name="month">
                                        <option value="">Pilih Bulan</option>
                                        <option value="01">Januari</option>
                                        <option value="02">Februari</option>
                                        <option value="03">Maret</option>
                                        <option value="04">April</option>
                                        <option value="05">Mei</option>
                                        <option value="06">Juni</option>
                                        <option value="07">Juli</option>
                                        <option value="08">Agustus</option>
                                        <option value="09">September</option>
                                        <option value="10">Oktober</option>
                                        <option value="11">November</option>
                                        <option value="12">Desember</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-5">
                            <div class="form-group row align-items-center">
                                <div class="col-lg-3 col-3">
                                    <label class="col-form-label" for="year">Tahun</label>
                                </div>
                                <div class="col-lg-9 col-9">
                                    <input type="number" class="form-control" id="year" name="year" placeholder="2015" min="2015" max="2100">
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-2">
                            <div class="form-group align-items-center pb-2 h-100">
                                <button type="submit" class="btn btn-primary w-100" name="submit"><i class="icon dripicons-search"></i></button>
                            </div>
                        </div>
                    </div>
                </form>


                <table class="table table-striped small" id="table1">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Rincian</th>
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
                        <?php foreach ($petty_cash_journal->result() as $pcj) : ?>
                            <tr>
                                <td><?= $i; ?></td>
                                <td><?= $pcj->details; ?></td>
                                <td>Rp. <?= number_format($pcj->nominal, 2, ',', '.'); ?></td>
                                <!-- <td><?= date('d F Y', strtotime($pcj->date_payment)); ?></td> -->
                                <td><?= date('F Y', strtotime($pcj->date_payment)); ?></td>

                                <?php if ($user['role_id'] == 3) : ?>
                                    <!-- Aksi Hilang -->
                                <?php else : ?>
                                    <td>
                                        <a href="<?= base_url('petty_cash_journal/petty_cash_journal_edit_page/') . $pcj->id ?>"><span class="badge bg-warning">Edit</span></a>
                                        <br>
                                        <a href="" data-bs-toggle="modal" data-bs-target="#danger<?= $pcj->id ?>"><span class="badge bg-danger">Hapus</span></a>

                                        <!-- Modal Hapus -->
                                        <div class="modal-danger me-1 mb-1 d-inline-block">
                                            <div class="modal fade text-left" id="danger<?= $pcj->id ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel120" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
                                                    <div class="modal-content">


                                                        <div class="modal-header bg-danger">
                                                            <h5 class="modal-title white" id="myModalLabel120">Hapus Data Jurnal Kas <?= $pcj->output_type; ?></h5>
                                                            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                                                <i data-feather="x"></i>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            Yakin ingin menghapus data pengeluaran <?= $pcj->output_type ?>!
                                                        </div>
                                                        <form class="form-horizontal" method="post" action="<?= base_url('petty_cash_journal/petty_cash_journal_delete') ?>">
                                                            <div class="modal-footer">
                                                                <input type="hidden" name="id" value="<?= $pcj->id; ?>">
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