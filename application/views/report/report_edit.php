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
                                <label for="program">Jenis Pengeluaran</label>
                                <select class="form-select" name="output_type" required>
                                    <option value="<?= $report->output_type; ?>"><?= $report->output_type; ?></option>
                                    <option value="Gaji">Gaji</option>
                                    <option value="Uang Makan">Uang Makan</option>
                                    <option value="Biaya Sewa">Biaya Sewa</option>
                                    <option value="Biaya Listrik">Biaya Listrik
                                    </option>
                                    <option value="Internet">Internet</option>
                                    <option value="Biaya Air">Biaya Air</option>
                                    <option value="ATK">ATK</option>
                                    <option value="Iuran Wajib Lingkungan (RT/Sampah)">Iuran Wajib Lingkungan (RT/Sampah)</option>
                                    <option value="Pantry">Pantry</option>
                                    <option value="Hospitalist">Hospitalist</option>
                                    <option value="Transport Lokal">Transport Lokal</option>
                                    <option value="Service">Service</option>
                                    <option value="Fotocopy">Fotocopy</option>
                                    <option value="Promosi & Brosur">Promosi & Brosur</option>
                                    <option value="Perbaikan">Perbaikan</option>
                                    <option value="Entertaint">Entertaint</option>
                                    <option value="THR">THR</option>
                                </select>
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