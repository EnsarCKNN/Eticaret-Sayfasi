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
    include("baglanti.php");
    $query = '';

        if(isset($_GET["kat"]))
        {
            $kategori = $_GET["kat"];
            $query = $conn->query("INSERT INTO kategori (kategori) VALUES ('$kategori')", PDO::FETCH_ASSOC);
        }
        
        elseif (isset($_GET["marka"])) {
            $marka = $_GET["marka"];
            $query = $conn->query("INSERT INTO marka (marka) VALUES ('$marka')", PDO::FETCH_ASSOC);
        }
        if ($query) {
            echo 'Başarıyla Eklendi';
            ?>
            <script>
                            setTimeout(function(){location.href="ekleform.php"} , 1000); 
                        </script>
                        <?php
        }
        else {
            echo 'Kayıt Hatası';
            ?>
            <script>
                            setTimeout(function(){location.href="index.php"} , 1000); 
                        </script>
                        <?php
        }
    ?>
</body>
</html>