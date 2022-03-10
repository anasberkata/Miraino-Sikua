<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Super extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    is_logged_in();
    $this->load->model('Participant_model', 'participant');
    $this->load->model('Coe_model', 'coe');
    $this->load->helper('date');
  }

    // ---------------------------------------------- ADMIN CRUD -------------------------------------------------------------------

  public function index()
  {
    $data['title'] = 'Dashboard';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['count_prt'] = $this->participant->count_participants();
    $data['count_prt_coe'] = $this->coe->count_coe();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('admin/index', $data);
    $this->load->view('templates/footer');
  }

  // ---------------------------------------------- PARTICIPANT CRUD -------------------------------------------------------------------
  
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

  public function participant_delete()
  {
    $id = $this->input->post('id');
    $this->participant->delete_participant($id);

    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Peserta berhasil dihapus!</div>');
    redirect('super/participant/');
  }

  // ---------------------------------------------- COE CRUD -------------------------------------------------------------------

  public function coe()
  {
    $data['title'] = 'Peserta CoE';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['coe'] = $this->coe->get_coe();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('coe/coe', $data);
    $this->load->view('templates/footer');
  }

  public function coe_detail($id)
  {
    $data['title'] = 'Peserta CoE';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['coe'] = $this->coe->details_coe($id);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('coe/coe_detail', $data);
    $this->load->view('templates/footer');
  }

  public function coe_add_page()
  {
    $data['title'] = 'Peserta CoE';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('coe/coe_add', $data);
    $this->load->view('templates/footer');
  }

  public function coe_add()
  {
    $this->form_validation->set_rules('name', 'Name', 'required|trim');
    $this->form_validation->set_rules('kumiai_name', 'Kumiai_name', 'required|trim');
    $this->form_validation->set_rules('office_name', 'Office_name', 'required|trim');
    $this->form_validation->set_rules('placement', 'Placement', 'required|trim');

    if ($this->form_validation->run() == false) {
      $data['title'] = 'Peserta CoE';
      $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view('coe/coe_add', $data);
      $this->load->view('templates/footer');
    } else {
      $name = $this->input->post('name', true);
      $issue_date = $this->input->post('issue_date', true);
      $program = $this->input->post('program', true);
      $kumiai_name = $this->input->post('kumiai_name', true);
      $office_name = $this->input->post('office_name', true);
      $placement = $this->input->post('placement', true);

      $format = "%Y-%m-%d";
      $date_created = mdate($format);
      $is_active = 1;

      $data = [
        'id' => NULL,
        'name' => $name,
        'issue_date' => $issue_date,
        'program' => $program,
        'kumiai_name' => $kumiai_name,
        'office_name' => $office_name,
        'placement' => $placement,
        'date_created' => $date_created,
        'is_active' => $is_active
      ];

      $this->coe->save_coe($data);
    }
  }

  public function coe_edit_page($id)
  {
    $data['title'] = 'Peserta CoE';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['coe'] = $this->coe->details_coe($id);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('coe/coe_edit', $data);
    $this->load->view('templates/footer');
  }

  public function coe_edit()
  {
    $id = $this->input->post('id');
    $name = $this->input->post('name', true);
    $issue_date = $this->input->post('issue_date', true);
    $program = $this->input->post('program', true);
    $kumiai_name = $this->input->post('kumiai_name', true);
    $office_name = $this->input->post('office_name', true);
    $placement = $this->input->post('placement', true);

    $data = [
      'name' => $name,
      'issue_date' => $issue_date,
      'program' => $program,
      'kumiai_name' => $kumiai_name,
      'office_name' => $office_name,
      'placement' => $placement
    ];

    $this->coe->update_coe($data, $id);
  }

  public function coe_delete()
  {
    $id = $this->input->post('id');
    $this->coe->delete_coe($id);

    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Peserta berhasil dihapus!</div>');
    redirect('super/coe/');
  }
}
