<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    include("adminheader.php");
    $query="";
    $veri = $_GET["form"];
    if($veri == "marka"){
        ?>
        <row>
       <div class='col-md-6 mx-auto mt-3'>
       <h3>Marka</h3>
       </div>
       <div class='col-md-6 mx-auto mt-3'>
       
        <form action="ekle.php" method="get">
            <input text='text' placeholder='Marka Ekle...' class='col-md-12' name='marka'><br><br>
            <button type="submit" class="btn btn-primary">Ekle</button>
        </form>
       </div>
   </row>
        <?php
    }
    else if($veri == "kategori")
    {
        ?>
        <row>
       <div class='col-md-6 mx-auto mt-3'>
       <h3>Kategori</h3>
       </div>
       <div class='col-md-6 mx-auto mt-3'>
       
        <form action="ekle.php" method="get">
            <input text='text' placeholder='Kategori Ekle...' class='col-md-12' name='kat'><br><br>
            <button type="submit" class="btn btn-primary">Ekle</button>
        </form>
       </div>
   </row>
        <?php
    }
    ?>
</body>
</html>
