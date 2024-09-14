<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class PenjualanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $now = Carbon::now();

        DB::table('t_penjualan')->insert([
            ['user_id' => 1, 'pembeli' => 'Andi', 'penjualan_kode' => 'TRX001', 'penjualan_tanggal' => $now],
            ['user_id' => 2, 'pembeli' => 'Budi', 'penjualan_kode' => 'TRX002', 'penjualan_tanggal' => $now],
            ['user_id' => 3, 'pembeli' => 'Cici', 'penjualan_kode' => 'TRX003', 'penjualan_tanggal' => $now],
            ['user_id' => 1, 'pembeli' => 'Dodi', 'penjualan_kode' => 'TRX004', 'penjualan_tanggal' => $now],
            ['user_id' => 2, 'pembeli' => 'Eka', 'penjualan_kode' => 'TRX005', 'penjualan_tanggal' => $now],
            ['user_id' => 3, 'pembeli' => 'Fani', 'penjualan_kode' => 'TRX006', 'penjualan_tanggal' => $now],
            ['user_id' => 1, 'pembeli' => 'Gina', 'penjualan_kode' => 'TRX007', 'penjualan_tanggal' => $now],
            ['user_id' => 2, 'pembeli' => 'Hadi', 'penjualan_kode' => 'TRX008', 'penjualan_tanggal' => $now],
            ['user_id' => 3, 'pembeli' => 'Indra', 'penjualan_kode' => 'TRX009', 'penjualan_tanggal' => $now],
            ['user_id' => 1, 'pembeli' => 'Joni', 'penjualan_kode' => 'TRX010', 'penjualan_tanggal' => $now],
        ]);
    }
}