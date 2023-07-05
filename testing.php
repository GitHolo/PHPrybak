<?php

session_start();

$db = mysqli_connect("localhost","root","","rybak");

if (isset($_POST['id1'])) {
    $_SESSION['ID'] = 1;
}

if (isset($_POST['id2'])) {
    $_SESSION['ID'] = 2;
}

// Set the initial ID value if it's not set in the session
if (!isset($_SESSION['ID'])) {
    $_SESSION['ID'] = 1;
}

// Retrieve the current ID value from the session
$ID = $_SESSION['ID'];
print_r($_SESSION);
echo "<br><br>";
$sql1 = "SELECT fish.*, fishdesc.*
FROM fish
INNER JOIN fishdesc ON fish.fishID = fishdesc.fishID
WHERE fish.fishID = $ID";
$result1 = $db->query($sql1);

if ($result1->num_rows > 0) {
    $row = $result1->fetch_assoc();
    echo $row["name"]."<br>";
    echo $row["nameLatin"]."<br>";
    echo $row["nameEng"]."<br>";
    echo "<img src=".$row["img"]." alt='Amur biały'>"."<br>";
    echo $row["desc"] . "<br><br>";
    echo $row["chara"]."<br><br>";
    echo $row["reprod"]."<br><br>";
    echo $row["appear"]."<br>";
    echo "<br>";
} else {
    echo "brak";
}

$sql3 = "SELECT loc.name
FROM fishlocs
INNER JOIN fish ON fishlocs.fishID = fish.fishID
INNER JOIN loc ON fishlocs.locID = loc.locID
WHERE fish.fishID = $ID";

$result3 = $db->query($sql3);

if ($result3->num_rows > 0) {
    while ($row = $result3->fetch_assoc()) {
        echo $row["name"] . "<br>";
    }
} else {
    echo "brak";
}
echo "<br>";

$sql2 = "SELECT bait.name
FROM fishbaits
INNER JOIN fish ON fishbaits.fishID = fish.fishID
INNER JOIN bait ON fishbaits.BaitID = bait.BaitID
WHERE fish.fishID = $ID";

$result2 = $db->query($sql2);

if ($result2->num_rows > 0) {
    while ($row = $result2->fetch_assoc()) {
        echo $row["name"] . "<br>";
    }
} else {
    echo "brak";
}
echo "<br>";
?>

<form method="post">
    <button type="submit" name="id1">ID 1</button>
    <button type="submit" name="id2">ID 2</button>
</form>