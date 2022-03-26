<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    is_logged_in();
    $this->load->model('User_model', 'user');
    $this->load->helper('date');
  }

  // ---------------------------------------------- PROFILE CRUD -------------------------------------------------------------------

  // Halaman Profile
  public function index()
  {
    $data['title'] = 'My Profile';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('user/profile', $data);
    $this->load->view('templates/footer');
  }

  // Edit Profile
  public function profile_edit()
  {
    $data['title'] = 'My Profile';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $this->form_validation->set_rules('name', 'Full Name', 'required|trim');

    if ($this->form_validation->run() == false) {
      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view('user/profile_edit', $data);
      $this->load->view('templates/footer');
    } else {
      $name = $this->input->post('name');
      $username = $this->input->post('username');
      $email = $this->input->post('email');

      $datas = [
        'name' => $name,
        'username' => $username,
        'email' => $email
      ];

      $id = $data['user']['id'];
      $this->user->update_profile($datas, $id);
    }
  }

  // Ganti Password
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
      $this->load->view('user/profile_change_password', $data);
      $this->load->view('templates/footer');
    } else {
      $current_password = $this->input->post('current_password');
      $new_password = $this->input->post('new_password1');

      if (!password_verify($current_password, $data['user']['password'])) {
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password Lama Anda Salah!</div>');
        redirect('user/profile_change_password');
      } else {
        if ($current_password == $new_password) {
          $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password Baru Tidak Boleh Sama dengan Password Lama!</div>');
          redirect('user/profile_change_password');
        } else {
          // password sudah ok
          $password_hash = password_hash($new_password, PASSWORD_DEFAULT);

          $this->db->set('password', $password_hash);
          $this->db->where('id', $data['user']['id']);
          $this->db->update('users');

          $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Password Berhasil Di Ubah!</div>');
          redirect('user/profile_change_password');
        }
      }
    }
  }

  // Menampilkan Semua User
  public function users()
  {
    $data['title'] = 'User';
    $data['user'] = $this->db->get_where('users', ['email' => $this->session->userdata('email')])->row_array();
    $data['users'] = $this->user->user_data('users')->result();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('user/users', $data);
    $this->load->view('templates/footer');
  }

  // Detail User
  public function user_detail($id)
  {
    $get_user = ['users.id' => $id];
    $data['title'] = 'User';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();
    $data['detail_user'] = $this->user->details_user($get_user)->row_array();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('user/user_detail', $data);
    $this->load->view('templates/footer');
  }

  // Menambah User
  public function user_add()
  {
    $data['title'] = 'User';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $this->form_validation->set_rules('name', 'Name', 'required|trim');
    $this->form_validation->set_rules('username', 'Username', 'required|trim');
    $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[users.email]', [
      'is_unique' => 'Alamat E-Mail ini sudah terdaftar!'
    ]);
    $this->form_validation->set_rules('password', 'Password', 'required|trim|min_length[3]', [
      'min_length' => 'Password terlalu Pendek!'
    ]);
    $this->form_validation->set_rules('role_id', 'Role_id', 'required|trim');

    if ($this->form_validation->run() == false) {
      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view('user/user_add', $data);
      $this->load->view('templates/footer');
    } else {
      $name = $this->input->post('name', true);
      $username = $this->input->post('username', true);
      $email = $this->input->post('email', true);
      $password = password_hash($this->input->post('password'), PASSWORD_DEFAULT);
      $image = "default.jpg";
      $role_id = $this->input->post('role_id', true);
      $is_active = 1;
      $format = "%Y-%m-%d";
      $date_created = mdate($format);

      $data = [
        'id' => NULL,
        'name' => $name,
        'username' => $username,
        'email' => $email,
        'password' => $password,
        'image' => $image,
        'role_id' => $role_id,
        'is_active' => $is_active,
        'date_created' => $date_created
      ];

      $this->user->save_user($data);

      $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">User berhasil ditambahkan!</div>');
      redirect('user/users');
    }
  }

  public function user_edit()
  {
    $id = $this->input->get('id', true);
    $get_user = ['users.id' => $id];
    $data['title'] = 'User';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();
    $data['detail_user'] = $this->user->details_user($get_user)->row_array();

    $this->form_validation->set_rules('name', "Name", 'required|trim');
    $this->form_validation->set_rules('username', "Username", 'required|trim');
    $this->form_validation->set_rules('email', "Email", 'required|trim|valid_email');

    if ($this->form_validation->run() == false) {
      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view('user/user_edit', $data);
      $this->load->view('templates/footer');
    } else {
      $datas = [
        'name' => htmlspecialchars($this->input->post('name')),
        'username' => htmlspecialchars($this->input->post('username')),
        'email' => htmlspecialchars($this->input->post('email')),
        'role_id' => $this->input->post('role_id')
      ];

      $get_user_id = $this->input->post('id', true);

      $this->user->update_user($get_user_id, $datas);
      $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">User berhasil diedit!</div>');
      redirect('user/users');
    }
  }

  // public function user_delete()
  // {
  //   $id = $this->input->post('id');
  //   $this->user->delete_user($id);

  //   $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">User berhasil dihapus!</div>');
  //   redirect('user/');
  // }
}
