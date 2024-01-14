<?php
    $conn = mysqli_connect("localhost", "root", "", "eposyandu");

    $func_ibu = $_POST['func_ibu'];
    
    if($func_ibu == "update_data_ibu"){
        $data = $_POST['ibu'];
        $id_ibu = $_POST['id_ibu'];
        
        $nama_ibu =htmlspecialchars( $data['nama_ibu']);
        $nik_ibu= htmlspecialchars($data['nik_ibu']);
        $alamatu = htmlspecialchars($data['alamat']);
        $no_kontak = htmlspecialchars($data['no_kontak']);
        
        
        $update = mysqli_query($conn, "UPDATE ibu SET nama_ibu='$nama_ibu', 
                                        nik_ibu='$nik_ibu', 
                                        alamat='$alamat', 
                                        no_kontak='$no_kontak'
                                        WHERE id_ibu='$id_ibu'");
      
        if($update){
            echo "sukses";
        } else {
            echo "error";
        }
   
    } else if($func_ibu == "delete"){
        $id_ibu = $_POST['id_ibu'];
        $del = mysqli_query($conn, "DELETE FROM ibu WHERE id_ibu='$id_ibu'");
        
        if($del){
            echo "sukses";
        } else {
            echo "error";
        }

   } else if($func_ibu == "tambah_data_ibu"){
        $data = $_POST['ibu'];   
        $nama_ibu = $data['nama_ibu'];
        $nik_ibu = htmlspecialchars($data['nik_ibu']);
        $alamat = htmlspecialchars($data['alamat']);
        $no_kontak = htmlspecialchars($data['no_kontak']);
        
        $tambah = mysqli_query($conn, "INSERT INTO ibu(id_ibu, nik_ibu, nama_ibu, no_kontak, alamat) 
                        VALUES('','$nik_ibu', '$nama_ibu' ,'$alamat','$no_kontak')");
        
        if($tambah){
            echo "sukses";
        } else {
            echo "ERROR";
        }
   }
//     }
?>