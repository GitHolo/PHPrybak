<?php 
    $baseUrl = '';
    if ($_SERVER['REQUEST_URI'] !== '/') {
        $baseUrl = rtrim(dirname($_SERVER['SCRIPT_NAME']), '/');
    }
    if (!isset($_GET['id'])) {
      echo "<h1>Błąd: nie określono identyfikatora ryby.</h1>
      <a class='zrodla' href='".$baseUrl."'><h2>Powrót</h2></a>";
      exit;
    }
    include('header.php');
    echo "<section class='content-background' style='max-width:1400px;'>";
    include('announcement.html');
    $db = mysqli_connect("localhost","root","","rybak");
    
    $fishID = $_GET['id'];
    $sql1 = "SELECT fish.*, fishdesc.*
             FROM fish
             INNER JOIN fishdesc ON fish.fishID = fishdesc.fishID
             WHERE fish.fishID = $fishID";
    $result = $db->query($sql1);
    $row = $result->fetch_assoc();
      echo "<div id='additionalPixels' data-value='".$row['additionalPixels']."' style='display: none;'></div><div class='about'>
            <div class='about-description'>
              <div class='about-content'>
                <div class='about-content-description'>
              <h2 class='about-content-title'>Opis</h2>
              <p>".$row["desc"]."</p></div>
        
        <div class='about-content-description'><h2 class='about-content-title'>Cechy charakterystyczne</h2>
          <p>".$row['chara']."</p>
        </div>
        <div class='about-content-description'><h2 class='about-content-title'>Rozród</h2>
          <p>".$row['reprod']."</p>
        </div>
        <div class='about-content-description' style='border-bottom: none;'>
        <h2 class='about-content-title'>Występowania gatunku</h2>
        <img src='".$row['appearImg']."'>
        <p>".$row['appear']."</p>
      </div>
      </div>
        <div class='about-fish-img'>
          <div class='about-title'>
            <h2 style='margin: 0'>".$row['name']." <br><span class='latin-name'>".$row['nameLatin']."</span></h2>
            <p class='english-name'><abbr title='Angielski'>ANG.</abbr> <span lang='en'>".$row['nameEng']."</span></p>
          </div>
        
                <img src='".$row['img']."' alt='".$row['name']."'>
                <div>
                  <h3>Rozmiary</h3>
                  <p>długość do ";
                  if ($row['maxLength'] >=1){
                    echo $row['maxLength']." m;";
                  }
                  else{
                    echo $row['maxLength']*100;
                    echo " cm;";
                  };
                  echo " masa do ";
                  if ($row['maxWeight'] >=1000){
                    echo $row['maxWeight']/1000;
                    echo "kg";
                  }
                  else{
                    echo $row['maxWeight'];
                    echo "g";
                  };

                  echo "</p>
                  </div>
                <div class='fish-record' style='height:50px'>
                  <p class='fish-record-text'>
                    Wędkarski rekord polski
                  </p>
                  <div class='vertical-hr'></div>
                  <div class='fish-record-measurement'>
                  <p class='measurement-value'>";
                  $record=floatval($row['recordWeight']);
                  if ($record >=1){
                    echo $row['recordWeight'];
                    echo " KG";
                  }
                  elseif($record==null){
                    echo "brak";
                  }
                  else{
                    echo $record*1000;
                    echo " g";
                  };
                  echo "</p><p class='measurement-value'>";
                  $lbs= 2.20462262185;
                  if ($row['recordWeight']!==null){
                    $result = $record * $lbs;
                    $formatted2 = sprintf("%.2f", $result);
                    if (substr($formatted2, -1) === '0') {
                        $formatted2 = sprintf("%.1f", $result);
                    }
                    echo $formatted2." LB</p>";
                  }
                echo "</div>
                </div>
                  <div class='table-wrapper'>
                  <table>
                    <thead>
                      <tr>
                        <th colspan='2' class='th-header'>OKRES I WYMIARY OCHRONNE W WODACH PZW</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class='tabel-left'>wymiar ochronny</td>
                        <td class='tabel-right'>";
                        $protect = $row['protect'];
                        if ($protect >= 100){
                          echo "do ".($protectPoss/100)." m";
                        }
                        elseif ($protect == null){
                          echo "brak";
                        }
                        else{
                          echo "do ".$protect." cm";
                        }
                        echo "</td>
                      </tr>
                      <tr>
                        <td class='tabel-left'>możliwość zabrania z łowiska w ciągu doby</td>
                        <td class='tabel-right'>";
                        $protectPoss = $row['protectPoss'];
                        if ($protectPoss >= 1000){
                          echo "do ".($protectPoss/1000)." kg";
                        }
                        elseif ($protectPoss > 10){
                          echo "do ".$protectPoss." g";
                        }
                        elseif ($protectPoss === null){
                          echo "bez limitu";
                        }
                        else{
                          echo "do ".$protectPoss." szt.";
                        }
                        echo "</td>
                      </tr>
                      <tr>
                        <td class='tabel-bottom-left'>
                          okres ochronny
                        </td>
                        <td class='tabel-bottom-right'>";
                        $sql3 = "SELECT ptime.name
                        FROM protecttimes
                        INNER JOIN fish ON protecttimes.fishID = fish.fishID
                        INNER JOIN ptime ON protecttimes.protectID = ptime.protectID
                        WHERE fish.fishID = $fishID";
                        $result3 = $db->query($sql3);
                        if ($result3->num_rows > 0) {
                            while ($row3 = $result3->fetch_assoc()) {
                                echo "<span style='color:#3360bb;'>•</span>".$row3["name"] . "<br>";
                            }
                        } else {
                            echo "brak";
                        }
                        echo "</td>
                      </tr>
                    </tbody>
                  </table></div>
                  <div class='fish-location'>
                    <div>

                      <p class='fish-location-title'>
                        WYSTĘPOWANIE
                      </p>
                      <ul style='width:".$row['width']."px;'>";
                      $sql4 = "SELECT loc.name
                      FROM fishlocs
                      INNER JOIN fish ON fishlocs.fishID = fish.fishID
                      INNER JOIN loc ON fishlocs.locID = loc.locID
                      WHERE fish.fishID = $fishID";
                      
                      $result4 = $db->query($sql4);
                      
                      if ($result4->num_rows > 0) {
                          while ($row4 = $result4->fetch_assoc()) {
                              echo "<li>".$row4["name"]."</li>";
                          }
                      } else {
                          echo "brak";
                      }
                        echo "
                      </ul>
                    </div>
                    <div class='vertical-hr-two' style='margin-left:".$row['margin']."px'></div>
                    <div>
                      <p class='fish-location-title'>
                        PRZYNĘTY
                      </p>
                      <ul>";
                      $sql2 = "SELECT bait.name
                      FROM fishbaits
                      INNER JOIN fish ON fishbaits.fishID = fish.fishID
                      INNER JOIN bait ON fishbaits.BaitID = bait.BaitID
                      WHERE fish.fishID = $fishID";
                      
                      $result2 = $db->query($sql2);
                      
                      if ($result2->num_rows > 0) {
                          while ($row2 = $result2->fetch_assoc()) {
                              echo "<li>".$row2["name"]."</li>";
                          }
                      } else {
                          echo "brak";
                      }
                      echo "</ul>
                    </div>
                  </div>
                </div>
              </div>
        </div>
    </div>
        <hr />";
        include('search-tool.php');
        include('footer.php');
        
      
      echo "</section>";?>