<?php
class Participant_model extends CI_Model
{

  function count_participants()
  {
    $query = $this->db->get('participants');
    if ($query->num_rows() > 0) {
      return $query->num_rows();
    } else {
      return 0;
    }
  }

  function get_participants()
  {
    $this->db->select('*');
    $this->db->from('participants');
    $query = $this->db->get();
    return $query;
  }

  function details_participant($id = NULL)
  {
    $query = $this->db->get_where('participants', ['id' => $id])->row();
    return $query;
  }

  function save_participant($data)
  {
    $this->db->insert('participants', $data);
    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Peserta berhasil ditambahkan!</div>');
    redirect('participant');
  }

  function update_participant($data, $id)
  {
    $this->db->where('id', $id);
    $this->db->update('participants', $data);
    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Peserta berhasil diedit!</div>');
    redirect('participant/participant_edit_page/' . $id);
  }

  function delete_participant($id)
  {
    $this->db->where('id', $id);
    $this->db->delete('participants');

    return true;
  }
}
