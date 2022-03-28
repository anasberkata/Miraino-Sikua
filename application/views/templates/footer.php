<footer>
  <div class="footer clearfix mb-0 text-muted">
    <div class="float-start">
      <p><?= date('Y'); ?> &copy; PT. Miraino Hashi Jaya</>
    </div>
    <div class="float-end">
      <p>Dev by <a href="https://www.instagram.com/anasberkata">Anas Berkata</a></p>
    </div>
  </div>
</footer>
</div>
</div>


<script src="<?= base_url('assets/'); ?>vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="<?= base_url('assets/'); ?>js/bootstrap.bundle.min.js"></script>

<script src="<?= base_url('assets/'); ?>vendors/apexcharts/apexcharts.js"></script>
<script src="<?= base_url('assets/'); ?>js/pages/dashboard.js"></script>

<!-- Table -->
<script src="<?= base_url('assets/'); ?>vendors/simple-datatables/simple-datatables.js"></script>
<script>
  // Simple Datatable
  let table1 = document.querySelector('#table1');
  let dataTable = new simpleDatatables.DataTable(table1, {
    searchable: false
  });
</script>

<script src="<?= base_url('assets/'); ?>js/mazer.js"></script>
</body>

</html>