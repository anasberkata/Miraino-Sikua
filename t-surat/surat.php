<!DOCTYPE html>
<html lang="en">

<head>
    <style>
        .container {
            position: relative;
            width: 100%;
        }

        .kop {
            position: relative;
            width: 70%;
            margin: auto;
        }

        .logo {
            position: relative;
            float: left;
            width: 15%;
            margin-top: 25px;
            margin-bottom: 20px
        }

        .header {
            position: relative;
            float: left;
            width: 55%;
            padding-left: 80px;
            text-align: center;
        }

        .header h3 {
            font-size: 22pt;
            font-family: "Arial Black";
        }

        .header p {
            font-size: 14pt;
            font-family: "Times New Roman";
        }

        hr.devider01 {

            margin-top: 20px;
            width: 100%;
            border: 2px solid #000;
        }

        hr.devider02 {
            width: 100%;
            border: 1px solid #000;
            margin-bottom: 20px;
        }

        .table {
            position: relative;
            width: 100%;
            margin: auto;
        }

        .table h4 {
            font-size: 20pt;
            font-family: "Times New Roman";
            position: relative;
            width: 100%;
            text-align: center;
        }

        table {
            position: relative;
            width: 100%;
        }

        table,
        tr,
        td {
            border: 1px solid #000;
            border-spacing: 0px;
            border-collapse: separate;
            font-size: 12pt;
            text-align: center;
            height: 50px;
        }

        tr.thead,
        tr.tfoot {
            font-weight: bold;
            text-align: center;
        }

        tr.thead {
            background-color: #bdd7ee;
        }

        tr.tfoot {
            background-color: #b4c6e7;
        }

        tr.tfoot {
            font-style: italic;
        }

        .text-right {
            text-align: left;
        }

        .ttd {
            position: relative;
            width: 80%;
            margin: 20px auto;
        }

        .ttd01 {
            position: relative;
            float: left;
            text-align: center;
        }

        .ttd02 {
            position: relative;
            float: right;
            text-align: center;
        }
    </style>
    <title>Surat</title>
</head>

<body>


    <div class="container">
        <div class="kop">
            <div class="logo"><img src="logo-miraino.jpeg" width="100%"></div>
            <div class="header">
                <h3>PT. MIRAINO HASHI JAYA</h3>
                <p>
                    Alamat : Jl. Almuhajirin Raya Ruko No.1 Rt.01/Rw.05
                    <br>Kel. Satria Jaya Kec. Tambun Utara, Kab.Bekasi Kode Pos : 17510
                    <br>Telp : 021-895-26505, +6281327417947, +62815-1307-1589
                    <br>Website : www.mirainohashi.co.id
                </p>
            </div>
        </div>

        <hr class="devider01">
        <hr class="devider02">

        <div class="table">

            <h4>JUDUL</h4>

            <table>
                <tr class="thead">
                    <td>NO.</td>
                    <td>NAMA</td>
                    <td>PROGRAM</td>
                </tr>

                <tr>
                    <td>data 01</td>
                    <td class="text-right">data 02</td>
                    <td>data 03</td>
                </tr>

                <tr class="tfoot">
                    <td colspan="2"></td>
                    <td> DATA 03</td>
                </tr>
            </table>
        </div>
        <div class="ttd">
            <div class="ttd01">
                <p>
                    <br><br>
                    Pembuat,
                    <br><br><br><br><br>
                    <b><u>NURJANAH</u></b>
                    <br>
                    Direktur
                </p>
            </div>
            <div class="ttd02">
                <p>
                    Bekasi, 1 Maret 2022
                    <br>
                    Mengetahui,
                    <br>
                    LPK PT. Miraino Hashi Jaya
                    <br><br><br><br><br>
                    <b><u>MURDIONO JAYA</u></b>
                    <br>
                    Direktur Utama
                </p>
            </div>
        </div>
    </div>



</body>

</html>