<?php
class Payment_model extends CI_Model
{
  // Menampilkan Semua Data Payment
  function get_payment()
  {
    $this->db->select('*');
    $this->db->from('payment');
    $this->db->order_by('date_payment', 'ASC');
    $query = $this->db->get();
    return $query;
  }

  // Menampilkan Detail Payment
  function details_payment($id = NULL)
  {
    $query = $this->db->get_where('payment', ['id' => $id])->row();
    return $query;
  }

  // Mencari Data Berdasarkan Nama
  function search_payment($name, $periode_awal, $periode_akhir, $periode_awal_null, $periode_akhir_null)
  {

    if (!$periode_awal_null && !$periode_akhir_null) {
      $query = $this->db->query("SELECT * FROM `payment` WHERE `name` LIKE '%$name%' ORDER BY `date_payment` ASC");
      return $query;
    } else {
      $query = $this->db->query("SELECT * FROM `payment` WHERE `date_payment` BETWEEN '$periode_awal' AND '$periode_akhir' AND `name` LIKE '%$name%' ORDER BY `date_payment` ASC");
      return $query;
    }
  }

  // Menambah Payment
  function save_payment($data)
  {
    $this->db->insert('payment', $data);
    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil ditambahkan!</div>');
    redirect('payment');
  }

  // Mengedit Payment
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

  // Menghapus Payment
  function delete_payment($id)
  {
    $this->db->where('id', $id);
    $this->db->delete('payment');

    return true;
  }

  // ------------------------------------------ COUNT ------------------------------------ //

  // Menghitung Jumlah Data
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

  // Menghitung Total
  function sum_nominal()
  {
    $query = $this->db->query("SELECT SUM(`nominal`) AS `total` FROM `payment` ORDER BY `date_payment` ASC");
    return $query->row();
  }

  function search_sum_nominal($name, $periode_awal, $periode_akhir, $periode_awal_null, $periode_akhir_null)
  {
    if (!$periode_awal_null && !$periode_akhir_null) {
      $query = $this->db->query("SELECT SUM(`nominal`) AS `total` FROM `payment` WHERE `name` LIKE '%$name%' ORDER BY `date_payment` ASC");
      return $query->row();
    } else {
      $query = $this->db->query("SELECT SUM(`nominal`) AS `total` FROM `payment` WHERE `date_payment` BETWEEN '$periode_awal' AND '$periode_akhir' AND `name` LIKE '%$name%' ORDER BY `date_payment` ASC");
      return $query->row();
    }
  }
}
