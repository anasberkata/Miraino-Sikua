<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Report extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    // is_logged_in();
    $this->load->model('Report_model', 'report');
    $this->load->helper('date');
  }

  public function index()
  {
    $data['title'] = 'Laporan Keuangan';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['report'] = $this->report->get_report();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('report/index', $data);
    $this->load->view('templates/footer');
  }

  public function report_add_page()
  {
    $data['title'] = 'Laporan Keuangan';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('report/report_add', $data);
    $this->load->view('templates/footer');
  }

  public function report_add()
  {
    $this->form_validation->set_rules('output_type', 'Output_type', 'required|trim');
    $this->form_validation->set_rules('nominal', 'Nominal', 'required|trim');

    if ($this->form_validation->run() == false) {
      $data['title'] = 'Laporan Keuangan';
      $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view('report/report_add', $data);
      $this->load->view('templates/footer');
    } else {
      $output_type = $this->input->post('output_type', true);
      $nominal = $this->input->post('nominal', true);
      $date_payment = $this->input->post('date_payment', true);

      $format = "%Y-%m-%d";
      $date_created = mdate($format);
      $is_active = 1;

      $data = [
        'id' => NULL,
        'output_type' => $output_type,
        'nominal' => $nominal,
        'date_payment' => $date_payment,
        'date_created' => $date_created,
        'is_active' => $is_active
      ];

      $this->report->save_report($data);
    }
  }

  public function report_edit_page($id)
  {
    $data['title'] = 'Laporan Keuangan';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['report'] = $this->report->details_report($id);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('report/report_edit', $data);
    $this->load->view('templates/footer');
  }

  public function report_edit()
  {
    $id = $this->input->post('id');
    $output_type = $this->input->post('output_type', true);
    $nominal = $this->input->post('nominal', true);
    $date_payment = $this->input->post('date_payment', true);

    $data = [
      'output_type' => $output_type,
      'nominal' => $nominal,
      'date_payment' => $date_payment
    ];

    $this->report->update_report($data, $id);
  }

  public function report_delete()
  {
    $id = $this->input->post('id');
    $this->report->delete_report($id);

    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil dihapus!</div>');
    redirect('report/');
  }
}
