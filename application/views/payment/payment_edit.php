<div class="page-content">

    <section class="section">
        <div class="card">

            <div class="card-header">
                <div class="row">
                    <div class="col">
                        <h4 class="card-title pt-2">Edit Data Keuangan - <?= $payment->name; ?></h4>
                    </div>
                    <div class="col">
                        <a href="<?= base_url('payment'); ?>" class='btn btn-primary float-end icon'>
                            <span>Kembali</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body">

                <?= $this->session->flashdata('message'); ?>

                <form action="<?= base_url('payment/payment_edit'); ?>" method="post">
                    <div class="row">
                        <div class="col-md-6">
                            <input type="hidden" name="id" value="<?= $payment->id; ?>">
                            <div class="form-group">
                                <label for="name">Nama Lengkap</label>
                                <input type="text" class="form-control" id="name" placeholder="Nama Lengkap" name="name" value="<?= $payment->name; ?>" required>
                                <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>

                            <div class="form-group">
                                <label for="program">Program</label>
                                <select class="form-select" name="program" required>
                                    <option value="<?= $payment->program; ?>"><?= $payment->program; ?></option>
                                    <option value="Magang Kontruksi">Magang Kontruksi</option>
                                    <option value="Magang Perawat">Magang Perawat</option>
                                    <option value="Magang Pertanian">Magang Pertanian</option>
                                    <option value="Magang Pengolahan Makanan">Magang Pengolahan Makanan
                                    </option>
                                    <option value="Tg Kontruksi">Tg Kontruksi</option>
                                    <option value="Tg Perawat">Tg Perawat</option>
                                    <option value="Tg Pertanian">Tg Pertanian</option>
                                    <option value="Tg Pengolahan Makanan">Tg Pengolahan Makanan</option>
                                    <option value="Ryuugakusei">Ryuugakusei</option>
                                    <option value="Engineering">Engineering</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="date">Tanggal Pembayaran</label>
                                <input type="date" class="form-control" id="date" name="date_payment" value="<?= $payment->date_payment; ?>" required>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="person_responsible">Penanggung Jawab</label>
                                <input type="text" class="form-control" id="person_responsible" placeholder="Penanggung Jawab" name="person_responsible" value="<?= $payment->person_responsible; ?>" required>
                                <?= form_error('person_responsible', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>

                            <div class="form-group">
                                <label for="nominal">Nominal (Rp.)</label>
                                <input type="text" class="form-control" id="nominal" placeholder="Nominal" name="nominal" value="<?= number_format($payment->nominal, 2, ',', '.'); ?>" required>
                                <?= form_error('nominal', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>

                            <div class="form-group">
                                <label for="description">Keterangan</label>
                                <input type="text" class="form-control" id="description" placeholder="Keterangan" name="description" value="<?= $payment->description; ?>" required>
                                <?= form_error('description', '<small class="text-danger pl-3">', '</small>'); ?>
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