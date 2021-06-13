<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Input Buku</title>
</head>
<body>
<div class="container-fluid" id= "content" >
    <div class="card">
	    <div class="card-header">
		    Form Buku
	    </div>
	    <div class="card-body">
            <form method="post">
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label fw-bold">Kode Buku</label>
                    <input type="text" name="kode_buku" class="form-control" id="exampleFormControlInput1" readonly value="AP081586649396" required>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label fw-bold">Judul Buku</label>
                    <input type="text" name="Judul_buku" class="form-control" id="exampleFormControlInput1" placeholder="Masukan Judul Buku" required>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label fw-bold">NO ISBN</label>
                    <input type="text" name="isbn" class="form-control" id="exampleFormControlInput1" placeholder="Masukan NO ISBN" required>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label fw-bold">Penulis</label>
                    <input type="text" name="penulis" class="form-control" id="exampleFormControlInput1" placeholder="Masukan Nama Penulis" required>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label fw-bold">Penerbit</label>
                    <input type="text" name="penerbit" class="form-control" id="exampleFormControlInput1" placeholder="Masukan Nama Penerbit" required>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label fw-bold">Tahun Terbit</label>
                    <input type="text" name="tahun terbit" class="form-control" id="exampleFormControlInput1" placeholder="Masukan Tahun Terbit" required>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label fw-bold">Harga Pokok</label>
                    <input type="text" name="harga_pokok" class="form-control" id="exampleFormControlInput1" placeholder="Masukan Harga Pokok" required>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label fw-bold">Harga Jual</label>
                    <input type="text" name="harga_jual" class="form-control" id="exampleFormControlInput1" placeholder="Masukan Harga Jual" required>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label fw-bold">Diskon (%)</label>
                    <input type="number" name="diskon" class="form-control" id="exampleFormControlInput1" placeholder="Masukan Diskon" required>
                </div>
                <button class="btn btn-primary" type="submit" name="simpan" value="SIMPAN">Simpan</button>
        </form>
	    </div>
    </div>
    <div style="padding:10px;">
        <form class="d-flex">
            <label class="me-3">Pencarian</label>
            <input class="form-control me-3" type="search" placeholder="Judul Buku/Penulis" aria-label="Search">
            <button class="btn btn-primary me-2" type="submit">Cari</button>
            <button class="btn btn-outline-success" type="submit">Refresh</button>
        </form>
        <table align="center" border="1" class="mt-4 table table-stripped table-hover bg-white" id="data">
            <tr>
                <th>Kode Buku</th>
                <th>Judul Buku</th>
                <th>NO ISBN</th>
                <th>Penulis</th>
                <th>Penerbit</th>
                <th>Tahun Terbit</th>
                <th>Harga Pokok</th>
                <th>Harga Jual</th>
                <th>Diskon</th>
                <th>edit</th>
                <th>hapus</th>
            </tr>
            <!-- <?php
                $data = $go->tampil($con,$tabel);
                $no = 0;
                if($data ==""){
                    echo "<tr><td colspan='5'>No Record</td></tr>";
                }else{
                    foreach($data as $r){
                    $no++
            ?>
            <tr>
                <td><?php echo $no; ?></td>
                <td><?php echo $r['username']?></td>
                <td><?php echo $r['password']?></td>
                <td><a href="?menu=user&hapus&id=<?php echo $r['id']?>" onclick="return confirm('Hapus Data?')">Hapus</a></td>
                <td><a href="?menu=user&edit&id=<?php echo $r['id']?>">Edit</a></td>
            </tr>
            <?php } } ?> -->
        </table>
    </div>
</div>
    </body>
</html>
