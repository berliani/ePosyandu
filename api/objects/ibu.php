<?php
    class Ibu{
        private $conn;
        private $table_nama = "ibu";

        public $id_ibu;
        public $nama_ibu;
        public $nik_ibu;
        public $tgl_lahir;
        public $alamat;
        public $no_kontak;
        public $startPage;
        public $dataPerPage;

        public function __construct($db){
            $this->conn = $db;
            $this->id_ibu = uniqid("ib");
        }

        function read(){
            $query = "SELECT * FROM " . $this->table_nama;

            $stmt = $this->conn->prepare($query);

            $stmt->execute();

            return $stmt;
        }

        function readPagination(){
            $query = "SELECT * FROM " . $this->table_nama. " LIMIT $this->startPage, $this->dataPerPage";

            $stmt = $this->conn->prepare($query);

            $stmt->execute();

            return $stmt;
        }

        function create(){
            $query = "INSERT INTO " . $this->table_nama . " SET nama_ibu= '$this->nama_ibu', nik_ibu='$this->nik_ibu', tgl_lahir='$this->tgl_lahir', alamat='$this->alamat', no_kontak='$this->no_kontak'";

            $stmt = $this->conn->prepare($query);
        
            // execute query
            if($stmt->execute()){
                return true;
            }
            return false;
        }

        function read_one(){
  
            // query to read single record
            $query = "SELECT * FROM $this->table_nama WHERE id_ibu = '$this->id_ibu'";
          
            // prepare query statement
            $stmt = $this->conn->prepare( $query );
          
            // bind id of product to be updated
          
            // execute query
            $stmt->execute();
          
            // get retrieved row
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
          
            // set values to object properties
            $this->nama_ibu = $row['nama_ibu'];
            $this->nik_ibu = $row['nik_ibu'];
            $this->tgl_lahir = $row['tgl_lahir'];
            $this->alamat = $row['alamat'];
            $this->no_kontak = $row['no_kontak'];
        }

        public function update(){
  
			// update query
			$query = "UPDATE $this->table_nama 
					SET nama_ibu = '$this->nama_ibu', 
						nik_ibu = '$this->nik_ibu', 
                        tgl_lahir = '$this->tgl_lahir', 
						alamat = '$this->alamat ', 
						no_kontak = '$this->no_kontak'
					WHERE id_ibu = '$this->id_ibu'";
		  
			// prepare query statement
			$stmt = $this->conn->prepare($query);
		  
			// execute the query
			if($stmt->execute()){
				return true;
			}
		  
			return false;
		}

        function delete(){
  
            // delete query
            $query = "DELETE FROM " . $this->table_nama . " WHERE id_ibu = $this->id_ibu";
          
            // prepare query
            $stmt = $this->conn->prepare($query);
          
            // execute query
            if($stmt->execute()){
                return true;
            } 
            return false;
        }
    }
?>