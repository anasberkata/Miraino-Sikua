<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Participant extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    // is_logged_in();
    $this->load->model('Participant_model', 'participant');
    $this->load->helper('date');
  }

  public function index()
  {
    $data['title'] = 'Peserta';
    $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

    $data['participant'] = $this->participant->get_participants();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('participant/index', $data);
    $this->load->view('templates/footer');
  }

  public function participant_detail($id)
  {
    $data['title'] = 'Peserta';
    $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

    $data['participant'] = $this->participant->details_participant($id);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('participant/participant_detail', $data);
    $this->load->view('templates/footer');
  }

  public function participant_search()
  {
    $data['title'] = 'Peserta';
    $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

    $name = $this->input->post('name');
    $data['participant'] = $this->participant->search_participant($name);

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('participant/participant_search', $data);
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
      $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

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
    $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

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
    redirect('participant/');
  }


  // ---------------------------------------- MPDF ---------------------------------- //
  public function printPDF()
  {
    $name = $this->input->get('name');

    if (!isset($name)) {
      $data['participant'] = $this->participant->get_participants();
      $data['count_prt'] = $this->participant->count_participants();
    } else {
      $data['participant'] = $this->participant->search_participant($name);
      $data['count_prt'] = $this->participant->search_count_participants($name);
    }

    $mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L']);
    // $mpdf->SetHTMLFooter('
    //         <table width="100%" style="font-size:9;">
    //             <tr>
    //                 <td width="33%">{DATE j-m-Y}</td>
    //                 <td width="33%" align="center">{PAGENO}/{nbpg}</td>
    //                 <td width="33%" style="text-align: right;">Data Peserta PT. Miraino Hashi Jaya</td>
    //             </tr>
    //         </table>');

    $page = $this->load->view('participant/participant_print', $data, TRUE);

    $mpdf->WriteHTML($page);
    $mpdf->Output('Data Peserta.pdf', 'I');
  }

  // ---------------------------------------- EXPORT EXCEL ---------------------------------- //

  public function exportExcel()
  {
    $name = $this->input->get('name');

    if (!isset($name)) {
      $data['participant'] = $this->participant->get_participants();
      $data['count_prt'] = $this->participant->count_participants();
    } else {
      $data['participant'] = $this->participant->search_participant($name);
      $data['count_prt'] = $this->participant->search_count_participants($name);
    }

    $this->load->view('participant/participant_excel', $data);
  }
}
