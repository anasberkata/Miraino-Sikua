<?php
class User_model extends CI_Model
{

  function get_users()
  {
    $this->db->select('*');
    $this->db->from('users');
    $query = $this->db->get();
    return $query;
  }

  function details_user($id = NULL)
  {
    // $this->db->select('users.*, user_role.id AS id_role');
    // $this->db->join('user_role', 'users.role_id = user_role.id_role');
    // $this->db->from('users');
    // $this->db->where('id', $id);
    // $this->db->from('users');
    // $query = $this->db->get();
    // return $query->result();



    // $query = $this->db->get()->row();
    $query = $this->db->get_where('users', ['id' => $id])->row();
    return $query;
  }

  function save_user($data)
  {
    $this->db->insert('users', $data);
    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">User berhasil ditambahkan!</div>');
    redirect('user');
  }

  function update_user($data, $id)
  {
    $this->db->where('id', $id);
    $this->db->update('users', $data);
    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">User berhasil diedit!</div>');
    redirect('user/user_edit_page/' . $id);
  }

  function delete_user($id)
  {
    $this->db->where('id', $id);
    $this->db->delete('users');

    return true;
  }
}
