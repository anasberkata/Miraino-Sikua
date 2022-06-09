<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=Data Peserta.xls");
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

        .card-title {
            font-family: sans-serif;
            font-weight: bold;
        }

        .bold {
            font-weight: bold;
        }

        .font-italic {
            font-style: italic;
        }

        thead {
            font-weight: bold;
            padding: 20px 10px;
            text-align: center;
            vertical-align: middle;
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
                <img src="<?= base_url('assets/'); ?>images/logo/logo-miraino-kotak.jpeg" class="logo-print m-auto" width="80">
            </td>
            <td width="50%" style="text-align:center;" colspan="6">
                <h2 class="card-title pt-2 title-print">PT. MIRAINO HASHI JAYA</h2>
                <p>Alamat : Jl. Almuhajirin Raya Ruko No.1, Rt.001/Rw.005 Kel. Satria Jaya, Kec. Tambun Utara Kode Pos 17510
                    <br>
                    Telp : 021-29088491, +6281327417947, +6281380229688
                    <br>
                    Website : www.mirainohashi.co.id
                </p>
            </td>
            <td width="25%">
            </td>
        </tr>
    </table>

    <hr>

    <h4 style="text-align: center;">DATA SISWA SISWI PT. MIRAINO HASHI JAYA</h4>

    <table class="table-main border" cellpadding="10" cellspacing="0" border="2">
        <thead>
            <tr style="background-color:lightcyan;">
                <td class="bold border">N0.</td>
                <td class="bold border">NAMA</td>
                <td class="bold border">ALAMAT</td>
                <td class="bold border">TELEPON (WA)</td>
                <td class="bold border">EMAIL</td>
                <td class="bold border">LEVEL BAHASA</td>
                <td class="bold border">ASAL IPK</td>
                <td class="bold border">PROGRAM</td>
                <td class="bold border">TANGGAL MASUK</td>
            </tr>
        </thead>
        <tbody>
            <?php $i = 1; ?>
            <?php foreach ($participant->result() as $p) : ?>
                <tr>
                    <td class="border"><?= $i; ?></td>
                    <td class="border"><?= $p->name; ?></td>
                    <td class="border"><?= $p->address; ?></td>
                    <td class="border"><?= $p->phone; ?></td>
                    <td class="border"><?= $p->email; ?></td>
                    <td class="border"><?= $p->lang_level; ?></td>
                    <td class="border"><?= $p->ipk; ?></td>
                    <td class="border"><?= $p->program; ?></td>
                    <td class="border"><?= date('d F Y', strtotime($p->date_entry)); ?></td>
                </tr>
                <?php $i++; ?>
            <?php endforeach; ?>
            <tr style="background-color: lightcyan;">
                <td colspan="8" class="bold border font-italic">JUMLAH SISWA</td>
                <td class="bold border font-italic"><?= $count_prt; ?> SISWA</td>
            </tr>
        </tbody>
    </table>

    <br>

    <table style="width: 100%;">
        <tr>
            <td></td>
            <td width="25%" style="text-align: center;">
                <br><br>
                Pembuat
                <br><br><br><br><br>
                <b><u>NURJANNAH</u></b>
                <br>Direktur</br>
            </td>
            <td width="50%" colspan="5"></td>
            <td width="25%" style="text-align: center;">
                Bekasi, <?php echo date("d F Y"); ?>
                <br>
                Mengetahui,
                <br>
                LPK PT. Miraino Hashi Jaya
                <br><br><br><br><br>
                <b><u>MURDIYONO JAYA</u></b>
                <br>Direktur Utama</br>
            </td>
        </tr>
    </table>

</body>

</html>