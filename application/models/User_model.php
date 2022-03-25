<?php
class User_model extends CI_Model
{

  function get_users()
  {
    $this->db->select('*');
    $this->db->from('users');
    $this->db->where('role_id', 2);
    $this->db->or_where('role_id', 3);
    $query = $this->db->get();
    return $query;
  }

  function details_user($id = NULL)
  {
    $id_user = $id;
    $query = "SELECT `users`.*, `user_role`.* FROM `users` JOIN `user_role` ON `users`.`role_id` = `user_role`.`id` WHERE `users`.`id` = '$id_user'";
    return $this->db->query($query)->row_array();
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
