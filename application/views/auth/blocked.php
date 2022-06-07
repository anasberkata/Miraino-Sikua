<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pages Block</title>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/css/bootstrap.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/css/app.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/css/pages/error.css">
</head>

<body>
    <div id="error">
        <div class="error-page container">
            <div class="row justify-content-center">
                <div class="col-md-6 col-12">
                    <img class="img-error" src="<?= base_url() ?>assets/images/samples/error-500.png" alt="Not Found">
                    <div class="text-center">
                        <!-- <h3 class="error-title">Halaman tidak bisa di akses!</h3>
                    <p class="fs-5 text-gray-600">Maaf sepertinya anda tidak diijinkan untuk mengakses halaman ini. Terima Kasih</p> -->
                        <h3>Halaman tidak bisa di akses!</h3>
                        <p class="text-gray-600">Maaf sepertinya anda tidak diijinkan untuk mengakses halaman ini. Terima Kasih</p>
                        <a href="<?= base_url(); ?>admin" class="btn btn-lg btn-outline-primary mt-3">Kembali ke halaman utama</a>
                    </div>
                </div>
            </div>

        </div>


    </div>
</body>

</html>