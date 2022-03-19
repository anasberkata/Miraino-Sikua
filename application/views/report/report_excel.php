<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=Data Pengeluaran.xls");
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
    }
  </style>

  <title>Print</title>
  <link rel="shortcut icon" href="<?= base_url('assets/'); ?>images/favicon.png" type="image/x-icon">
</head>

<body>

  <table cellpadding="10">
    <tr>
      <td>
        <img src="<?= base_url('assets/'); ?>images/logo/Logo MHJ Web.png" class="logo-print m-auto" width="100">
      </td>
      <td>
        <h4 class="card-title pt-2 title-print">Data Pengeluaran - PT Miraino Hashi Jaya</h4>
        <p>Alamat : Jl. Almuhajirin Raya Ruko No.1, Rt.001/Rw.005 Ds. Satria Jaya, Kec. Tambun Utara Kode pos 17510</p>
        <p>E-Mail : lpkmirainohashijaya@gmail.com || Phone : +62 815-1307-1589</p>
      </td>
    </tr>
  </table>

  <hr>

  <table class="table-main border" cellpadding="10" cellspacing="0">
    <thead>
      <tr>
        <td class="bold border">No.</td>
        <td class="bold border">Jenis Pengeluaran</td>
        <td class="bold border">Tanggal Pembayaran</td>
        <td class="bold border">Nominal</td>
      </tr>
    </thead>
    <tbody>
      <?php $i = 1; ?>
      <?php foreach ($report->result() as $re) : ?>
        <tr>
          <td class="border"><?= $i; ?></td>
          <td class="border"><?= $re->output_type; ?></td>
          <td class="border"><?= date('d F Y', strtotime($re->date_payment)); ?></td>
          <td class="border">Rp. <?= number_format($re->nominal, 2, ',', '.'); ?></td>
        </tr>
        <?php $i++; ?>
      <?php endforeach; ?>
      <tr>
        <td colspan="3" class="bold border">Jumlah</td>
        <td class="bold border">Rp. <?= number_format($total->total, 2, ',', '.'); ?></td>
      </tr>
    </tbody>
  </table>

  <br>

  <table style="width: 100%;">
    <tr>
      <td width="25%"></td>
      <td width="25%"></td>
      <td width="25%"></td>
      <td width="25%">Penanggung Jawab
        <br><br><br><br><br>
        ______________________
      </td>
    </tr>
  </table>

</body>

</html>