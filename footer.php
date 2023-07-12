<footer>
  <div class="container">
    <h3><?php echo translate('contact'); ?></h3>
    <div>Discord: holocide</div>
    <div>Discord: .soupyboy</div>
    <div>
      <a href="mailto:mfelczak@hotmail.com">mfelczak@hotmail.com</a>
      <a href="mailto:borzyskowskib@gmail.com">borzyskowskib@gmail.com</a>
    </div>
    <?php foreach ($languages as $code => $language) { ?>
            <a href="?lang=<?php echo $code; ?>">
                <img src="<?php echo $language['flag']; ?>" alt="<?php echo $language['name']; ?>" width="32" height="24">
            </a>
        <?php } ?>
    <a href="<?php echo $baseUrl; ?>?lang=<?php echo $selectedLanguage?>">
      <img src="<?php echo $baseUrl; ?>/images/licensed-image.jpg" alt="Logo" class="footer-image" />
    </a>
  </div>
</footer>
