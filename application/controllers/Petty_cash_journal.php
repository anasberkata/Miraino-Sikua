<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Petty_cash_journal extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        // is_logged_in();
        $this->load->model('Petty_cash_journal_model', 'pcj');
        $this->load->helper('date');
    }

    public function index()
    {
        $data['title'] = 'Jurnal Kas Kecil';
        $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

        $data['petty_cash_journal'] = $this->pcj->get_petty_cash_journal();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('petty_cash_journal/index', $data);
        $this->load->view('templates/footer');
    }

    public function petty_cash_journal_search()
    {
        $data['title'] = 'Jurnal Kas Kecil';
        $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

        $tgl_awal = $this->input->post('tgl_awal');
        $tgl_akhir = $this->input->post('tgl_akhir');
        $jenis = $this->input->post('jenis');

        $data['petty_cash_journal'] = $this->pcj->search_petty_cash_journal($tgl_awal, $tgl_akhir, $jenis);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('petty_cash_journal/petty_cash_journal_search', $data);
        $this->load->view('templates/footer');
    }

    public function petty_cash_journal_add()
    {
        $this->form_validation->set_rules('output_type', 'output_type', 'required|trim');
        $this->form_validation->set_rules('details', 'Details', 'required|trim');
        $this->form_validation->set_rules('nominal', 'Nominal', 'required|trim');

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Jurnal Kas Kecil';
            $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('petty_cash_journal/petty_cash_journal_add', $data);
            $this->load->view('templates/footer');
        } else {
            $output_type = $this->input->post('output_type', true);
            $details = $this->input->post('details', true);
            $nominal = $this->input->post('nominal', true);
            $date_payment = $this->input->post('date_payment', true);

            $format = "%Y-%m-%d";
            $date_created = mdate($format);
            $is_active = 1;

            $data = [
                'id' => NULL,
                'output_type' => $output_type,
                'details' => $details,
                'nominal' => $nominal,
                'date_payment' => $date_payment,
                'date_created' => $date_created,
                'is_active' => $is_active
            ];

            $this->pcj->save_petty_cash_journal($data);
        }
    }

    public function petty_cash_journal_edit_page($id)
    {
        $data['title'] = 'Jurnal Kas Kecil';
        $data['user'] = $this->db->get_where('users', ['id' => $this->session->userdata('id')])->row_array();

        $data['petty_cash_journal'] = $this->pcj->details_petty_cash_journal($id);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('petty_cash_journal/petty_cash_journal_edit', $data);
        $this->load->view('templates/footer');
    }

    public function petty_cash_journal_edit()
    {
        $id = $this->input->post('id');
        $output_type = $this->input->post('output_type', true);
        $details = $this->input->post('details', true);
        $nominal = $this->input->post('nominal', true);
        $date_payment = $this->input->post('date_payment', true);

        $data = [
            'output_type' => $output_type,
            'details' => $details,
            'nominal' => $nominal,
            'date_payment' => $date_payment
        ];

        $this->pcj->update_petty_cash_journal($data, $id);
    }

    public function petty_cash_journal_delete()
    {
        $id = $this->input->post('id');
        $this->pcj->delete_petty_cash_journal($id);

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil dihapus!</div>');
        redirect('petty_cash_journal/');
    }


    // // ---------------------------------------- MPDF ---------------------------------- //
    public function printPDF()
    {

        $tgl_awal = $this->input->get('tgl_awal');
        $tgl_akhir = $this->input->get('tgl_akhir');
        $jenis = $this->input->get('jenis');

        if (!isset($tgl_awal) && !isset($tgl_akhir) && !isset($jenis)) {
            $data['petty_cash_journal'] = $this->pcj->get_petty_cash_journal();
            $data['total'] = $this->pcj->sum_nominal();
        } else {
            $data['petty_cash_journal'] = $this->pcj->search_petty_cash_journal($tgl_awal, $tgl_akhir, $jenis);
            $data['total'] = $this->pcj->search_sum_nominal($tgl_awal, $tgl_akhir, $jenis);
        }

        $mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L']);
        // $mpdf->SetHTMLFooter('
        //         <table width="100%" style="font-size: 9pt;">
        //             <tr>
        //                 <td width="33%">{DATE j-m-Y}</td>
        //                 <td width="33%" align="center">{PAGENO}/{nbpg}</td>
        //                 <td width="33%" style="text-align: right;">Laporan Keuangan PT. Miraino Hashi Jaya</td>
        //             </tr>
        //         </table>');

        $page = $this->load->view('petty_cash_journal/petty_cash_journal_print', $data, TRUE);

        $mpdf->WriteHTML($page);
        $mpdf->Output('Jurnal Kas Kecil.pdf', 'I');
    }

    // // ---------------------------------------- EXPORT EXCEL ---------------------------------- //

    public function exportExcel()
    {
        $tgl_awal = $this->input->get('tgl_awal');
        $tgl_akhir = $this->input->get('tgl_akhir');
        $jenis = $this->input->get('jenis');

        if (!isset($tgl_awal) && !isset($tgl_akhir) && !isset($jenis)) {
            $data['petty_cash_journal'] = $this->pcj->get_petty_cash_journal();
            $data['total'] = $this->pcj->sum_nominal();
        } else {
            $data['petty_cash_journal'] = $this->pcj->search_petty_cash_journal($tgl_awal, $tgl_akhir, $jenis);
            $data['total'] = $this->pcj->search_sum_nominal($tgl_awal, $tgl_akhir, $jenis);
        }

        $this->load->view('petty_cash_journal/petty_cash_journal_excel', $data);
    }
}
