<div class="page-content">

    <section class="section">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col">
                        <h4 class="card-title pt-2">Detail Peserta - <?= $participant->name; ?></h4>
                    </div>
                    <div class="col">
                        <a href="<?= base_url('participant'); ?>" class='btn btn-primary float-end icon'>
                            <span>Kembali</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <ul class="list-group">
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-4">Nama Lengkap</div>
                            <div class="col-8">: <?= $participant->name; ?></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-4">Alamat Lengkap</div>
                            <div class="col-8">: <?= $participant->address; ?></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-4">Nomor Telepon (WA)</div>
                            <div class="col-8">: <?= $participant->phone; ?></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-4">E-Mail</div>
                            <div class="col-8">: <?= $participant->email; ?></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-4">Level Bahasa</div>
                            <div class="col-8">: <?= $participant->lang_level; ?></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-4">Asal IPK</div>
                            <div class="col-8">: <?= $participant->ipk; ?></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-4">Program</div>
                            <div class="col-8">: <?= $participant->program; ?></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-4">Tanggal Masuk</div>
                            <div class="col-8">: <?= $participant->date_entry; ?></div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>

</div>