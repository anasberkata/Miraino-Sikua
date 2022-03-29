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

  // ---------------------------------------------- COE CRUD ----------------------------------------- //
  public function index()
  {
    $data['title'] = 'Peserta CoE';
    $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

    $data['coe'] = $this->coe->get_coe();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('coe/index', $data);
    $this->load->view('templates/footer');
  }

  public function coe_detail($id)
  {
    $data['title'] = 'Peserta CoE';
    $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

    $data['coe'] = $this->coe->details_coe($id);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('coe/coe_detail', $data);
    $this->load->view('templates/footer');
  }

  public function coe_search()
  {
    $data['title'] = 'Peserta CoE';
    $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

    $kumiai_name = $this->input->post('kumiai_name');
    $data['coe'] = $this->coe->search_coe($kumiai_name);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('coe/coe_search', $data);
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
      $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

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
    $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

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

  // ---------------------------------------- MPDF ------------------------------------------ //
  public function printPDF()
  {
    $kumiai_name = $this->input->get('kumiai_name');
    if (!isset($kumiai_name)) {
      $data['coe'] = $this->coe->get_coe();
      $data['count_prt_coe'] = $this->coe->count_coe();
    } else {
      $data['coe'] = $this->coe->search_coe($kumiai_name);
      $data['count_prt_coe'] = $this->coe->search_count_coe($kumiai_name);
    }

    $mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L']);
    $mpdf->SetHTMLFooter('
            <table width="100%" style="font-size:9;">
                <tr>
                    <td width="33%">{DATE j-m-Y}</td>
                    <td width="33%" align="center">{PAGENO}/{nbpg}</td>
                    <td width="33%" style="text-align: right;">Data Peserta CoE PT. Miraino Hashi Jaya</td>
                </tr>
            </table>');

    $page = $this->load->view('coe/coe_print', $data, TRUE);

    $mpdf->WriteHTML($page);
    $mpdf->Output('Data Peserta CoE.pdf', 'I');
  }

  // ---------------------------------------- EXPORT EXCEL ---------------------------------- //

  public function exportExcel()
  {
    $kumiai_name = $this->input->get('kumiai_name');
    if (!isset($kumiai_name)) {
      $data['coe'] = $this->coe->get_coe();
      $data['count_prt_coe'] = $this->coe->count_coe();
    } else {
      $data['coe'] = $this->coe->search_coe($kumiai_name);
      $data['count_prt_coe'] = $this->coe->search_count_coe($kumiai_name);
    }

    $this->load->view('coe/coe_excel', $data);
  }
}
