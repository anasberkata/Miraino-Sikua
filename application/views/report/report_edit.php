<div class="page-content">

    <section class="section">
        <div class="card">

            <div class="card-header">
                <div class="row">
                    <div class="col">
                        <h4 class="card-title pt-2">Edit Data Keuangan - <?= $report->output_type; ?></h4>
                    </div>
                    <div class="col">
                        <a href="<?= base_url('report'); ?>" class='btn btn-primary float-end icon'>
                            <span>Kembali</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body">

                <?= $this->session->flashdata('message'); ?>

                <form action="<?= base_url('report/report_edit'); ?>" method="post">
                    <div class="row">
                        <div class="col-md">
                            <input type="hidden" name="id" value="<?= $report->id; ?>">
                            <div class="form-group">
                                <label for="output_type">Jenis Pengeluaran</label>
                                <input type="text" name="output_type" list="output_type" class="form-control" value="<?= $report->output_type; ?>">
                                <datalist id="output_type">
                                    <option value="Gaji">
                                    <option value="Uang Makan">
                                    <option value="Uang Makan Karyawan">
                                    <option value="Konsumsi">
                                    <option value="Biaya Sewa">
                                    <option value="Biaya Listrik">
                                    <option value="Internet">
                                    <option value="Biaya Air">
                                    <option value="ATK">
                                    <option value="Iuran Wajib Lingkungan (RT/Sampah)">
                                    <option value="Pantry">
                                    <option value="Hospitalist">
                                    <option value="Transport Lokal">
                                    <option value="Transport Luar Negeri">
                                    <option value="Service">
                                    <option value="Maintenance">
                                    <option value="Pengiriman Dokumen">
                                    <option value="Fotocopy">
                                    <option value="Promosi & Brosur">
                                    <option value="Perbaikan">
                                    <option value="Entertaint">
                                    <option value="THR">
                                </datalist>
                            </div>

                            <div class="form-group">
                                <label for="nominal">Nominal (Rp. )</label>
                                <input type="text" class="form-control" id="nominal" placeholder="Nominal" name="nominal" value="<?= number_format($report->nominal, 2, ',', '.'); ?>" required>
                                <?= form_error('nominal', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>

                            <div class="form-group">
                                <label for="date">Tanggal Pembayaran</label>
                                <input type="date" class="form-control" id="date" name="date_payment" value="<?= $report->date_payment; ?>" required>
                            </div>

                            <div class="form-group">
                                <button type="submit" class="btn btn-primary w-100">Edit</button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </section>

</div>