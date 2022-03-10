<?php
class Payment_model extends CI_Model
{

  function count_payment()
  {
    $this->db->select_sum('nominal');
    $query = $this->db->get('payment');
    if ($query->num_rows() > 0) {
      return $query->row()->nominal;
    } else {
      return 0;
    }
  }

  function get_payment()
  {
    $this->db->select('*');
    $this->db->from('payment');
    $query = $this->db->get();
    return $query;
  }

  function details_payment($id = NULL)
  {
    $query = $this->db->get_where('payment', ['id' => $id])->row();
    return $query;
  }

  function save_payment($data)
  {
    $this->db->insert('payment', $data);
    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil ditambahkan!</div>');
    redirect('payment');
  }

  function update_payment($data, $id)
  {
    $this->db->where('id', $id);
    $this->db->update('payment', $data);
    $this->session->set_flashdata(
      'message',
      '<div class="alert alert-success" role="alert">Data berhasil diedit!</div>'
    );
    redirect('payment/payment_edit_page/' . $id);
  }

  function delete_payment($id)
  {
    $this->db->where('id', $id);
    $this->db->delete('payment');

    return true;
  }
}
