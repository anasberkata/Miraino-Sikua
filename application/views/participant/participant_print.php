<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<?= base_url('assets/'); ?>css/print.css">
    <link rel="shortcut icon" href="<?= base_url('assets/'); ?>images/favicon.png" type="image/x-icon">
    <title>Print</title>
</head>

<body>
    <!-- HEADER -->
    <table cellpadding="10" width="100%">
        <tr>
            <td width="10%"></td>
            <td width="15%"><img src="<?= base_url('assets/'); ?>images/logo/logo-miraino-kotak.jpeg" width="100px" class="logo"></td>
            <td width="50%" style="text-align: center;">
                <!-- <h2 class="head-title"><b>PT. MIRAINO HASHI JAYA</b></h2> -->
                <img src="<?= base_url('assets/'); ?>images/head-text.png" width="300px" style="margin-bottom:15px">
                <p class="head-desc">Alamat : Jl. Almuhajirin Raya Ruko No.1, Rt.001/Rw.005
                    <br>Kel. Satria Jaya, Kec. Tambun Utara, Kab. Bekasi Kode Pos 17510
                    <br>Telp : 021-29088491, +6281327417947, +6281380229688
                    <br>Website : www.mirainohashi.co.id
                </p>
            </td>
            <td width="25%"></td>
        </tr>
    </table>
    <!-- END HEADER -->

    <table class="devider">
        <tr class="devider">
            <td class="devider">
            </td>
        </tr>
    </table>

    <h2 class="head-table">DATA SISWA SISWI PT. MIRAINO HASHI JAYA</h2>

    <table class="table-main" cellpadding="10" cellspacing="0">

        <tr class="head-row">
            <td>N0.</td>
            <td>NAMA</td>
            <td>ALAMAT</td>
            <td>TELEPON (WA)</td>
            <td>EMAIL</td>
            <td>LEVEL BAHASA</td>
            <td>ASAL IPK</td>
            <td>PROGRAM</td>
            <td>TANGGAL MASUK</td>
        </tr>

        <?php $i = 1; ?>
        <?php foreach ($participant->result() as $p) : ?>
            <tr>
                <td><?= $i; ?></td>
                <td class="text-left"><?= $p->name; ?></td>
                <td><?= $p->address; ?></td>
                <td><?= $p->phone; ?></td>
                <td><?= $p->email; ?></td>
                <td><?= $p->lang_level; ?></td>
                <td><?= $p->ipk; ?></td>
                <td><?= $p->program; ?></td>
                <td><?= date('d / m / Y', strtotime($p->date_entry)); ?></td>
            </tr>
            <?php $i++; ?>
        <?php endforeach; ?>

        <tr class="foot-row">
            <td colspan="8">JUMLAH SISWA</td>
            <td><?= $count_prt; ?> SISWA</td>
        </tr>

    </table>


    <br>

    <table style="width: 100%;">
        <tr>
            <td width="25%" style="text-align: center;">
                <br><br>
                Pembuat
                <br><br><br><br><br><br><br>
                <b><u>NURJANNAH</u></b>
                <p>Direktur</p>
            </td>
            <td width="50%"></td>
            <td width="25%" style="text-align: center;">
                Bekasi, <?php echo date("d F Y"); ?>
                <br>
                Mengetahui,
                <br>
                LPK PT. Miraino Hashi Jaya
                <br><br><br><br><br><br><br>
                <b><u>MURDIYONO JAYA</u></b>
                <p>Direktur Utama</p>
            </td>
        </tr>
    </table>

</body>

</html>