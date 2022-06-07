<div class="page-content">

    <section class="section">
        <div class="card">

            <div class="card-header">
                <div class="row">
                    <div class="col">
                        <h4 class="card-title pt-2">Tambah Data Kas</h4>
                    </div>
                    <div class="col">
                        <a href="<?= base_url('petty_cash_journal'); ?>" class='btn btn-primary float-end icon'>
                            <span>Kembali</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body">

                <form action="<?= base_url('petty_cash_journal/petty_cash_journal_add'); ?>" method="post">
                    <div class="row">
                        <div class="col-md">
                            <div class="form-group">
                                <label for="output_type">Rincian</label>
                                <textarea name="details" class="form-control" id="details" rows="3"></textarea>
                            </div>

                            <div class="form-group">
                                <label for="nominal">Nominal (Rp. )</label>
                                <input type="text" class="form-control" id="nominal" placeholder="Nominal" name="nominal" required>
                                <?= form_error('nominal', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>

                            <div class="form-group">
                                <label for="date">Tanggal Pembayaran</label>
                                <input type="date" class="form-control" id="date" name="date_payment" required>
                            </div>

                            <div class="form-group">
                                <button type="submit" class="btn btn-primary w-100">Tambah</button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </section>

</div>