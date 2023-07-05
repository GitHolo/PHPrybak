<?php include('header.html');
    echo "<section class='content-background'>";
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
                    echo $row['maxLength']."m;";
                  }
                  else{
                    echo $row['maxLength']*100;
                    echo "cm;";
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
                <div class='fish-record'>
                  <p class='fish-record-text'>
                    Wędkarski rekord polski
                  </p>
                  <div class='vertical-hr'></div>
                  <div class='fish-record-measurement'>
                  <p class='measurement-value'>";
                  if ($row['recordWeight'] >=1){
                    echo $row['recordWeight'];
                    echo " KG";
                  }
                  elseif($row['recordWeight']==null){
                    echo "brak";
                  }
                  else{
                    echo $row['recordWeight']*1000;
                    echo " g";
                  };
                  $record=floatval($row['recordWeight']);
                  $lbs= 2.20462262185;
                  echo "</p>
                  <p class='measurement-value'>".sprintf("%.1f", $record * $lbs)." LB</p>
                </div>
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
                        <td class='tabel-right'>brak</td>
                      </tr>
                      <tr>
                        <td class='tabel-left'>możliwość zabrania z łowiska w ciągu doby</td>
                        <td class='tabel-right'>do 5 kg</td>
                      </tr>
                      <tr>
                        <td class='tabel-bottom-left'>
                          okres ochronny
                        </td>
                        <td class='tabel-bottom-right'>
                          brak
                        </td>
                      </tr>
                    </tbody>
                  </table></div>
                  <div class='fish-location'>
                    <div>

                      <p class='fish-location-title'>
                        WYSTĘPOWANIE
                      </p>
                      <ul style='width:".$row['width']."px;'>
                        <li>rzeki</li>
                        <li>zbiorniki zaporowe</li>
                        <li>duże jeziora</li>
                      </ul>
                    </div>
                    <div class='vertical-hr-two' style='".$row['margin']."'></div>
                    <div>
                      <p class='fish-location-title'>
                        PRZYNĘTY
                      </p>
                      <ul>
                        <li>czerwone i białe robaki</li>
                        <li>chrząszcze i szarańczaki</li>
                        <li>przynęty sztuczne</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
        </div>
    </div>
        <hr />";
        include('search-tool.php');
        include('footer.html');
        
      
      echo "</section>";?>