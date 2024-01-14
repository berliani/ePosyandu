<?php
    session_start();
    if(!isset($_SESSION['username_admin'])){
        header("location: ");
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../tambahcss.css">
    <link rel="shortcut icon" href="../img/icon/logoremove.png" type="image/x-icon">
    <title>Form Tambah Vaksin/Vitamin</title>
</head>
<body style="background-image: url(../img/Menu/bg1.png); background-repeat: repeat-y;">
    <?php
        include "../sidebar.html";
    ?>
    <fieldset>
        <form class="form-horizontal shadow p-3 mb-5 bg-body rounded bg-light" action="prosesTambahVaksin.php" method="post">
            <h3>Tambah Data Vaksin/Vitamin</h3>
            <div class="form-group">
                <label for="nama_vaksin" id="label">Nama Vaksin/Vitamin</label>
                <input type="text" class="form-control" id="nama_vaksin" name="nama_vaksin">
            </div>
            <div class="form-group row">
                <button onclick="window.location.href='crudVaksin.php'" type="button" class="btn btn-success col-form"> KEMBALI </button>
                <button type="submit" id="ttambah" class="btn btn-success col-form"> TAMBAH </button>  
                <span id="status"></span>
            </div>   
        </form>
    </fieldset>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</body>
</html>
