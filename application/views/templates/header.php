<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?= $title; ?></title>

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="<?= base_url('assets/'); ?>css/bootstrap.css">

  <!-- icon -->
  <link rel="stylesheet" href="<?= base_url('assets/'); ?>vendors/iconly/bold.css">
  <link rel="stylesheet" href="<?= base_url('assets/'); ?>vendors/dripicons/webfont.css">
  <link rel="stylesheet" href="<?= base_url('assets/'); ?>css/pages/dripicons.css">

  <!-- Table -->
  <link rel="stylesheet" href="<?= base_url('assets/'); ?>vendors/simple-datatables/style.css">

  <link rel="stylesheet" href="<?= base_url('assets/'); ?>vendors/perfect-scrollbar/perfect-scrollbar.css">
  <link rel="stylesheet" href="<?= base_url('assets/'); ?>vendors/bootstrap-icons/bootstrap-icons.css">
  <link rel="stylesheet" href="<?= base_url('assets/'); ?>css/app.css">
  <link rel="stylesheet" href="<?= base_url('assets/'); ?>css/main.css">

  <link rel="shortcut icon" href="<?= base_url('assets/'); ?>images/favicon.png" type="image/x-icon">
</head>

<body>
  <div id="app">
    <div id="main">
      <header class="mb-3">
        <a href="#" class="burger-btn d-block d-xl-none">
          <i class="bi bi-justify fs-3"></i>
        </a>
      </header>

      <div class="page-heading">
        <div class="row">
          <div class="col">
            <h3><?= $title; ?></h3>
          </div>
          <div class="col">
            <a href="<?= base_url('auth/logout'); ?>" class='btn btn-success float-end icon'>
              <i class="icon dripicons-power"></i> <span>Logout</span>
            </a>
          </div>
        </div>
      </div>