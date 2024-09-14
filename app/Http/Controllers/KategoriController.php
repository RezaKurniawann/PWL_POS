<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class KategoriController extends Controller
{
    public function index () {
        // $data = [
        //     'kategori_kode' => 'SMK',
        //     'kategori_nama' => 'Snack/Makanan Ringan',
        //     'created_at' => now()
        // ];

        // DB::table ('m_kategori') -> insert ($data);
        // return 'Insert data baru berhasil';

        // $row = DB::table ('m_kategori') -> where('kategori_kode', 'SMK') -> update(['kategori_nama' => 'Camilan']);
        // return 'update data berhasil, jumlah data yang di update : ' . $row . ' baris';

        // $row = DB::table ('m_kategori') -> where ('kategori_kode', 'SMK') -> delete();
        // return 'Delete data berhasil, jumlah data yang dihapus : ' . $row . ' baris';

        $data = DB::table ('m_kategori') -> get();
        return view ('kategori', ['data' => $data]);
    }
}