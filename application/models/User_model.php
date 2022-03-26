<?php
class User_model extends CI_Model
{
  //  Update Profile
  function update_profile($datas, $id)
  {
    $this->db->where('id', $id);
    $this->db->update('users', $datas);
    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Profile anda berhasil diedit!</div>');
    redirect('user');
  }



  // -------------------------- USER CRUD ---------------------------- //
  // Read User
  function user_data()
  {
    $this->db->select('*');
    $this->db->from('users');
    $this->db->where_not_in('role_id', 1);
    $query = $this->db->get();
    return $query;
  }

  function details_user($get_user)
  {
    // $query = "SELECT `users`.*, `user_role`.* FROM `users` JOIN `user_role` ON `users`.`role_id` = `user_role`.`id` WHERE `users`.`id` = '$get_user'";
    $this->db->select('users.*, user_role.id AS id_role, user_role.role');
    $this->db->join('user_role', 'users.role_id = user_role.id');
    $query = $this->db->get_where('users', $get_user);
    return $query;
  }

  function save_user($data)
  {
    $this->db->insert('users', $data);
  }

  function update_user($get_user_id, $datas)
  {
    $this->db->where('id', $get_user_id);
    $this->db->update('users', $datas);
  }

  // function delete_user($id)
  // {
  //   $this->db->where('id', $id);
  //   $this->db->delete('users');

  //   return true;
  // }
}
