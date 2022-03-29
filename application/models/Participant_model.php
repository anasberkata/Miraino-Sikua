<?php
class Participant_model extends CI_Model
{
  // Mannampilkan Data Peserta
  function get_participants()
  {
    $this->db->select('*');
    $this->db->from('participants');
    $query = $this->db->get();
    return $query;
  }

  // Menampilkan Detail Peserta
  function details_participant($id = NULL)
  {
    $query = $this->db->get_where('participants', ['id' => $id])->row();
    return $query;
  }

  // Mencari Data Berdasarkan Nama
  function search_participant($name)
  {
    $query = $this->db->query("SELECT * FROM `participants` WHERE `name` LIKE '%$name%'");
    return $query;
  }

  // Tambah Peserta
  function save_participant($data)
  {
    $this->db->insert('participants', $data);
    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Peserta berhasil ditambahkan!</div>');
    redirect('participant');
  }

  // Update Peserta
  function update_participant($data, $id)
  {
    $this->db->where('id', $id);
    $this->db->update('participants', $data);
    $this->session->set_flashdata(
      'message',
      '<div class="alert alert-success" role="alert">Peserta berhasil diedit!</div>'
    );
    redirect('participant/participant_edit_page/' . $id);
  }

  // Menghapus Peserta
  function delete_participant($id)
  {
    $this->db->where('id', $id);
    $this->db->delete('participants');

    return true;
  }

  // ----------------------------- COUNT --------------------------------//

  // Menghitung Jumlah Peserta
  function count_participants()
  {
    $query = $this->db->get('participants');
    if ($query->num_rows() > 0) {
      return $query->num_rows();
    } else {
      return 0;
    }
  }

  function search_count_participants($name)
  {
    $query = $this->db->query("SELECT * FROM `participants` WHERE `name` LIKE '%$name%'");
    if ($query->num_rows() > 0) {
      return $query->num_rows();
    } else {
      return 0;
    }
  }
}
