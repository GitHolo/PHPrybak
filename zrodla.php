<?php $baseUrl = 'http://' . $_SERVER['HTTP_HOST'] . rtrim(dirname($_SERVER['SCRIPT_NAME']), '/');
$baseUrl = str_replace('\\', '', $baseUrl);


include ('languages.php');

?>
<!DOCTYPE html>
<html lang=<?php echo "'".$selectedLanguage."'>"?>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rybak</title>
    <link rel="icon" type="image/jpg" href="<?php echo $baseUrl; ?>/images/licensed-image.jpg" />
    <script defer src="<?php echo $baseUrl; ?>/logic.js"></script>
    <link href="<?php echo $baseUrl; ?>/style-offpage.css" rel="stylesheet" />
    <link href="<?php echo $baseUrl; ?>/search-tool.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;700&display=swap"
      rel="stylesheet"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </head>
  <body>
  <?php include('header.php');
    echo "<section class='content-background'>";
    include('announcement.php');?>
      <div class="about-us" style="padding-bottom: 0;">
        <h2 style="margin: 0"><?php echo translate('sources'); ?></h2>
        <p class="about-us-content">
          <div>
          <a class="zrodla" href="https://pl.wikipedia.org/">https://pl.wikipedia.org/</a>
        </div><div>
          <a class="zrodla" href="https://en.wikipedia.org/">https://en.wikipedia.org/</a>
        </div><div>
          <a class="zrodla" href="https://species.wikimedia.org/">https://species.wikimedia.org/</a>
        </div><div>
          <a class="zrodla" href="http://www.aquamaps.org/">http://www.aquamaps.org/</a>
        </div><div>
          <a class="zrodla" href="http://www.fishing.pl/">http://www.fishing.pl/</a>
        </div><div>
          <a class="zrodla" href="https://www.researchgate.net/">https://www.researchgate.net/</a>
        </p></div>
		<div>
          <a class="zrodla" href="https://atlasryb.online/">https://atlasryb.online/</a>
        </div>
      </div>
      <a class="zrodla" href="<?php echo $baseUrl; ?>?lang=<?php echo $selectedLanguage?>"><h2><?php echo translate('back'); ?></h2></a>
      <div style="padding: 400px;"></div>
      </div>
      <?php include('footer.php'); ?>
    </section>
  </body>
</html>
