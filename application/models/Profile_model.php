<?php
class Profile_model extends CI_Model
{

  function get_profile()
  {
    $this->db->select('*');
    $this->db->from('users');
    $query = $this->db->get();
    return $query;
  }

  function details_profile($id = NULL)
  {
    $query = $this->db->get_where('users', ['id' => $id])->row();
    return $query;
  }

  function update_profile($data, $id)
  {
    $this->db->where('id', $id);
    $this->db->update('users', $data);
    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Profile anda berhasil diedit!</div>');
    redirect('profile/profile_edit/' . $id);
  }

  function delete_profile($id)
  {
    $this->db->where('id', $id);
    $this->db->delete('users');

    return true;
  }
}
