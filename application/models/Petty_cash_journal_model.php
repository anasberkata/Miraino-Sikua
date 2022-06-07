<?php
class Petty_cash_journal_model extends CI_Model
{
    // ------------------------------------------ CRUD ------------------------------------ //
    // Menampilkan Keseluruhan Data Report
    function get_petty_cash_journal()
    {
        $this->db->select('*');
        $this->db->from('petty_cash_journal');
        // $this->db->order_by('date_payment', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    // // Menampilkan Detail Laporan
    // function details_report($id = NULL)
    // {
    //     $query = $this->db->get_where('report', ['id' => $id])->row();
    //     return $query;
    // }

    // // Mencari Data
    function search_petty_cash_journal($month, $year)
    {
        // if (!$month && !$year) {
        //     $query = $this->db->query("SELECT * FROM `petty_cash_journal` WHERE `output_type` LIKE '%$jenis%' ORDER BY `date_payment` ASC");
        //     return $query;
        // } else {
        //     $query = $this->db->query("SELECT * FROM `petty_cash_journal` WHERE `date_payment` BETWEEN '$tgl_awal' AND '$tgl_akhir' AND `output_type` LIKE '%$jenis%' ORDER BY `date_payment` ASC");
        //     return $query;
        // }

        $query = $this->db->query("SELECT * FROM `petty_cash_journal` WHERE MONTH(`date_payment`) = '$month' AND YEAR(`date_payment`) = '$year' ORDER BY `date_payment` ASC");
        return $query;
    }

    // // Menambah Laporan
    function save_petty_cash_journal($data)
    {
        $this->db->insert(
            'petty_cash_journal',
            $data
        );
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil ditambahkan!</div>');
        redirect('petty_cash_journal');
    }

    // // Mengedit Laporan
    // function update_report(
    //     $data,
    //     $id
    // ) {
    //     $this->db->where('id', $id);
    //     $this->db->update(
    //         'report',
    //         $data
    //     );
    //     $this->session->set_flashdata(
    //         'message',
    //         '<div class="alert alert-success" role="alert">Data berhasil diedit!</div>'
    //     );
    //     redirect('report/report_edit_page/' . $id);
    // }

    // // Menghapus Laporan
    // function delete_report($id)
    // {
    //     $this->db->where('id', $id);
    //     $this->db->delete('report');

    //     return true;
    // }

    // // ------------------------------------------ COUNT ------------------------------------ //

    // // Menghitung Jumlah Data
    // function count_report()
    // {
    //     $this->db->select_sum('nominal');
    //     $query = $this->db->get('report');
    //     if ($query->num_rows() > 0) {
    //         return $query->row()->nominal;
    //     } else {
    //         return 0;
    //     }
    // }

    // // Menghitung Total
    function sum_nominal()
    {
        $query = $this->db->query("SELECT SUM(`nominal`) AS `total` FROM `petty_cash_journal`");
        return $query->row();
    }

    function search_sum_nominal($month, $year)
    {
        // if (!$tgl_awal && !$tgl_akhir) {
        //     $query = $this->db->query("SELECT SUM(`nominal`) AS `total` FROM `report` WHERE `output_type` LIKE '%$jenis%' ORDER BY `date_payment` ASC");
        //     return $query->row();
        // } else {
        //     $query = $this->db->query("SELECT SUM(`nominal`) AS `total` FROM `report` WHERE `date_payment` BETWEEN '$tgl_awal' AND '$tgl_akhir' AND `output_type` LIKE '%$jenis%' ORDER BY `date_payment` ASC");
        //     return $query->row();
        // }

        $query = $this->db->query("SELECT SUM(`nominal`) AS `total` FROM `petty_cash_journal` WHERE MONTH(`date_payment`) = '$month' AND YEAR(`date_payment`) = '$year' ORDER BY `date_payment` ASC");
        return $query->row();
    }
}
