<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/jpg" href="../images/licensed-image.jpg" />
    <title>Rybak</title>
    <script defer src="logic.js"></script>
    <link href="style.css" rel="stylesheet" />
    <link href="search-tool.css" rel="stylesheet" />
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
          Wszelkie informacje na temat ryb oraz ich wyglądu
        </h2>
        <p class="paragraph-welcome">
          Strona na praktyki ZSK Maksymiliana Felczaka i Bartosza
          Borzyskowskiego.
        </p>
        <p style="margin: 0">
          <button class="startButton" id="startButton" onclick="startButton()">
            Start
          </button>
        </p>
      </div>
    </section>
    <section class="content-background">
      <?php include('announcement.html');?>
      <div class="about-us">
        <h2 style="margin: 0">O nas</h2>
        <p class="about-us-content">
          Jesteśmy zespołem praktykantów, którzy stworzyli stronę internetową z
          rysunkami ryb oraz ich opisami. Naszym celem jest umożliwienie
          użytkownikom zobaczenia i zapoznania się z różnymi gatunkami ryb w
          formie wirtualnej. Na naszej stronie internetowej znajdziecie rysunki
          różnych gatunków ryb, które zostały starannie wykonane i odwzorowane w
          najdrobniejszych szczegółach. Każdy model zawiera opis gatunku ryby,
          jej charakterystyczne cechy, miejsce występowania oraz inne
          wartościowe informacje. Nasza strona internetowa to doskonałe miejsce
          dla wszystkich miłośników ryb, którzy chcą poznać różnorodność
          gatunkową, charakterystyczne cechy poszczególnych ryb, a także ich
          siedliska i wymagania środowiskowe. Dzięki naszej stronie internetowej
          użytkownicy mają okazję zapoznać się z różnymi gatunkami ryb bez
          wychodzenia z domu. Staramy się, aby nasza strona była łatwa w
          obsłudze i przejrzysta, dzięki czemu użytkownicy mogą szybko i łatwo
          znaleźć interesujące ich modele ryb oraz wartościowe informacje na ich
          temat. Dziękujemy za zainteresowanie naszą stroną internetową i
          zachęcamy do korzystania z niej, aby poznać i zobaczyć różnorodność
          gatunków ryb.
        </p>
      </div>
      <hr />
      <?php	
        include('search-tool.php');	
        include('footer.html');  	
        echo "</section>";?>
  </body>
</html>
