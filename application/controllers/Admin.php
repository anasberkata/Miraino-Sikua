<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    // is_logged_in();
    $this->load->model('Participant_model', 'participant');
    $this->load->model('Coe_model', 'coe');
    $this->load->model('Payment_model', 'payment');
    $this->load->model('Report_model', 'report');
    $this->load->helper('date');
  }

  // ---------------------------------------------- ADMIN CRUD -------------------------------------------------------------------

  public function index()
  {
    $data['title'] = 'Dashboard';
    $data['user'] = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row_array();

    $data['count_prt'] = $this->participant->count_participants();
    $data['count_prt_coe'] = $this->coe->count_coe();
    $data['count_payment'] = $this->payment->count_payment();
    $data['count_report'] = $this->report->count_report();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('admin/index', $data);
    $this->load->view('templates/footer');
  }
}
