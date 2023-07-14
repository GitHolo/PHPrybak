<?php
$baseUrl = 'http://' . $_SERVER['HTTP_HOST'] . rtrim(dirname($_SERVER['SCRIPT_NAME']), '/');
$baseUrl = str_replace('\\', '', $baseUrl);

include('languages.php');
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
    <link href="<?php echo $baseUrl; ?>/style.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;700&display=swap"
      rel="stylesheet"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </head>
  <body>
    <section class="welcome-screen">
      <div>
        <h1>Rybak</h1>
        <h2 style="margin: 0" class="description-welcome">
        <?php echo translate('description-welcome'); ?>
        </h2>
        <p class="paragraph-welcome">
        <?php echo translate('paragraph-welcome'); ?>
        </p>
        <div>
        <?php foreach ($languages as $code => $language) { ?>
            <a href="?lang=<?php echo $code; ?>">
                <img src="<?php echo $language['flag']; ?>" alt="<?php echo $language['name']; ?>" width="32" height="24">
            </a>
        <?php } ?>
    </div>
        <p style="margin: 0">
          <button class="startButton" id="startButton" onclick="startButton()">
            Start
          </button>
        </p>
      </div>
    </section>
    <section class="content-background" style="max-width: 1400px;">
      <?php include('announcement.php');?>
      <div class="about-us">
        <h2 style="margin: 0"> <?php echo translate('about-us'); ?></h2>
        <p class="about-us-content">
        <?php echo translate('about-us-content'); ?>
        </p>
      </div>
      <hr />
      <?php	
        include('search-tool.php');	
        include('footer.php');?>
    </section>
  </body>
</html>
