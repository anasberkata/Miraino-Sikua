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

  // ---------------------------------------------- USER CRUD -------------------------------------------------------------------

  public function index()
  {
    $data['title'] = 'User';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['users'] = $this->user->get_users();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('user/index', $data);
    $this->load->view('templates/footer');
  }

  public function user_detail($id)
  {
    $data['title'] = 'User';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['users'] = $this->user->details_user($id);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('user/user_detail', $data);
    $this->load->view('templates/footer');
  }


  public function user_add_page()
  {
    $data['title'] = 'User';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('user/user_add', $data);
    $this->load->view('templates/footer');
  }

  public function user_add()
  {
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
      $data['title'] = 'User';
      $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

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
    }
  }

  public function user_edit_page($id)
  {
    $data['title'] = 'User';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['users'] = $this->user->details_user($id);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('user/user_edit', $data);
    $this->load->view('templates/footer');
  }

  public function user_edit()
  {
    $id = $this->input->post('id');
    $name = $this->input->post('name');
    $username = $this->input->post('username');
    $email = $this->input->post('email');
    $role_id = $this->input->post('role_id');

    $data = [
      'name' => $name,
      'username' => $username,
      'email' => $email,
      'role_id' => $role_id
    ];
    $this->user->update_user($data, $id);
  }

  public function user_delete()
  {
    $id = $this->input->post('id');
    $this->user->delete_user($id);

    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">User berhasil dihapus!</div>');
    redirect('user/');
  }
}
