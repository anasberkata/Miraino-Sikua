<?php
class Profile_model extends CI_Model
{
  function update_profile($data, $id)
  {
    $this->db->where('id', $id);
    $this->db->update('users', $data);
    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Profile anda berhasil diedit!</div>');
    redirect('profile/profile_edit_page/');
  }
}
