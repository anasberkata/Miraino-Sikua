<div class="page-content">

  <section class="section">
    <div class="card">

      <div class="card-header">
        <div class="row">
          <div class="col">
            <h4 class="card-title pt-2">Tambah Peserta CoE</h4>
          </div>
          <div class="col">
            <a href="<?= base_url('coe'); ?>" class='btn btn-primary float-end icon'>
              <span>Kembali</span>
            </a>
          </div>
        </div>
      </div>
      <div class="card-body">

        <form action="<?= base_url('coe/coe_add'); ?>" method="post">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label for="name">Nama Lengkap</label>
                <input type="text" class="form-control" id="name" placeholder="Nama Lengkap" name="name" required>
                <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="date">Tanggal Terbit CoE</label>
                <input type="date" class="form-control" id="date" name="issue_date" required>
              </div>

              <!-- <div class="form-group">
                <label for="program">Program</label>
                <select class="form-select" name="program" required>
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
              </div> -->

              <div class="form-group">
                <label for="program">Program</label>
                <input type="text" name="program" list="program" class="form-control">
                <datalist id="program">
                  <option value="Magang Kontruksi">
                  <option value="Magang Perawat">
                  <option value="Magang Pertanian">
                  <option value="Magang Pengolahan Makanan">
                  <option value="Tg Kontruksi">
                  <option value="Tg Perawat">
                  <option value="Tg Pertanian">
                  <option value="Tg Pengolahan Makanan">
                  <option value="Ryuugakusei">
                  <option value="Engineering">
                </datalist>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="kumiai_nama">Nama Kumiai</label>
                <input type="text" class="form-control" id="kumiai_name" placeholder="Nama Kumiai" name="kumiai_name" required>
                <?= form_error('kumiai_name', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="office_name">Nama Perusahaan</label>
                <input type="text" class="form-control" id="office_name" placeholder="Nama Perusahaan" name="office_name" required>
                <?= form_error('office_name', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="placement">Daerah Penempatan</label>
                <input type="text" class="form-control" id="placement" placeholder="Daerah Penempatan" name="placement" required>
                <?= form_error('placement', '<small class="text-danger pl-3">', '</small>'); ?>
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