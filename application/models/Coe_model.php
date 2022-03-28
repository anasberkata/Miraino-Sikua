<?php
class Coe_model extends CI_Model
{
    // Menampilkan Semua Data Peserta Coe
    function get_coe()
    {
        $this->db->select('*');
        $this->db->from('participants_coe');
        $query = $this->db->get();
        return $query;
    }

    // menampilkan Detail Peserta Coe
    function details_coe($id = NULL)
    {
        $query = $this->db->get_where('participants_coe', ['id' => $id])->row();
        return $query;
    }

    // Menambah Peserta Coe
    function save_coe($data)
    {
        $this->db->insert('participants_coe', $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Peserta berhasil ditambahkan!</div>');
        redirect('coe');
    }

    // Mengedit Peserta Coe
    function update_coe($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update('participants_coe', $data);
        $this->session->set_flashdata(
            'message',
            '<div class="alert alert-success" role="alert">Peserta berhasil diedit!</div>'
        );
        redirect('coe/coe_edit_page/' . $id);
    }

    // Menghapus Coe
    function delete_coe($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('participants_coe');

        return true;
    }


    // ------------------------------------------ COUNT ------------------------------------ //

    // Menghitung Jumlah Data
    function count_coe()
    {
        $query = $this->db->get('participants_coe');
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        } else {
            return 0;
        }
    }

    // ------------------------------------------ SEARCH ------------------------------------ //

    // Mencari Data Berdasarkan Nama Kumiai
    function search_kumiai_coe($kumiai_name)
    {
        // $cari = strpos('name', $name);
        $query = $this->db->query("SELECT * FROM `participants_coe` WHERE `kumiai_name` LIKE '%$kumiai_name%'");

        return $query;
    }
}
