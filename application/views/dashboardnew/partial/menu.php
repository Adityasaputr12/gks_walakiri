<header class="header ">

	<div class="main-navigation  ">
		<nav class="navbar navbar-expand-lg  ">
			<div class="container position-relative ">
				<a class="navbar-brand" href="index-2.html">
					<img src="<?= base_url('assets/bg/logosinode.png');  ?>" style="width:90px;"
						alt="logo"><a href="<?= base_url('dashboard') ?>"></a>
				</a>
				<div class="mobile-menu-right">
					<div class="search-btn">
						<button type="button" class="nav-right-link search-box-outer"><i
								class="far fa-search"></i></button>
					</div>
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-mobile-icon"><i class="far fa-bars"></i></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="main_nav">
					<ul class="navbar-nav ">
						<li class="nav-item "><a class="nav-link " href="<?= base_url('') ?>">Beranda</a></li>


						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Profil</a>
							<ul class="dropdown-menu fade-down">
								<li><a class="dropdown-item" href="<?= base_url('dashboard/profil_sekolah') ?>">Profil
										Gereja</a></li>
								<!-- <li><a class="dropdown-item" href="<?= base_url('#sambutan-detail') ?>">Sambutan Ketua Majelis
										</a></li> -->
								<li><a class="dropdown-item" href="<?= base_url('dashboard/visi_misi') ?>">Visi Misi</a>
								</li>
								<li><a class="dropdown-item"
										href="<?= base_url('dashboard/struktur_organisasi') ?>">Sejarah Gereja</a>
								</li>

							</ul>
						</li>

						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Informasi</a>
							<ul class="dropdown-menu fade-down">
								<li><a class="dropdown-item" href="<?= base_url('berita-sekolah-list') ?>">Berita</a>
								</li>

								<li><a class="dropdown-item" href="<?= base_url('dashboard/guru') ?>">Pendeta</a></li>
								<li><a class="dropdown-item" href="<?= base_url('dashboard/file') ?>">Download</a></li>


							</ul>
						</li>

						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Galeri</a>
							<ul class="dropdown-menu fade-down">
								<li><a class="dropdown-item" href="<?= base_url('dashboard/foto') ?>">Foto</a></li>
								<li><a class="dropdown-item" href="<?= base_url('dashboard/video') ?>">Video</a></li>

							</ul>
						</li>
						<li class="nav-item"><a class="nav-link" href="<?= base_url('contacts') ?>">Contact</a></li>
					</ul>
					<div class="nav-right">
						<div class="search-btn">
							<button type="button" class="nav-right-link search-box-outer"><i
									class="far fa-search"></i></button>
						</div>

					</div>
				</div>
			</div>
		</nav>
	</div>
</header>


<div class="search-popup">
	<button class="close-search"><span class="far fa-times"></span></button>
	<form action="<?= base_url("cariberita") ?>" method="POST" class="search-form">
		<div class="form-group">
			<input type="search" name="cari" placeholder="Search Berita..." required>
			<button type="submit"><i class="far fa-search"></i></button>
		</div>
	</form>
</div>