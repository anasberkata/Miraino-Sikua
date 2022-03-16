<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Profile extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    // is_logged_in();
    $this->load->model('Profile_model', 'profile');
    $this->load->helper('date');
  }

  // ---------------------------------------------- PROFILE CRUD -------------------------------------------------------------------

  public function index()
  {
    $data['title'] = 'My Profile';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('profile/index', $data);
    $this->load->view('templates/footer');
  }

  public function profile_edit_page()
  {
    $data['title'] = 'My Profile';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('profile/profile_edit', $data);
    $this->load->view('templates/footer');
  }

  public function profile_edit()
  {
    $id = $this->input->post('id');
    $name = $this->input->post('name');
    $username = $this->input->post('username');
    $email = $this->input->post('email');

    $data = [
      'name' => $name,
      'username' => $username,
      'email' => $email
    ];
    $this->profile->update_profile($data, $id);
  }

  public function profile_change_password()
  {
    $data['title'] = 'My Profile';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();
    
    $this->form_validation->set_rules('current_password', 'Current Password', 'required|trim');
    $this->form_validation->set_rules('new_password1', 'New Password', 'required|trim|min_length[3]|matches[new_password2]');
    $this->form_validation->set_rules('new_password2', 'Confirm New Password', 'required|trim|min_length[3]|matches[new_password1]');

    if ($this->form_validation->run() == false) {
      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view('profile/profile_change_password', $data);
      $this->load->view('templates/footer');
    } else {
        $current_password = $this->input->post('current_password');
        $new_password = $this->input->post('new_password1');
        if (!password_verify($current_password, $data['user']['password'])) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password Lama Anda Salah!</div>');
            redirect('user/changepassword');
        } else {
            if ($current_password == $new_password) {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password Baru Tidak Boleh Sama dengan Password Lama!</div>');
                redirect('profile/profile_change_password');
            } else {
                // password sudah ok
                $password_hash = password_hash($new_password, PASSWORD_DEFAULT);

                $this->db->set('password', $password_hash);
                $this->db->where('username', $this->session->userdata('username'));
                $this->db->update('users');

                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Password Berhasil Di Ubah!</div>');
                redirect('profile/profile_change_password');
            }
        }
    }
  }
}
