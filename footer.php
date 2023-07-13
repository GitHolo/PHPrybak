<footer>
  <div class="container">
    <h3><?php echo translate('contact'); ?></h3>
    <div>Discord: holocide</div>
    <div>Discord: .soupyboy</div>
    <div>
      <a href="mailto:mfelczak@hotmail.com">mfelczak@hotmail.com</a>
      <a href="mailto:borzyskowskib@gmail.com">borzyskowskib@gmail.com</a>
    </div>
    <?php
    $currentURL = $_SERVER['REQUEST_URI'];
    $newURL = preg_replace('/([&?]lang=[^&]+)/', '', $currentURL);
    if (strpos($newURL, '?') !== false) {
        $newURL .= '&lang='.$selectedLanguage;
    } else {
        $newURL .= '?lang='.$selectedLanguage;
    }
    foreach ($languages as $code => $language) {
      $langURL = $newURL;
      if (strpos($newURL, 'lang=') !== false) {
        $langURL = preg_replace('/([&?]lang=[^&]+)/', '', $newURL);
      }
      $langURL .= '&lang='.$code;
      ?>
      <a href="<?php echo $langURL; ?>">
        <img src="<?php echo $language['flag']; ?>" alt="<?php echo $language['name']; ?>" width="32" height="24">
      </a>
    <?php } ?>
    <a href="<?php echo $newURL; ?>">
      <img src="<?php echo $baseUrl; ?>/images/licensed-image.jpg" alt="Logo" class="footer-image" />
    </a>
  </div>
</footer>
