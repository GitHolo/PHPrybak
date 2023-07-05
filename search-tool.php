<div class="search-tool">
    <div class="fish-container">
        <h2>Szukaj</h2>
        <div class="search-container">
            <input type="text" id="search" placeholder="Szukaj ryb...">
        </div>
        <div class="fish-tool">
            <div class="fish-list">
                <?php
               $db = mysqli_connect("localhost","root","","rybak");
               $sql1 = "SELECT fish.*, fishdesc.*
                        FROM fish
                        INNER JOIN fishdesc ON fish.fishID = fishdesc.fishID";
               $result = $db->query($sql1);
           
                    while ($row = $result->fetch_assoc()) {
                        $description = $row['desc'];
                        $image = $row['img'];
                        $fishName = $row['name'];

                        echo "<div class='fish-item' data-description='{$description}'>";
                        echo "<a href='ryba.php?id=".$row['fishID']."'>";
                        echo "<img src='{$image}'>";
                        echo "<div class='fish-name'>{$fishName}</div>";
                        echo "</a>";
                        echo "</div>";
                    }
                ?>
            </div>
        </div>
        <div>
            <a class="zrodla" href="../zrodla.php">Źródła</a>
        </div>
    </div>
    <script src="logic.js"></script>
    <script>
        search();
    </script>
</div>
