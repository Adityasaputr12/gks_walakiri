<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Foto extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->path = FCPATH . "uploads/gallery/";


		//cek session login
		if(!$this->session->userdata('admin')){
            $cookie = get_cookie('djehbicd');
            if($cookie == NULL){
                redirect(base_url());
            }else{
                $getCookie = $this->db->get_where('admin', ['cookie' => $cookie])->row_array();
                if($getCookie){
                    $this->session->set_userdata('admin', true);
                }else{
                    redirect(base_url());
                }
            }
        }
	}

	public function index()
	{
		$data = [
            
			'judul'		=> 'Galeri',
			'subjudul'	=> 'Foto',
		];
		$this->load->view('admin/page/foto',$data);
    }

    public function getdata()
	{

		$draw = intval($this->input->get("draw"));
		$start = intval($this->input->get("start"));
		$length = intval($this->input->get("length"));

		$query = $this->db->query(" SELECT	foto.* , admin.`username` FROM foto, admin WHERE
		foto.`user` = admin.`id` ORDER BY foto.waktu DESC");

		$data = [];
		$no = 0;
		foreach ($query->result() as $key => $lists) {
			$no++;

			$data[$key][]  = $no;
			$data[$key][]  = '
			
            <img height="100" class="imggaleri"  data-bs-toggle="modal" data-bs-target="#myModal" src="' . base_url() . 'uploads/gallery/' . $lists->foto . '"  alt="' . $lists->foto . '"/>
          
        ';
			$data[$key][]  = '<span class="badge bg-label-primary me-1"> <i class="fas fa-calendar-alt"></i> '.date("D", strtotime($lists->waktu)).' , '.date("d M Y", strtotime($lists->waktu)).' <i class="fas fa-clock"></i> '.date("H:i:s", strtotime($lists->waktu)).'</span>';
			$data[$key][]  = $lists->judul;
			$data[$key][]  = $lists->username;
			$data[$key][]  = '<a href="javascript:;" class="btn btn-warning btn-sm bedit" data="' . $lists->id . '" ><i class="fa fa-edit nav-icon"></i></a> <a href="javascript:;" class="btn btn-danger btn-sm bhapus" data="' . $lists->id . '"><i class="fa fa-trash nav-icon"></i></a>';
		}
		$result = array(
			"draw" => $draw,
			"recordsTotal" => $query->num_rows(),
			"recordsFiltered" => $query->num_rows(),
			"data" => $data
		);


		echo json_encode($result);
		exit();
	}

    private function _configUpload()
	{
		$config['upload_path'] = $this->path;
		$config['allowed_types'] = 'gif|jpg|jpeg|png|jpeg|bmp';
		$config['encrypt_name'] = TRUE;
		$this->load->library('upload');
		$this->upload->initialize($config);
	}

	private function _compressImg($name)
	{
		$config['image_library']    = 'gd2';
		$config['source_image']     = $this->path . $name;
		$config['create_thumb']     = FALSE;
		$config['maintain_ratio']   = TRUE;
		$config['quality']          = '70%';
		$config['new_image']        = $this->path . $name;
		$this->load->library('image_lib', $config);
		$this->image_lib->resize();
	}

    function simpan_foto()
	{
		$judul = $this->input->post('post_title');
		
		$user = $this->session->userdata('id');

		if (!empty($_FILES['post_thumbnail']['name'])) {
			$this->_configUpload();

			if ($this->upload->do_upload('post_thumbnail')) {
				$img = $this->upload->data();

				//Compress Image
				$this->_compressImg($img['file_name']);

				$gambar = $img['file_name'];
			} else {
				echo 'gagalgambar';
				$gambar = "gagalupload";
			}
			$datasimpan = array(

				'judul' => $judul,
				'waktu' =>  date('Y-m-d H:i:s'),
				'user' => $user,
				'foto' => $gambar
			);
			$data = $this->db->insert('foto', $datasimpan);
			if ($data) {
				echo 'success';
			} else {
				echo 'error';
			}
		}
	}
		// fungsi nampilin edit pada controller 
	public function showedit()
	{
		$koser = $this->input->get('id');
		$user = $this->db->query("select * from foto where id = '$koser'");
		if ($user->num_rows() > 0) {
			foreach ($user->result() as $data) {
				$hasil = array(
					'judul' => $data->judul,
					
					'foto' => $data->foto,
					
					'id' => $data->id,
				);
			}
		}
		echo json_encode($hasil);
	}

	public function simpanedit()
	{

		$judul = $this->input->post('epost_title');
		$id = $this->input->post('kodedit');
		$user = $this->session->userdata("id");
		$cariold = $this->db->get_where('foto', array('id' => $id))->row();

		if (!empty($_FILES['epost_thumbnail']['name'])) {
			$oldimg = $cariold->foto;
			if ($oldimg) {
				if (is_file($this->path . $oldimg)) {
					unlink($this->path . $oldimg);
				}
			}
			$this->_configUpload();

			if ($this->upload->do_upload('epost_thumbnail')) {
				$img = $this->upload->data();

				//Compress Image
				$this->_compressImg($img['file_name']);

				$gambar = $img['file_name'];
			} else {
				echo 'gagalgambar';
				$gambar = "gagalupload";
			}
			$datasimpan = array(

				'judul' => $judul,
				'waktu' =>  date('Y-m-d H:i:s'),
				'user' => $user,
				'foto' => $gambar

			);
			$this->db->where('id', $this->input->post('kodedit'));
			$data = $this->db->update('foto', $datasimpan);
			if ($data) {
				echo 'success';
			} else {
				echo 'error';
			}
		} else {
			$datasimpan = array(

				'judul' => $judul,
				'waktu' =>  date('Y-m-d H:i:s'),
				'user' => $user,


			);
			$this->db->where('id', $this->input->post('kodedit'));
			$data = $this->db->update('foto', $datasimpan);
			if ($data) {
				echo 'success';
			} else {
				echo 'error';
			}
		}
	}


	public function hapus_foto()
	{

		$id = $this->input->post('id');
		$foto = $this->db->query("select * from foto where id ='$id' ")->row();

		if ($foto) {
			
			$img = $foto->foto;
			$image = $this->path . $img;

			if ($img) {
				if (is_file($image)) {
					unlink($image);
				}
			}
			$data = $this->db->query("DELETE FROM foto WHERE id = '$id' ");
			if ($data) {
				echo 'success';
			} else {
				echo 'error';
			}
		
		}
	}

    


	
}