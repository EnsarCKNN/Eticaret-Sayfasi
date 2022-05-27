<?php session_start(); ?>
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
         include('baglanti.php');
        $kullan=$_POST['kullanıcı'];
        $sifre=$_POST['sifre'];

    $query = $conn->query("SELECT * FROM veri WHERE kullanıcı='$kullan' && sifre='$sifre' ", PDO::FETCH_ASSOC);

            if($query->rowcount()) {
                echo 'Baglantı Başarılı';

                $_SESSION['kullan']='kullanıcı';
                ?>
                        <script>
                            setTimeout(function(){location.href="index.php"} , 1000); 
                        </script>


                <?php

            }
            else{
                echo 'Bağlantı Kurulamadı';
            }


    ?>

</body>
</html>