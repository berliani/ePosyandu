<?php
  session_start();
  if(!isset($_SESSION['username_admin'])){
    header("location: ");
  }
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<link rel="shortcut icon" href="../img/icon/logoremove.png" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="../tambahcss.css">
</head>
<body style="background-image: url(../img/Menu/bg1.png); background-repeat: repeat-y;">
    <?php
        include "../sidebar.html";
    ?>
    <fieldset>
        <form class="form-horizontal shadow p-3 mb-5 bg-body rounded bg-light">
            <h3>Edit Data Ibu</h3><br>
			<div class="form-group">
				<label for="nik_ibu" id="label">NIK Ibu</label>
				<input type="text" class="form-control" id="nik_ibu">
			</div>
			
			<div class="form-group">
				<label for="nama_ibu" id="label">Nama Ibu</label>
				<input type="text" class="form-control" id="nama_ibu">
			</div>

			<div class="form-group">
				<label for="tgl_lahir" id="label">Tanggal Lahir Ibu (yyyy-mm-dd)</label>
				<input type="text" class="form-control" id="tgl_lahir">
			</div>

			<div class="form-group">
				<label for="alamat" id="label">Alamat</label>
				<input type="text" class="form-control" id="alamat">
			</div>

			<div class="form-group">
				<label for="no_kontak" id="label">No Telp</label>
				<input type="text" class="form-control" id="no_kontak">
			</div>
		


		<div class="form-group row">
		<button onclick="window.location.href='crudIbu.php'" type="button"  class="btn btn-success col-form"> KEMBALI </button>
		<button id="tupdate" type="button" class="btn btn-success col-form" id="tupdate"> PERBARUI </button>
		<span id="status"></span>
	</div>
		</form>
	</fieldset>

	<script type="text/javascript">
		var nik_ibu;
		var nama_ibu;
		var tgl_lahir;
		var alamat;
		var no_kontak;
		var ibu;
    $(document).ready(function () {
    	$(document).ready(function(){

			$.ajax({
					type : "GET",
					url: "../api/Ibu/read_one.php",
					data: {func_ibu : "ambil_single_data", id_ibu: "<?php echo $_GET['id_ibu']?>"},
					cache: false,
					success: function(msg){
						//karna di server pembatas setiap data adalah |
						//maka kita split dan akan membentuk array
						data = msg;
						nik_ibu = data['nik_ibu'];
						nama_ibu = data['nama_ibu'];
						tgl_lahir = data['tgl_lahir'];
						alamat = data['alamat'];
						no_kontak = data['no_kontak'];
						

						//masukan ke masing - masing textfield
						$("#nik_ibu").val(nik_ibu);
						$("#nama_ibu").val(nama_ibu);
						$("#tgl_lahir").val(tgl_lahir);
						$("#alamat").val(alamat);
						$("#no_kontak").val(no_kontak);
					}
			});

    		$("#tupdate").click(function(){
    			nik_ibu = $("#nik_ibu").val();
    			nama_ibu = $("#nama_ibu").val();
				tgl_lahir = $("#tgl_lahir").val();
    			alamat = $("#alamat").val();
    			no_kontak = $("#no_kontak").val();
				ibu = {
					"nik_ibu" : nik_ibu,
					"nama_ibu" : nama_ibu,
					"tgl_lahir" : tgl_lahir,
					"alamat" : alamat,
					"no_kontak" : no_kontak
				};	

				
    			$("#loading").show();
    			$.ajax({
    			type : "POST",
    			url : "../api/Ibu/update.php",
    			data : {ibu : ibu, func_ibu : "update_data_ibu", id_ibu: "<?php echo $_GET['id_ibu']?>"},
    			cache : false,
    			success : function(msg){
    				if(msg.message=="ibu was updated."){
    					alert("Data Ibu Berhasil Diperbarui");
    					window.location.href="crudIbu.php";
    				}else{
    					$("#status").html("ERROR. . . ");
    				}
    				$("#loading").hide();
       			}
    		});
    		});
    	});
    });
 	</script>
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
 	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</body>
</html>