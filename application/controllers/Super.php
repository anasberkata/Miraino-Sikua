<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Super extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    is_logged_in();
    $this->load->model('Participant_model', 'participant');
    $this->load->helper('date');
  }

  public function index()
  {
    $data['title'] = 'Dashboard';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('admin/index', $data);
    $this->load->view('templates/footer');
  }

  public function participant()
  {
    $data['title'] = 'Peserta';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['participant'] = $this->participant->get_participants();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('participant/participant', $data);
    $this->load->view('templates/footer');
  }

  public function participant_detail($id)
  {
    $data['title'] = 'Peserta';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['participant'] = $this->participant->details_participant($id);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('participant/participant_detail', $data);
    $this->load->view('templates/footer');
  }


  public function participant_add_page()
  {
    $data['title'] = 'Peserta';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('participant/participant_add', $data);
    $this->load->view('templates/footer');
  }

  public function participant_add()
  {
    $this->form_validation->set_rules('name', 'Name', 'required|trim');
    $this->form_validation->set_rules('address', 'Address', 'required|trim');
    $this->form_validation->set_rules('phone', 'Phone', 'required|trim');
    $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[participants.email]', [
      'is_unique' => 'Alamat E-Mail ini sudah terdaftar!'
    ]);
    $this->form_validation->set_rules('lang_level', 'Lang_level', 'required|trim');
    $this->form_validation->set_rules('ipk', 'Ipk', 'required|trim');

    if ($this->form_validation->run() == false) {
      $data['title'] = 'Peserta';
      $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view('participant/participant_add', $data);
      $this->load->view('templates/footer');
    } else {
      $name = $this->input->post('name', true);
      $address = $this->input->post('address', true);
      $phone = $this->input->post('phone', true);
      $email = $this->input->post('email', true);
      $lang_level = $this->input->post('lang_level', true);
      $ipk = $this->input->post('ipk', true);
      $program = $this->input->post('program', true);
      $date_entry = $this->input->post('date_entry', true);

      $format = "%Y-%m-%d";
      $date_created = mdate($format);
      $is_active = 1;

      $data = [
        'id' => NULL,
        'name' => $name,
        'address' => $address,
        'phone' => $phone,
        'email' => $email,
        'lang_level' => $lang_level,
        'ipk' => $ipk,
        'program' => $program,
        'date_entry' => $date_entry,
        'date_created' => $date_created,
        'is_active' => $is_active
      ];

      $this->participant->save_participant($data);
    }
  }

  public function participant_edit_page($id)
  {
    $data['title'] = 'Peserta';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['participant'] = $this->participant->details_participant($id);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('participant/participant_edit', $data);
    $this->load->view('templates/footer');
  }

  public function participant_edit()
  {
    // $this->form_validation->set_rules('name');
    // $this->form_validation->set_rules('address');
    // $this->form_validation->set_rules('phone');
    // $this->form_validation->set_rules('email');
    // $this->form_validation->set_rules('lang_level');
    // $this->form_validation->set_rules('ipk');

    // if ($this->form_validation->run() == false) {
    //   $data['title'] = 'Peserta';
    //   $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    //   // $data['participant'] = $this->participant->details_participant($id);

    //   $this->load->view('templates/header', $data);
    //   $this->load->view('templates/sidebar', $data);
    //   $this->load->view('participant/participant_edit', $data);
    //   $this->load->view('templates/footer');
    // } else {
    //   $id = $this->input->post('id');
    //   $name = $this->input->post('name');
    //   $address = $this->input->post('address');
    //   $phone = $this->input->post('phone');
    //   $email = $this->input->post('email');
    //   $lang_level = $this->input->post('lang_level');
    //   $ipk = $this->input->post('ipk');
    //   $program = $this->input->post('program');
    //   $date_entry = $this->input->post('date_entry');

    //   $data = [
    //     'name' => $name,
    //     'address' => $address,
    //     'phone' => $phone,
    //     'email' => $email,
    //     'lang_level' => $lang_level,
    //     'ipk' => $ipk,
    //     'program' => $program,
    //     'date_entry' => $date_entry
    //   ];

    //   $this->participant->update_participant($data, $id);
    // }

    $id = $this->input->post('id');
    $name = $this->input->post('name');
    $address = $this->input->post('address');
    $phone = $this->input->post('phone');
    $email = $this->input->post('email');
    $lang_level = $this->input->post('lang_level');
    $ipk = $this->input->post('ipk');
    $program = $this->input->post('program');
    $date_entry = $this->input->post('date_entry');

    $data = [
      'name' => $name,
      'address' => $address,
      'phone' => $phone,
      'email' => $email,
      'lang_level' => $lang_level,
      'ipk' => $ipk,
      'program' => $program,
      'date_entry' => $date_entry
    ];

    $this->participant->update_participant($data, $id);
  }

  function participant_delete()
  {
    $id = $this->input->post('id');
    $this->participant->delete_participant($id);

    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Peserta berhasil dihapus!</div>');
    redirect('super/participant/');
  }
}
