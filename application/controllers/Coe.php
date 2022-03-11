<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Coe extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    // is_logged_in();
    $this->load->model('Coe_model', 'coe');
    $this->load->helper('date');
  }

  public function index()
  {
    $data['title'] = 'Peserta CoE';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['coe'] = $this->coe->get_coe();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('coe/index', $data);
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
    redirect('coe/');
  }
}
