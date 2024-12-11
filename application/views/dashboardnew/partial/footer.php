<?php
$general = $this->db->get('general')->row_array();
?>

<div class="container bg-light text-dark py-5 border shadow-lg rounded mt-5">
	<div class="row">
		<!-- Informasi Gereja -->
		<div class="col-lg-4 col-md-6 mb-4">
			<div class="border shadow-sm rounded p-4 h-100">
				<h4 class="fw-bold text-primary mb-3"> <a href="<?= base_url("") ?>" class="text-primary"><?= $general['nama_sekolah'] ?></a></h4>
				<hr class="bg-primary">
				<ul class="list-unstyled small">
					<li>9C5F+73X, Watumbaka, Kec. Pandawai, Kabupaten Sumba Timur, Nusa Tenggara Tim.</li>
					<li>Kabupaten Sumba Timur, NTT | 87113</li>
					<li>Email: <a href="mailto:gkssumba@gmail.com" class="text-primary">gkswalakirig@gmail.com</a></li>
				</ul>
			</div>
		</div>
		<!-- Sosial Media -->
		<div class="col-lg-4 col-md-6 mb-4">
			<div class="border shadow-sm rounded p-4 h-100">
				<h4 class="fw-bold text-primary mb-3">Ikuti Kami</h4>
				<hr class="bg-primary">
				<div>
					<a href="#" class="text-primary mx-2"><i class="fab fa-facebook fa-lg"></i></a>
					<a href="#" class="text-primary mx-2"><i class="fab fa-instagram fa-lg"></i></a>
					<a href="#" class="text-primary mx-2"><i class="fab fa-youtube fa-lg"></i></a>
				</div>
			</div>
		</div>
		<!-- Lokasi Peta -->
		<div class="col-lg-4 col-md-12">
			<div class="border shadow-sm rounded p-4 h-100">
				<h4 class="fw-bold text-primary mb-3">Lokasi Kami</h4>
				<hr class="bg-primary">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2996.1894940565307!2d120.42015747361694!3d-9.641761701792921!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2c4c91ee72dda2f5%3A0x467f45faca36477c!2sGKS%20Jemaat%20Walakiri!5e1!3m2!1sid!2sid!4v1733322774504!5m2!1sid!2sid" width="100%" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>
		</div>
	</div>

	<!-- Garis Pemisah -->
	<hr class="bg-primary mt-4">

	<!-- Hak Cipta -->
	<div class="row small text-center">
		<div class="col-lg-6 col-md-12">
			<p class="mb-0 text-secondary fs-6">&copy; Copyright <span id="date"></span> <a href="<?= base_url("") ?>" class="text-primary"><?= $general['nama_sekolah'] ?></a></p>
		</div>
		<div class="col-lg-6 col-md-12">
			<p class="mb-0 text-secondary d-flex justify-content-end fs-6">Design By: Kelompok PKL Unkriswina Sumba</p>
		</div>
	</div>
</div>

<!-- Scroll to top button -->
<a href="#" id="scroll-top" class="btn btn-primary shadow rounded-circle position-fixed bottom-0 end-0 m-3">
	<i class="far fa-arrow-up-from-arc"></i>
</a>

<!-- JavaScript Libraries -->
<script src="<?= base_url('assets/barunih/') ?>js/jquery-3.6.0.min.js"></script>
<script src="<?= base_url('assets/barunih/') ?>js/modernizr.min.js"></script>
<script src="<?= base_url('assets/barunih/') ?>js/bootstrap.bundle.min.js"></script>
<script src="<?= base_url('assets/barunih/') ?>js/imagesloaded.pkgd.min.js"></script>
<script src="<?= base_url('assets/barunih/') ?>js/jquery.magnific-popup.min.js"></script>
<script src="<?= base_url('assets/barunih/') ?>js/isotope.pkgd.min.js"></script>
<script src="<?= base_url('assets/barunih/') ?>js/jquery.appear.min.js"></script>
<script src="<?= base_url('assets/barunih/') ?>js/jquery.easing.min.js"></script>
<script src="<?= base_url('assets/barunih/') ?>js/owl.carousel.min.js"></script>
<script src="<?= base_url('assets/barunih/') ?>js/counter-up.js"></script>
<script src="<?= base_url('assets/barunih/') ?>js/wow.min.js"></script>
<script src="<?= base_url('assets/barunih/') ?>js/main.js"></script>
<script src="<?php echo base_url() ?>assets/fullcalendar/main.js"></script>
<script src="<?php echo base_url() ?>assets/sweetalert2/sweetalert2.min.js"></script>
<script src="<?php echo base_url() ?>assets/datatable/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url() ?>assets/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?php echo base_url() ?>assets/datatable/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?php echo base_url() ?>assets/datatable/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="<?php echo base_url() ?>assets/datatable/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="<?php echo base_url() ?>assets/datatable/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="<?php echo base_url() ?>assets/sweetalert2/sweetalert2.min.js"></script>
<script src="<?php echo base_url() ?>assets/datatable/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="<?php echo base_url() ?>assets/datatable/datatables-buttons/js/buttons.print.min.js"></script>
<script src="<?php echo base_url() ?>assets/datatable/datatables-buttons/js/buttons.colVis.min.js"></script>
</body>

</html>	