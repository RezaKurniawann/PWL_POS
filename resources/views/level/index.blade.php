@extends('layouts.template')
@section('content')
<div class="card card-outline card-primary">
    <div class="card-header">
        <h3 class="card-title">{{ $page->title }}</h3>
        <div class="card-tools">
            <a class="btn btn-sm btn-primary mt-1" href="{{ url('level/create') }}">Tambah</a>
            <button onclick="modalAction('{{url('level/create_ajax')}}')" class="btn btn-sm btn-success mt-1">Tambah Ajax</button>
        </div>
    </div>
    <div class="card-body">
        @if (session ('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif
        @if (session ('error'))
            <div class="alert alert-danger">{{ session('error') }}</div>
        @endif
        <!-- Make table responsive -->
        <div class="table-responsive">
            <table class="table table-bordered table-striped table-hover table-sm w-100" id="table_level">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Level Kode</th>
                        <th>Level Nama</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
</div>
@endsection

@push('css')
@endpush

@push('js')
<script>
    $(document).ready(function() {
        // Inisialisasi DataTables untuk menampilkan data level
        var dataLevel = $('#table_level').DataTable({
            serverSide: true, // Menggunakan server-side processing
            ajax: {
                "url": "{{ url('level/list') }}", // URL untuk mengambil data level
                "dataType": "json",
                "type": "POST", // Gunakan POST untuk permintaan data
            },
            columns: [
                {
                    data: "DT_RowIndex", // Nomor baris secara otomatis
                    className: "text-center",
                    orderable: false,
                    searchable: false
                },
                {
                    data: "level_kode", // Kode level
                    orderable: true,
                    searchable: true
                },
                {
                    data: "level_nama", // Nama level
                    orderable: true,
                    searchable: true
                },
                {
                    data: "aksi", // Kolom untuk tindakan
                    orderable: false,
                    searchable: false
                }
            ]
        });
    });
</script>
@endpush