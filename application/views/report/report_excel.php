<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=Data Pengeluaran.xls");
?>

<!DOCTYPE html>
<html>

<head>
  <title>Print</title>

  <!-- Style -->
  <style>
    table {
      width: 100%;
    }

    .thead {
      padding: 20px 10px;
      font-weight: bold;
    }

    table,
    tr,
    td {
      border: 1px solid;
    }

    td {
      padding: 10px;
    }

    td.total {
      font-weight: bold;
      text-align: right;
    }
  </style>
</head>

<body>

  <center>
    <h2>DATA LAPORAN PENGELUARAN PT. MIRAINO HASHI JAYA</h2>
  </center>

  <table>
    <thead>
      <tr>
        <td class="thead">No.</td>
        <td class="thead">Jenis Pengeluaran</td>
        <td class="thead">Tanggal Pembayaran</td>
        <td class="thead">Nominal</td>
      </tr>
    </thead>
    <tbody>
      <?php $i = 1; ?>
      <?php foreach ($report->result() as $re) : ?>
        <tr>
          <td><?= $i; ?></td>
          <td><?= $re->output_type; ?></td>
          <td><?= date('d F Y', strtotime($re->date_payment)); ?></td>
          <td>Rp. <?= number_format($re->nominal, 2, ',', '.'); ?></td>
        </tr>
        <?php $i++; ?>
      <?php endforeach; ?>
      <tr>
        <td colspan="3" class="total">Jumlah</td>
        <td>Rp. <?= number_format($total->total, 2, ',', '.'); ?></td>
      </tr>
    </tbody>
  </table>
</body>

</html>