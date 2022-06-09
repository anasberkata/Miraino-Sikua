<div class="page-content">

  <section class="section">
    <div class="card">

      <div class="card-header">
        <div class="row">
          <div class="col">
            <h4 class="card-title pt-2">Tambah Peserta</h4>
          </div>
          <div class="col">
            <a href="<?= base_url('participant'); ?>" class='btn btn-primary float-end icon'>
              <span>Kembali</span>
            </a>
          </div>
        </div>
      </div>
      <div class="card-body">

        <form action="<?= base_url('participant/participant_add'); ?>" method="post">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label for="nik">NIK (Nomor Induk Kependudukan)</label>
                <input type="number" class="form-control" id="nik" placeholder="Nomor Induk Kependudukan" name="nik" required>
                <?= form_error('nik', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="name">Nama Lengkap</label>
                <input type="text" class="form-control" id="name" placeholder="Nama Lengkap" name="name" required>
                <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="phone">Nomor Telepon (WA)</label>
                <input type="text" class="form-control" id="phone" placeholder="Nomor Telepon" name="phone" required>
                <?= form_error('phone', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="email">E-Mail</label>
                <input type="email" class="form-control" id="email" placeholder="Alamat Email" name="email" required>
                <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>
            </div>

            <div class="col-md-6">
              <div class="form-group">
                <label for="lang_level">Level Bahasa</label>
                <input type="text" class="form-control" id="lang_level" placeholder="Level Bahasa" name="lang_level" required>
                <?= form_error('lang_level', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <label for="ipk">Asal IPK</label>
                <input type="text" class="form-control" id="ipk" placeholder="Asal IPK" name="ipk" required>
                <?= form_error('ipk', '<small class="text-danger pl-3">', '</small>'); ?>
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

              <div class="form-group">
                <label for="date">Tanggal Masuk</label>
                <input type="date" class="form-control" id="date" name="date_entry" required>
              </div>
            </div>

            <div class="col-md-12">
              <div class="form-group">
                <label for="address">Alamat</label>
                <textarea class="form-control" id="address" rows="3" name="address"></textarea>
                <?= form_error('address', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>

              <div class="form-group">
                <button type="submit" class="btn btn-primary w-100 mt-3">Tambah</button>
              </div>
            </div>
          </div>
        </form>

      </div>
    </div>
  </section>

</div>