<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">

  <style>
    .table-main {
      width: 100%;
    }

    .border {
      border: 1px solid black;
    }

    thead {
      font-weight: bold;
    }

    .bold {
      font-weight: bold;
    }

    .thead {
      padding: 20px 10px;
    }

    hr {
      margin: 20px 0px;
      border-top: 3px double #000000;
    }
  </style>

  <title>Print</title>
  <link rel="shortcut icon" href="<?= base_url('assets/'); ?>images/favicon.png" type="image/x-icon">
</head>

<body>

  <table cellpadding="10">
    <tr>
      <td width="10%"></td>
      <td width="15%">
        <img src="<?= base_url('assets/'); ?>images/logo/Logo MHJ Web.png" class="logo-print m-auto" width="100">
      </td>
      <td width="50%" style="text-align:center;">
        <h2 class="card-title pt-2 title-print">PT. MIRAINO HASHI JAYA</h2>
        <p>Alamat : Jl. Almuhajirin Raya Ruko No.1, Rt.001/Rw.005 Kel. Satria Jaya, Kec. Tambun Utara Kode Pos 17510</p>
        <p>Telp : 021-29088491, +6281327417947, +6281380229688</p>
        <p>Website : www.mirainohashi.co.id</p>
      </td>
      <td width="25%">
      </td>
    </tr>
  </table>

  <hr>

  <h4 style="text-align: center;">JURNAL KEUANGAN</h4>

  <table class="table-main border" cellpadding="10" cellspacing="0">
    <thead>
      <tr style="background-color:lightcyan;">
        <td class="bold border">No.</td>
        <td class="bold border">Nama</td>
        <td class="bold border">Program</td>
        <td class="bold border">Tanggal Pembayaran</td>
        <td class="bold border">Nominal</td>
        <td class="bold border">Keterangan</td>
        <td class="bold border">Penanggung Jawab</td>
      </tr>
    </thead>
    <tbody>
      <?php $i = 1; ?>
      <?php foreach ($payment->result() as $p) : ?>
        <tr>
          <td class="border"><?= $i; ?></td>
          <td class="border"><?= $p->name; ?></td>
          <td class="border"><?= $p->program; ?></td>
          <td class="border"><?= $p->description; ?></td>
          <td class="border"><?= $p->person_responsible; ?></td>
          <td class="border"><?= date('d F Y', strtotime($p->date_payment)); ?></td>
          <td class="border">Rp. <?= number_format($p->nominal, 2, ',', '.'); ?></td>
        </tr>
        <?php $i++; ?>
      <?php endforeach; ?>
      <tr style="background-color: lightcyan;">
        <td colspan="6" class="bold border">Jumlah</td>
        <td class="bold border">Rp. <?= number_format($total->total, 2, ',', '.'); ?></td>
      </tr>
    </tbody>
  </table>

  <br>

  <table style="width: 100%;">
    <tr>
      <td width="25%" style="text-align: center;">
        <br>
        Pembuat
        <br><br><br><br><br><br><br>
        <b>NURJANNAH</b>
        <p>Manager Keuangan</p>
      </td>
      <td width="50%"></td>
      <td width="25%" style="text-align: center;">
        Bekasi, <?php echo date("d F Y"); ?>
        <br>
        Mengetahui,
        <br><br><br><br><br><br><br>
        <b>MURDIYONO JAYA</b>
        <p>Direktur Utama</p>
      </td>
    </tr>
  </table>

</body>

</html>