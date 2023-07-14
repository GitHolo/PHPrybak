<?php $baseUrl = 'http://' . $_SERVER['HTTP_HOST'] . rtrim(dirname($_SERVER['SCRIPT_NAME']), '/');
$baseUrl = str_replace('\\', '', $baseUrl);
?>
<link href="<?php echo $baseUrl; ?>/search-tool.css" rel="stylesheet" />
<div class="search-tool">
    <div class="fish-container">
        <h2><?php echo translate('search'); ?></h2>
        <div class="search-container">
            <input type="text" id="search" placeholder=<?php echo "'".translate('search-fish')."'"; ?>>
        </div>
        <div class="fish-tool">
            <div class="fish-list">
                <?php
               $db = mysqli_connect("localhost","root","","rybak");
               $sql1 = "SELECT fish.*, fishdesc_".$selectedLanguage.".*
               FROM fish
               INNER JOIN fishdesc_".$selectedLanguage." ON fish.fishID = fishdesc_".$selectedLanguage.".fishID
               ORDER BY fishdesc_".$selectedLanguage.".name ASC";
               $result = $db->query($sql1);
           
                    while ($row = $result->fetch_assoc()) {
                        $description = $row['desc'];
                        $image = $row['img'];
                        $fishName = $row['name'];
                        echo "<div class='fish-item' data-description='".htmlspecialchars($description, ENT_QUOTES)."'>";
                        echo "<a href='ryba.php?id=".$row['fishID']."&lang=".$selectedLanguage."'>";
                        echo "<img src='".$baseUrl.$image."'>";
                        echo "<div class='fish-name'>".htmlspecialchars($fishName, ENT_QUOTES)."</div>";
                        echo "</a>";
                        echo "</div>";
                    }
                ?>
           </div>
          </div>
        <div>
            <a class="zrodla" href="<?php echo $baseUrl; ?>/zrodla.php?lang=<?php echo $selectedLanguage?>"><?php echo translate('sources'); ?></a>
          </div>
        </div>
        <script src="logic.js"></script>
        <script>
          search();
        </script>
      </div>
