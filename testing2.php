<?php
session_start();
$baseUrl = '';
if ($_SERVER['REQUEST_URI'] !== '/') {
    $baseUrl = rtrim(dirname($_SERVER['SCRIPT_NAME']), '/');
}

// Step 1: Define available languages
$languages = [
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

// Step 2: Define translations
$translations = [
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

// Step 3: Language detection
$selectedLanguage = $_SESSION['language'] ?? 'en';

// Step 4: Set selected language
if (isset($_GET['lang']) && array_key_exists($_GET['lang'], $languages)) {
    $selectedLanguage = $_GET['lang'];
    $_SESSION['language'] = $selectedLanguage;
}

// Step 6: Handle language switch event

// Step 7: Retrieve and display translated text
function translate($key) {
    global $selectedLanguage, $translations;
    if (isset($translations[$selectedLanguage][$key])) {
        return $translations[$selectedLanguage][$key];
    }
    return $key; // Return the original key if translation not found
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Language Switcher Example</title>
</head>
<body>
    <!-- Step 5: Language switcher button with flag images -->
    <div>
        <?php foreach ($languages as $code => $language) { ?>
            <a href="?lang=<?php echo $code; ?>">
                <img src="<?php echo $language['flag']; ?>" alt="<?php echo $language['name']; ?>" width="32" height="24">
            </a>
        <?php } ?>
    </div>
    
    <!-- Step 7: Retrieve and display translated text -->
    <h1><?php echo translate('welcome'); ?></h1>
    <p><?php echo translate('description'); ?></p>
</body>
</html>
