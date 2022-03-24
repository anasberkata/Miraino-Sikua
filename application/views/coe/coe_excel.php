<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=Data Peserta CoE.xls");
?>

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

  <table cellpadding="10" width="100%">
    <tr>
      <td></td>
      <td width="15%">
        <img src="<?= base_url('assets/'); ?>images/logo/Logo MHJ Web.png" class="logo-print m-auto" width="100">
      </td>
      <td width="50%" style="text-align:center; padding: 0 20px;" colspan="4">
        <h2 class="card-title pt-2 title-print">PT. MIRAINO HASHI JAYA</h2>
        <p>Alamat : Jl. Almuhajirin Raya Ruko No.1, Rt.001/Rw.005 Kel. Satria Jaya, Kec. Tambun Utara Kode Pos 17510
          <br>Telp : 021-29088491, +6281327417947, +6281380229688
          <br>Website : www.mirainohashi.co.id
        </p>
      </td>
      <td width="25%"></td>
    </tr>
  </table>

  <hr>

  <h4 style="text-align: center;">DATA PESERTA COE</h4>

  <table class="table-main border" cellpadding="10" cellspacing="0" border="2" width="100%">
    <thead>
      <tr style="background-color:lightcyan;">
        <td class="bold border">No.</td>
        <td class="bold border">Nama</td>
        <td class="bold border">Tanggal Terbit CoE</td>
        <td class="bold border">Program</td>
        <td class="bold border">Nama Kumiai</td>
        <td class="bold border">Nama Perusahaan</td>
        <td class="bold border">Penempatan</td>
      </tr>
    </thead>
    <tbody>
      <?php $i = 1; ?>
      <?php foreach ($coe->result() as $c) : ?>
        <tr>
          <td class="border"><?= $i; ?></td>
          <td class="border"><?= $c->name; ?></td>
          <td class="border"><?= date('d F Y', strtotime($c->issue_date)); ?></td>
          <td class="border"><?= $c->program; ?></td>
          <td class="border"><?= $c->kumiai_name; ?></td>
          <td class="border"><?= $c->office_name; ?></td>
          <td class="border"><?= $c->placement; ?></td>
        </tr>
        <?php $i++; ?>
      <?php endforeach; ?>
    </tbody>
  </table>

  <br>

  <table style="width: 100%;">
    <tr>
      <td>
      </td>
      <td style="text-align: center;" width="25%">
        <br>
        Pembuat
        <br><br><br><br><br>
        <p>
          <b>NURJANNAH</b>
          <br>Manager Keuangan
        </p>
      </td>
      <td></td>
      <td></td>
      <td></td>
      <td width="25%" style="text-align: center;">
        Bekasi, <?php echo date("d F Y"); ?>
        <br>
        Mengetahui,
        <br><br><br><br><br>
        <p>
          <b>MURDIYONO JAYA</b>
          <br>Direktur Utama
        </p>

      </td>
    </tr>
  </table>

</body>

</html>