<?php $this->load->view('dashboardnew/partial/header'); ?>
<?php $this->load->view('dashboardnew/partial/menu'); ?>
<?php
  $general = $this->db->get('general')->row_array();
?>

<main class="main">

<div class="site-breadcrumb" style="background-image: url(<?= base_url('assets/upload/images/breadcumb/').$general['breadcumb']?>)">
		<div class="container">
			<h2 class="breadcrumb-title"><?= $subjudul ?></h2>
			<ul class="breadcrumb-menu">
				<li><a href="<?= base_url('') ?>">Home</a></li>
				<li class="active"><?= $subjudul ?></li>
			</ul>
		</div>
	</div>
    <style>
    .video-thumbnail {
        height: 20em;
        cursor: pointer;
        border: 7px solid #ddd; /* Tambahkan border untuk estetika */
        border-radius: 8px; /* Membuat sudut sedikit melengkung */
        overflow: hidden;
    }
    .popup-gallery {
        display: grid;
        grid-template-columns: repeat(4, 1fr); /* 4 kolom dalam satu baris */
        gap: 20px; /* Jarak horizontal dan vertikal antar elemen */
    }
    .site-heading {
        margin-bottom: 50px;
    }
    .site-heading .site-title-tagline {
        font-size: 16px;
        color: #6c757d;
    }
    .site-heading .site-title {
        font-size: 36px;
        font-weight: bold;
        color: #333;
    }
    /* Responsif untuk layar lebih kecil */
    @media (max-width: 1200px) {
        .popup-gallery {
            grid-template-columns: repeat(3, 1fr); /* 3 kolom untuk layar besar tapi lebih kecil */
        }
    }
    @media (max-width: 768px) {
        .popup-gallery {
            grid-template-columns: repeat(2, 1fr); /* 2 kolom untuk tablet */
        }
    }
    @media (max-width: 576px) {
        .popup-gallery {
            grid-template-columns: 1fr; /* 1 kolom untuk ponsel */
        }
    }
</style>

	<div class="gallery-area py-120">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 mx-auto">
				<div class="site-head text-center">
					<span class="site-title-tagline"><i class="far fa-book-open-reader"></i> Gallery Video</span>
					<h2 class="site-title">Our Video <span>Gallery</span></h2>
					
				</div>
			</div>
		</div>
		<div class="row popup-galleri">
        <?php  foreach ($video as $video) { ?>


			<div class="col-md-4 wow fadeInUp" data-wow-delay=".25s">
            <div class="video-thumbnail">
						<?php echo $video->url; ?>
					</div>
			</div>
		
				<?php } ?>
        
		</div>
	</div>
	</div>

</main>

<?php $this->load->view('dashboardnew/partial/footer'); ?>
