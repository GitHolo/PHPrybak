<?php 
$baseUrl = 'http://' . $_SERVER['HTTP_HOST'] . rtrim(dirname($_SERVER['SCRIPT_NAME']), '/');
$baseUrl = str_replace('\\', '', $baseUrl);


include ('languages.php');

?>
<!DOCTYPE html>
<html lang=<?php echo "'".$selectedLanguage."'>"?>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/jpg" href="<?php echo $baseUrl; ?>/images/licensed-image.jpg" />
    <title>Rybak</title>
    <script defer src="<?php echo $baseUrl; ?>/logic.js"></script>
    <link href="<?php echo $baseUrl; ?>/style-offpage.css" rel="stylesheet" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;700&display=swap"
      rel="stylesheet"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </head>
  <body>
    <?php include('ryba-content.php');?>
  </body>
</html>
