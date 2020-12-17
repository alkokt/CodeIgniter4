<?php namespace App\Controllers;

use App\Models\AdminModel;

class Admin extends BaseController
{

    protected $komikModel;

    public function __construct()
    {

        $this->komikModel = new AdminModel();
    }

    public function index()
    {
        //$komik = $this->komikModel->findAll();


        $data = [
            'title' => 'Akses Admin',
            'komik' => $this->komikModel->getKomik()
        ];

        //$komikModel = new \App\Models\KomikModel();
        //$komikModel = new KomikModel();

        return view('admin/index', $data);
    }


    public function detail($slug)
    {
        $data = [
            'title' => 'Detail Komik',
            'komik' => $this->komikModel->getKomik($slug)

        ];

        //jika komik tidak ada di tabel
        if (empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik ' . $slug . ' tidak ditemukan.');
        }

        return view('admin/detail', $data);
    }

    public function create()
    {
        // session();
        $data = [
            'title' => 'Form Tambah Data Komik',
            'validation' => \Config\Services::validation()
        ];

        return view('admin/create', $data);
    }

    public function save()
    {

        //validasi input
        if (!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[komik.judul]',
                'errors' => [
                    'required' => '{field} komik harus diisi!',
                    'is_unique' => '{field} komik sudah terdaftar'
                ]
            ],
            'penulis' => [
                'rules' => 'required[komik.penulis]',
                'errors' => [
                    'required' => '{field} komik harus diisi'
                ]
            ],
            'genre' => [
                'rules' => 'required[komik.genre]',
                'errors' => [
                    'required' => '{field} komik harus diisi'
                ]
            ],
            'penerbit' => [
                'rules' => 'required[komik.penerbit]',
                'errors' => [
                    'required' => '{field} komik harus diisi'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ],
            'sinopsis' => [
                'rules' => 'required[komik.sinopsis]',
                'errors' => [
                    'required' => '{field} komik harus diisi'
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            // return redirect()->to('/komik/create')->withInput()->with('validation', $validation);
            return redirect()->to('/admin/create')->withInput();
        }

        //ambil gambar
        $fileSampul = $this->request->getFile('sampul');
        // apakah tidak ada gambar yang di upload
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.jpg';
        } else {
            // generate nama sampul random
            $namaSampul = $fileSampul->getRandomName();
            // pindahkan file ke folder img
            $fileSampul->move('img', $namaSampul);
        }

        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->komikModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'genre' => $this->request->getVar('genre'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul,
            'sinopsis' => $this->request->getVar('sinopsis')
        ]);

        session()->setFlashdata('pesan', 'Data berhasil ditambahkan');

        return redirect()->to('/admin');
    }

    public function delete($id)
    {

        // cari gambar berdasarkan id
        $komik = $this->komikModel->find($id);

        // cek jika file gambarnya default.jpg
        if ($komik['sampul'] != 'default.jpg') {

            // hapus gambar
            unlink('img/' . $komik['sampul']);
        }


        $this->komikModel->delete($id);
        session()->setFlashdata('pesan', 'Data berhasil dihapus');
        return redirect()->to('/admin');
    }

    public function edit($slug)
    {

        $data = [
            'title' => 'Form Ubah Data Komik',
            'validation' => \Config\Services::validation(),
            'komik' => $this->komikModel->getKomik($slug)
        ];

        return view('admin/edit', $data);
    }

    public function update($id)
    {

        // cek judul
        $komikLama = $this->komikModel->getKomik($this->request->getVar('slug'));
        if ($komikLama['judul'] == $this->request->getVar('judul')) {
            $rule_judul = 'required';
        } else {
            $rule_judul = 'required|is_unique[komik.judul]';
        }

        //validasi input
        if (!$this->validate([
            'judul' => [
                'rules' => $rule_judul,
                'errors' => [
                    'required' => '{field} komik harus diisi!',
                    'is_unique' => '{field} komik sudah terdaftar'
                ]
            ],
            'penulis' => [
                'rules' => 'required[komik.penulis]',
                'errors' => [
                    'required' => '{field} komik harus diisi'
                ]
            ],
            'genre' => [
                'rules' => 'required[komik.genre]',
                'errors' => [
                    'required' => '{field} komik harus diisi'
                ]
            ],
            'penerbit' => [
                'rules' => 'required[komik.penerbit]',
                'errors' => [
                    'required' => '{field} komik harus diisi'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ],
            'sinopsis' => [
                'rules' => 'required[komik.sinopsis]',
                'errors' => [
                    'required' => '{field} komik harus diisi'
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            return redirect()->to('/admin/edit/' . $this->request->getVar('slug'))->withInput();
        }

        $fileSampul = $this->request->getFile('sampul');

        // cek gambar apakah tetap gambar lama
        if($fileSampul->getError() == 4){
            $namaSampul = $this->request->getVar('sampulLama');
        } else {
            // generate nama file random
            $namaSampul = $fileSampul->getRandomName();
            // pindahkan gambar
            $fileSampul->move('img', $namaSampul);
            // hapus file lama
            unlink('img/' . $this->request->getVar('sampulLama'));
        }

        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->komikModel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'genre' => $this->request->getVar('genre'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul,
            'sinopsis' => $this->request->getVar('sinopsis')
        ]);

        session()->setFlashdata('pesan', 'Data berhasil diubah!');

        return redirect()->to('/admin');
    }



}