<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class StokSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {   
        $now = Carbon::now();

        DB::table('t_stok')->insert([
            ['barang_id' => 1, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 50],
            ['barang_id' => 2, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 30],
            ['barang_id' => 3, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 20],
            ['barang_id' => 4, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 40],
            ['barang_id' => 5, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 100],
            ['barang_id' => 6, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 60],
            ['barang_id' => 7, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 80],
            ['barang_id' => 8, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 90],
            ['barang_id' => 9, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 110],
            ['barang_id' => 10, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 120],
            ['barang_id' => 11, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 70],
            ['barang_id' => 12, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 50],
            ['barang_id' => 13, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 130],
            ['barang_id' => 14, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 140],
            ['barang_id' => 15, 'user_id' => 1, 'stok_tanggal' => $now, 'stok_jumlah' => 90],
        ]);
    }
}
