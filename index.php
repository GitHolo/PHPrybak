<?php $baseUrl = '';
if ($_SERVER['REQUEST_URI'] !== '/') {
    $baseUrl = rtrim(dirname($_SERVER['SCRIPT_NAME']), '/');
}
$languages = [
    'pl' => [
      'name' => 'Polish',
      'flag' => $baseUrl.'/images/flag-pl.png'
    ],
    'en' => [
        'name' => 'English',
        'flag' => $baseUrl.'/images/flag-en.png'
    ],
    'es' => [
        'name' => 'Spanish',
        'flag' => $baseUrl.'/images//flag-es.png'
    ],
    'fr' => [
        'name' => 'French',
        'flag' => $baseUrl.'/images//flag-fr.png'
    ]
];
$translations = [
  'pl' => [
      'description-welcome' => 'Wszelkie informacje na temat ryb oraz ich wyglądu',
      'paragraph-welcome' => 'Strona na praktyki ZSK Maksymiliana Felczaka i Bartosza
      Borzyskowskiego.',
      'about-us-content' => 'Jesteśmy zespołem praktykantów, którzy stworzyli stronę internetową z
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
      gatunków ryb.'
  ],
  'en' => [
      'welcome' => 'Welcome to our website!',
      'description' => 'This is a sample description.'
  ],
  'es' => [
      'welcome' => '¡Bienvenido a nuestro sitio web!',
      'description' => 'Esta es una descripción de ejemplo.'
  ],
  'fr' => [
      'welcome' => 'Bienvenue sur notre site web !',
      'description' => 'Ceci est une description d\'exemple.'
  ]
];
$selectedLanguage = $_SESSION['language'] ?? 'en';
if (isset($_GET['lang']) && array_key_exists($_GET['lang'], $languages)) {
  $selectedLanguage = $_GET['lang'];
  $_SESSION['language'] = $selectedLanguage;
}
function translate($key) {
  global $selectedLanguage, $translations;
  if (isset($translations[$selectedLanguage][$key])) {
      return $translations[$selectedLanguage][$key];
  }
  return $key;
}?>
<!DOCTYPE html>
<html lang=<?php echo "'".$selectedLanguage."'>"?>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rybak</title>
    <link rel="icon" type="image/jpg" href="<?php echo $baseUrl; ?>/images/licensed-image.jpg" />
    <script defer src="<?php echo $baseUrl; ?> /logic.js"></script>
    <link href="<?php echo $baseUrl; ?> /style.css" rel="stylesheet" />
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
          Strona na praktyki ZSK Maksymiliana Felczaka i Bartosza
          Borzyskowskiego.
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
        include('footer.php');?>
    </section>
  </body>
</html>
