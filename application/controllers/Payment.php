<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Payment extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    // is_logged_in();
    $this->load->model('Payment_model', 'payment');
    $this->load->helper('date');
  }

  public function index()
  {
    $data['title'] = 'Data Keuangan';
    $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

    $data['payment'] = $this->payment->get_payment();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('payment/index', $data);
    $this->load->view('templates/footer');
  }

  public function payment_search()
  {
    $data['title'] = 'Data Keuangan';
    $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

    $name = $this->input->post('name');

    $bulan_awal = $this->input->post('month_start');
    $bulan_akhir = $this->input->post('month_end');
    $tahun_awal = $this->input->post('year_start');
    $tahun_akhir = $this->input->post('year_end');
    $tanggal_awal = 01;
    $tanggal_akhir = 31;

    $periode_awal = $tahun_awal . "-" . $bulan_awal . "-" . $tanggal_awal;
    $periode_akhir = $tahun_akhir . "-" . $bulan_akhir . "-" . $tanggal_akhir;

    $periode_awal_null = $bulan_awal;
    $periode_akhir_null = $bulan_akhir;

    $data['payment'] = $this->payment->search_payment($name, $periode_awal, $periode_akhir, $periode_awal_null, $periode_akhir_null);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('payment/payment_search', $data);
    $this->load->view('templates/footer');
  }

  public function payment_add()
  {
    $this->form_validation->set_rules('name', 'Name', 'required|trim');
    $this->form_validation->set_rules('person_responsible', 'Person_responsible', 'required|trim');
    $this->form_validation->set_rules('nominal', 'Nominal', 'required|trim');
    $this->form_validation->set_rules('description', 'Description', 'required|trim');

    if ($this->form_validation->run() == false) {
      $data['title'] = 'Data Keuangan';
      $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view('payment/payment_add', $data);
      $this->load->view('templates/footer');
    } else {
      $name = $this->input->post('name', true);
      $program = $this->input->post('program', true);
      $date_payment = $this->input->post('date_payment', true);
      $person_responsible = $this->input->post('person_responsible', true);
      $nominal = $this->input->post('nominal', true);
      $description = $this->input->post('description', true);

      $format = "%Y-%m-%d";
      $date_created = mdate($format);
      $is_active = 1;

      $data = [
        'id' => NULL,
        'name' => $name,
        'program' => $program,
        'date_payment' => $date_payment,
        'person_responsible' => $person_responsible,
        'nominal' => $nominal,
        'description' => $description,
        'date_created' => $date_created,
        'is_active' => $is_active
      ];

      $this->payment->save_payment($data);
    }
  }

  public function payment_edit_page($id)
  {
    $data['title'] = 'Data Keuangan';
    $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

    $data['payment'] = $this->payment->details_payment($id);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('payment/payment_edit', $data);
    $this->load->view('templates/footer');
  }

  public function payment_edit()
  {
    $id = $this->input->post('id');
    $name = $this->input->post('name', true);
    $program = $this->input->post('program', true);
    $date_payment = $this->input->post('date_payment', true);
    $person_responsible = $this->input->post('person_responsible', true);
    $nominal = $this->input->post('nominal', true);
    $description = $this->input->post('description', true);

    $data = [
      'name' => $name,
      'program' => $program,
      'date_payment' => $date_payment,
      'person_responsible' => $person_responsible,
      'nominal' => $nominal,
      'description' => $description
    ];

    $this->payment->update_payment($data, $id);
  }

  public function payment_delete()
  {
    $id = $this->input->post('id');
    $this->payment->delete_payment($id);

    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil dihapus!</div>');
    redirect('payment/');
  }

  // ---------------------------------------- MPDF ---------------------------------- //
  public function printPDF()
  {
    $name = $this->input->get('name');

    $bulan_awal = $this->input->get('month_start');
    $bulan_akhir = $this->input->get('month_end');
    $tahun_awal = $this->input->get('year_start');
    $tahun_akhir = $this->input->get('year_end');
    $tanggal_awal = 01;
    $tanggal_akhir = 31;

    $periode_awal = $tahun_awal . "-" . $bulan_awal . "-" . $tanggal_awal;
    $periode_akhir = $tahun_akhir . "-" . $bulan_akhir . "-" . $tanggal_akhir;

    $periode_awal_null = $bulan_awal;
    $periode_akhir_null = $bulan_akhir;

    if (!isset($name) && !isset($periode_awal_null) && !isset($periode_akhir_null)) {
      $data['payment'] = $this->payment->get_payment();
      $data['total'] = $this->payment->sum_nominal();
    } else {
      $data['payment'] = $this->payment->search_payment($name, $periode_awal, $periode_akhir, $periode_awal_null, $periode_akhir_null);
      $data['total'] = $this->payment->search_sum_nominal($name, $periode_awal, $periode_akhir, $periode_awal_null, $periode_akhir_null);
    }

    $mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L']);
    // $mpdf->SetHTMLFooter('
    //         <table width="100%" style="font-size:9;">
    //             <tr>
    //                 <td width="33%">{DATE j-m-Y}</td>
    //                 <td width="33%" align="center">{PAGENO}/{nbpg}</td>
    //                 <td width="33%" style="text-align: right;">Data Keuangan PT. Miraino Hashi Jaya</td>
    //             </tr>
    //         </table>');

    $page = $this->load->view('payment/payment_print', $data, TRUE);

    $mpdf->WriteHTML($page);
    $mpdf->Output('Data Keuangan.pdf', 'I');
  }

  // ---------------------------------------- EXPORT EXCEL ---------------------------------- //

  public function exportExcel()
  {
    // $name = $this->input->get('name');
    // if (!isset($name)) {
    //   $data['payment'] = $this->payment->get_payment();
    //   $data['total'] = $this->payment->sum_nominal();
    // } else {
    //   $data['payment'] = $this->payment->search_payment($name);
    //   $data['total'] = $this->payment->search_sum_nominal($name);
    // }


    $name = $this->input->get('name');

    $bulan_awal = $this->input->get('month_start');
    $bulan_akhir = $this->input->get('month_end');
    $tahun_awal = $this->input->get('year_start');
    $tahun_akhir = $this->input->get('year_end');
    $tanggal_awal = 01;
    $tanggal_akhir = 31;

    $periode_awal = $tahun_awal . "-" . $bulan_awal . "-" . $tanggal_awal;
    $periode_akhir = $tahun_akhir . "-" . $bulan_akhir . "-" . $tanggal_akhir;

    $periode_awal_null = $bulan_awal;
    $periode_akhir_null = $bulan_akhir;

    if (!isset($name) && !isset($periode_awal_null) && !isset($periode_akhir_null)) {
      $data['payment'] = $this->payment->get_payment();
      $data['total'] = $this->payment->sum_nominal();
    } else {
      $data['payment'] = $this->payment->search_payment($name, $periode_awal, $periode_akhir, $periode_awal_null, $periode_akhir_null);
      $data['total'] = $this->payment->search_sum_nominal($name, $periode_awal, $periode_akhir, $periode_awal_null, $periode_akhir_null);
    }

    $this->load->view('payment/payment_excel', $data);
  }
}
