<?php
class Coe_model extends CI_Model
{

    function count_coe()
    {
        $query = $this->db->get('participants_coe');
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        } else {
            return 0;
        }
    }

    function get_coe()
    {
        $this->db->select('*');
        $this->db->from('participants_coe');
        $query = $this->db->get();
        return $query;
    }

    function details_coe($id = NULL)
    {
        $query = $this->db->get_where('participants_coe', ['id' => $id])->row();
        return $query;
    }

    function save_coe($data)
    {
        $this->db->insert('participants_coe', $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Peserta berhasil ditambahkan!</div>');
        redirect('coe');
    }

    function update_coe($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update('participants_coe', $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Peserta berhasil diedit!</div>');
        redirect('coe/coe_edit_page/' . $id);
    }

    function delete_coe($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('participants_coe');

        return true;
    }
}
