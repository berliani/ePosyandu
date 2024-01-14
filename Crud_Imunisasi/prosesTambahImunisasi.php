<?php

class Database {
    private $host = "localhost";
    private $username = "root";
    private $password = "";
    private $db_name = "eposyandu";
    public $conn;

    public function getConnection(){
        $this->conn = null;
        try {
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
            $this->conn->exec("set names utf8");
        } catch (PDOException $pdoexcep) {
            echo "Conneciton error : " . $pdoexcep->getMessage();
        }
        return $this->conn;
    }
}

// Ambil data dari formulir
$tgl_imunisasi = $_POST['tgl_imunisasi'] ?? '';
$tinggi_badan = $_POST['tinggi_badan'] ?? '';
$berat_badan = $_POST['berat_badan'] ?? '';
$periode = $_POST['periode'] ?? '';
$nama_anak = $_POST['nama_anak'] ?? '';
$nama_ibu = $_POST['nama_ibu'] ?? '';
$nama_petugas = $_POST['nama_petugas'] ?? '';
$nama_vaksin = $_POST['nama_vaksin'] ?? '';

// Cek apakah data lengkap
if (empty($tgl_imunisasi) || empty($tinggi_badan) || empty($berat_badan) || empty($periode) || empty($nama_anak) || empty($nama_ibu) || empty($nama_petugas) || empty($nama_vaksin)) {
    echo json_encode(array("message" => "Unable to add immunization. Data is incomplete."));
} else {
    // Proses penyimpanan data ke database atau langkah-langkah pemrosesan lainnya

    // Contoh sederhana: cukup mengembalikan pesan bahwa imunisasi berhasil ditambahkan
    echo json_encode(array("message" => "Immunization was added."));
}
?>
