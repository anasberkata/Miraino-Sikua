<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Print</title>

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="<?= base_url('assets/'); ?>css/bootstrap.css">

  <!-- Table -->
  <link rel="stylesheet" href="<?= base_url('assets/'); ?>vendors/simple-datatables/style.css">

  <link rel="stylesheet" href="<?= base_url('assets/'); ?>vendors/bootstrap-icons/bootstrap-icons.css">
  <link rel="stylesheet" href="<?= base_url('assets/'); ?>css/app.css">
  <link rel="stylesheet" href="<?= base_url('assets/'); ?>css/main.css">

  <!-- Style -->
  <style>
    .logo-print {
      position: relative;
      width: 10%;
      float: left;
    }

    h4.title-print {
      position: relative;
      width: 90%;
      float: left;
    }

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
      border: 2px solid;
    }

    td {
      padding: 10px;
    }

    td.total {
      font-weight: bold;
      text-align: right;
    }
  </style>

  <link rel="shortcut icon" href="<?= base_url('assets/'); ?>images/favicon.png" type="image/x-icon">
</head>

<body>
  <div class="page-content">

    <section class="section">
      <div class="card">

        <div class="card-header">
          <div class="row">
            <div class="col-md-2">
              <img src="<?= base_url('assets/'); ?>images/logo/Logo MHJ Web.png" class="logo-print">
            </div>
            <div class="col-md-10">
              <h4 class="card-title pt-2 title-print">Data Pengeluaran - PT Miraino Hashi Jaya</h4>
            </div>
          </div>
        </div>

        <div class="card-body">
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
        </div>
      </div>
    </section>

  </div>


  <script>
    window.print();
  </script>

  <script src="<?= base_url('assets/'); ?>js/bootstrap.bundle.min.js"></script>
  <script src="<?= base_url('assets/'); ?>js/pages/dashboard.js"></script>
  <script src="<?= base_url('assets/'); ?>js/mazer.js"></script>
</body>

</html>