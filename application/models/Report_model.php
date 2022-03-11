<?php
class Report_model extends CI_Model
{

  function count_report()
  {
    $this->db->select_sum('nominal');
    $query = $this->db->get('report');
    if ($query->num_rows() > 0) {
      return $query->row()->nominal;
    } else {
      return 0;
    }
  }

  function get_report()
  {
    $this->db->select('*');
    $this->db->from('report');
    $query = $this->db->get();
    return $query;
  }

  function details_report($id = NULL)
  {
    $query = $this->db->get_where('report', ['id' => $id])->row();
    return $query;
  }

  function save_report($data)
  {
    $this->db->insert('report', $data);
    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil ditambahkan!</div>');
    redirect('report');
  }

  function update_report($data, $id)
  {
    $this->db->where('id', $id);
    $this->db->update('report', $data);
    $this->session->set_flashdata(
      'message',
      '<div class="alert alert-success" role="alert">Data berhasil diedit!</div>'
    );
    redirect('report/report_edit_page/' . $id);
  }

  function delete_report($id)
  {
    $this->db->where('id', $id);
    $this->db->delete('report');

    return true;
  }
}
