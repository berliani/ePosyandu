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

$db = new Database();
$conn = $db->getConnection();

// Ambil data dari form
$nama_vaksin = $_POST['nama_vaksin'] ?? '';

// Inisialisasi pesan notifikasi
$notification = "";

// Cek apakah data lengkap
if (empty($nama_vaksin)){
    $notification = "Data tidak lengkap!";
} else {
    // Buat query
    $query = "INSERT INTO ref_vaksin (nama_vaksin) VALUES (:nama_vaksin)";

    // Buat prepared statement
    $stmt = $conn->prepare($query);

    // Bind data ke prepared statement
    $stmt->bindParam(":nama_vaksin", $nama_vaksin);

    // Eksekusi prepared statement
    $stmt->execute();

    // Cek apakah data berhasil ditambahkan
    if ($stmt->rowCount() > 0){
        $notification = "Data berhasil ditambahkan!";
    } else {
        $notification = "Data gagal ditambahkan!";
    }
}

// Tutup koneksi
$conn = null;

// Kembalikan notifikasi sebagai JSON
echo json_encode(array("notification" => $notification));
?>
