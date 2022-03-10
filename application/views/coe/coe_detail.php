<div class="page-content">

    <section class="section">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col">
                        <h4 class="card-title pt-2">Detail Peserta - <?= $coe->name; ?></h4>
                    </div>
                    <div class="col">
                        <a href="<?= base_url('super/coe'); ?>" class='btn btn-primary float-end icon'>
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
                            <div class="col-8">: <?= $coe->name; ?></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-4">Tanggal Terbit CoE</div>
                            <div class="col-8">: <?= $coe->issue_date; ?></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-4">Program</div>
                            <div class="col-8">: <?= $coe->program; ?></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-4">Nama Kumiai</div>
                            <div class="col-8">: <?= $coe->kumiai_name; ?></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-4">Nama Perusahaan</div>
                            <div class="col-8">: <?= $coe->office_name; ?></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-4">Penempatan</div>
                            <div class="col-8">: <?= $coe->placement; ?></div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>

</div>