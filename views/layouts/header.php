<?php
$slider = Galary::getSlider();
$i = 1;

$bodySlider = "<style>
.body_slides li {
    animation: anim_slides " . (count($slider) * 2) . "s linear infinite 0s;
}" . PHP_EOL;

foreach ($slider as $imgGlItem){
    $bodySlider .= ".body_slides li:nth-child($i){
        background-image: url(" . $imgGlItem['path'] . ");".PHP_EOL
        . ($i == 1 ? "" : "animation-delay: " . ($i * 2) . "s;") . "
    }" . PHP_EOL;

    $i++;
}

$bodySlider .= "</style>";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="АМ Проект - проектируем реальность" />
    <link rel="shortcut icon" href="/template/images/favicon/favicon.ico" type="image/x-icon">
    <title>AM-Проект</title>
    <link rel="stylesheet" href="/template/style/style.css">
    <link rel="stylesheet" href="/template/style/all.min.css">
    <link rel="stylesheet" href="/template/style/jquery.fancybox.min.css">

    <?= $bodySlider ?>

</head>

<body>
    <ul class="body_slides">
        <?php foreach ($slider as $imgGlItem) { ?>
            <li>
                <p> <?php echo $imgGlItem['prj'] ?></p>
            </li>
        <?php }; ?>
    </ul>

    <header class="header-grid">

        <a id="logo" href="/">
            <img src="/template/images/log2.png" alt="">

            <div id="sloganTxt">
                <p id="name"><span>АМ</span>Проект</p>

                <p id="slogan">проектируем реальность</p>
            </div>
        </a>

        <div id="nav">
            <a href="/">Главная</a>

            <a href="/project/">Проекты</a>

            <a href="/about/">О нас</a>

            <a href="/contact/">Контакты</a>
        </div>
    </header>