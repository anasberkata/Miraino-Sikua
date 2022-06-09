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
    $this->load->model('Payment_model', 'payment');
    $this->load->model('Report_model', 'report');
    $this->load->helper('date');
  }

  // ---------------------------------------------- SUPER CRUD -------------------------------------- //

  public function index()
  {
    $data['title'] = 'Dashboard';
    $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

    $data['count_prt'] = $this->participant->count_participants();
    $data['count_prt_coe'] = $this->coe->count_coe();
    $data['count_payment'] = $this->payment->count_payment();
    $data['count_report'] = $this->report->count_report();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('admin/index', $data);
    $this->load->view('templates/footer');
  }

  // ----------------------------------------------- DATABASE ------------------------------------------ //
  public function database()
  {
    $data['title'] = 'Database';
    $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('admin/database', $data);
    $this->load->view('templates/footer');
  }

  public function database_backup()
  {
    date_default_timezone_set("Asia/Jakarta");

    $this->load->dbutil();
    $pref = [
      'format' => 'zip',
      'filename' => 'miraino_sik.sql'
    ];

    $backup     = $this->dbutil->backup($pref);
    $db_name    = 'backup_database__' . date("d-m-Y__H-i-s") . '.zip';
    $save       = './database/' . $db_name;

    $this->load->helper('file');
    write_file($save, $backup);

    $this->load->helper("download");
    force_download($db_name, $backup);
  }
}
