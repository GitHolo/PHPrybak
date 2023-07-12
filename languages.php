<?php $languages = [
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
      'about-us' => 'O nas',
      'about-us-content' => 'Jesteśmy zespołem praktykantów, którzy stworzyli stronę internetową z rysunkami ryb oraz ich opisami. Naszym celem jest umożliwienie użytkownikom zobaczenia i zapoznania się z różnymi gatunkami ryb wformie wirtualnej. Na naszej stronie internetowej znajdziecie rysunki różnych gatunków ryb, które zostały starannie wykonane i odwzorowane w najdrobniejszych szczegółach. Każdy model zawiera opis gatunku ryby, jej charakterystyczne cechy, miejsce występowania oraz inne wartościowe informacje. Nasza strona internetowa to doskonałe miejsce dla wszystkich miłośników ryb, którzy chcą poznać różnorodność gatunkową, charakterystyczne cechy poszczególnych ryb, a także ich siedliska i wymagania środowiskowe. Dzięki naszej stronie internetowej użytkownicy mają okazję zapoznać się z różnymi gatunkami ryb bez wychodzenia z domu. Staramy się, aby nasza strona była łatwa w obsłudze i przejrzysta, dzięki czemu użytkownicy mogą szybko i łatwo znaleźć interesujące ich modele ryb oraz wartościowe informacje na ich temat. Dziękujemy za zainteresowanie naszą stroną internetową i zachęcamy do korzystania z niej, aby poznać i zobaczyć różnorodność gatunków ryb.',
      'contact' => 'Kontakt'
  ],
  'en' => [
    'description-welcome' => 'Any information about fish and their appearance.',
    'paragraph-welcome' => 'ZSK internship page for Maksymilian Felczak and Bartosz Borzyskowski.',
    'about-us' => 'About us',
    'about-us-content' => 'We are a team of interns who have created a website with drawings of fish and their descriptions. Our goal is to provide users with the opportunity to see and learn about various fish species in a virtual form. On our website, you will find drawings of different fish species that have been meticulously crafted and reproduced in the finest detail. Each model includes a description of the fish species, its distinctive features, habitat, and other valuable information. Our website is an excellent place for all fish enthusiasts who want to explore the species diversity, unique characteristics of individual fish, as well as their habitats and environmental requirements. Thanks to our website, users have the opportunity to learn about various fish species without leaving their homes. We strive to make our website user-friendly and intuitive, allowing users to quickly and easily find the fish models that interest them, along with valuable information about them. Thank you for your interest in our website, and we encourage you to use it to discover and appreciate the diversity of fish species.',
    'contact' => 'Contact'
],
  'es' => [
    'description-welcome' => 'Cualquier información sobre peces y su apariencia',
    'paragraph-welcome' => 'Página de prácticas de ZSK para Maksymilian Felczak y Bartosz Borzyskowski.',
    'about-us' => 'Sobre Nosotros',
    'about-us-content' => 'Somos un equipo de becarios que ha creado un sitio web con dibujos de peces y sus descripciones. Nuestro objetivo es brindar a los usuarios la oportunidad de ver y aprender sobre diversas especies de peces de forma virtual. En nuestro sitio web, encontrarás dibujos de diferentes especies de peces que han sido meticulosamente elaborados y reproducidos en los detalles más finos. Cada modelo incluye una descripción de la especie de pez, sus características distintivas, hábitat y otra información valiosa. Nuestro sitio web es un excelente lugar para todos los entusiastas de los peces que desean explorar la diversidad de especies, las características únicas de cada pez, así como sus hábitats y requisitos ambientales. Gracias a nuestro sitio web, los usuarios tienen la oportunidad de aprender sobre diversas especies de peces sin salir de sus hogares. Nos esforzamos por hacer que nuestro sitio web sea fácil de usar e intuitivo, lo que permite a los usuarios encontrar rápidamente los modelos de peces que les interesan, junto con información valiosa sobre ellos. Gracias por tu interés en nuestro sitio web, y te animamos a utilizarlo para descubrir y apreciar la diversidad de las especies de peces.',
    'contact' => 'Contacto'
],
  'fr' => [
    'description-welcome' => 'Toute information sur les poissons et leur apparence',
    'paragraph-welcome' => 'Page de stage ZSK pour Maksymilian Felczak et Bartosz Borzyskowski.
    Borzyskowskiego.',
    'about-us' => 'À propos de nous',
    'about-us-content' => "Nous sommes une équipe de stagiaires qui avons créé un site web avec des dessins de poissons et leurs descriptions. Notre objectif est de permettre aux utilisateurs de voir et d'apprendre sur différentes espèces de poissons de manière virtuelle. Sur notre site web, vous trouverez des dessins de différentes espèces de poissons qui ont été minutieusement réalisés et reproduits dans les moindres détails. Chaque modèle comprend une description de l'espèce de poisson, ses caractéristiques distinctives, son habitat et d'autres informations précieuses. Notre site web est un excellent endroit pour tous les passionnés de poissons qui souhaitent explorer la diversité des espèces, les caractéristiques uniques de chaque poisson, ainsi que leurs habitats et leurs exigences environnementales. Grâce à notre site web, les utilisateurs ont l'opportunité d'apprendre sur différentes espèces de poissons sans quitter leur domicile. Nous nous efforçons de rendre notre site web convivial et intuitif, permettant aux utilisateurs de trouver rapidement et facilement les modèles de poissons qui les intéressent, ainsi que des informations précieuses à leur sujet. Merci de votre intérêt pour notre site web, et nous vous encourageons à l'utiliser pour découvrir et apprécier la diversité des espèces de poissons.",
    'contact' => 'Contact'
],
];
$selectedLanguage = $_SESSION['language'] ?? 'pl';
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
}