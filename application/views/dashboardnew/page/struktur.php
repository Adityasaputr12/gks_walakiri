<?php $this->load->view('dashboardnew/partial/header'); ?>
<?php $this->load->view('dashboardnew/partial/menu'); ?>
<?php

$general = $this->db->get('general')->row_array();
?>




<!-- <main class="main">

	<div class="site-breadcrumb" style="background-image: url(<?= base_url('assets/upload/images/breadcumb/') . $general['breadcumb'] ?>)">
		<div class="container">
			<h2 class="breadcrumb-title"><?= $subjudul ?></h2>
			<ul class="breadcrumb-menu">
				<li><a href="<?= base_url('') ?>">Home</a></li>
				<li class="active"><?= $subjudul ?></li>
			</ul>
		</div>
	</div> -->


<div class="py-120">
	<div class="container ">
		<div class="row">
			<div class="col">
				<h3 class="mb-3 d-flex  justify-content-center fs-1 subjudul"><?= $subjudul ?></h3>
				<p class="fs-6 shadow border rounded p-3">
					Jemaat Walakiri merupakan hasil pekabaran injil dari jemaat Kawangu pada Tahun 1962 yang sebelumnya Kawangu masih berpusat di GKS jemaat Kambaniru. perkabaran injil pertama kali di terima pada tahun 1964. Pada awalnya ibadah minggu berlangsung di rumah Bpk. Petrus Pe Ludji (Alm) sekaligus sebagai tokoh masyarakat. oleh karena jumlah jemaat semakin bertambah maka pada Tahun 1965 Kambaniru membangun Pos PI di Walakiri dengan bangunan darurat di atas tanah milik ibu Magdalena Hida Konga (Almh). Dua Tahun Kemudian rumah tersebut roboh oleh karna angin Tofan. maka kemudian berpindahlah Ibadah di rumah Bpk. Hendrik Behi Ratu (Alm) dan beberapa Bulan kemudian berpindah lagi Ibadah di rumah Bpk. Yusuf Uly Kila (Alm) sampai Tahun 1988. dan pada Tanggal 08 Agustus 1988 cabang Walakiri membangun Gedung Semi permanen dengan beratapan seng, berdinding bebak dan beralas lantai kasar di atas Tanah Gereja yang sekarang ini. kemudian pada Tahun 2001 Jemaat Cabang Walakiri membangun Gedung Ibadah permanen yang dipakai sampai saat hari ini. Pada tahun 2015 jemaat Walakiri mengajukan pada persidangan Klasis Kambaniru untuk menjadi jemaat yang mandiri. proses kemandirian tersebut berjalan cukup lama harus melengkapi beberapa persyaratan kemandirian. pada tahun 2020, rencana kemandirian terealisasi, dan pada tanggal 2 agustus 2020, maka Vic Marliani Yakoba Betriks lay, S.TH terpilih menjadi calon pendeta, sehingga pada tanggal 11 november 2020, di tabiskan menjadi pendeta jemaat Walakiri
				</p>
				<!-- <?= $struktur->struktur ?> -->
			</div>
		</div>
	</div>
</div>

</main>

<?php $this->load->view('dashboardnew/partial/footer'); ?>