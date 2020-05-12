<?php include ROOT . '/views/layouts/header.php'; ?>




<div class="galeryContaner">
    <div class="title"><?php echo $project[0]['title'] ?> </div>
    <div class="heder"><?php echo $project[0]['heder'] ?></div>
    <div class="sectionDate">
        <?php if (!empty($project[0]['adress'])):?>
        <div class="adress">
            <h3 class="titleSection">Адрес</h3>
            <div class="blockSection"><?php echo $project[0]['adress'] ?></div>
        </div>
        <?php endif; ?>

        <?php if (!empty($project[0]['area'])):?>
        <div class="area">
            <h3 class="titleSection">Площадь</h3>
            <div class="blockSection"><?php echo $project[0]['area'] ?></div>
        </div>
        <?php endif; ?>

        <?php if (!empty($project[0]['floors'])):?>
        <div class="floors">
            <h3 class="titleSection">Этажность</h3>
            <div class="blockSection"><?php echo $project[0]['floors'] ?></div>
        </div>
        <?php endif; ?>

        <?php if (!empty($project[0]['volume'])):?>
        <div class="volume">
            <h3 class="titleSection">Объем</h3>
            <div class="blockSection"><?php echo $project[0]['volume'] ?></div>
        </div>
        <?php endif; ?>

        <?php if (!empty($project[0]['status'])):?>
        <div class="status">
            <h3 class="titleSection">Статус</h3>
            <div class="blockSection"><?php echo $project[0]['status'] ?></div>
        </div>
        <?php endif; ?>

    </div>

    <div id="galeray">

        <?php foreach ($imgGl as $imgGlItem): ?>
        <div class="docsBox">
            <a data-fancybox="gallery" href="<?php echo str_replace('Small/','',$imgGlItem['path']); ?>" title="">
                <img src="<?php echo $imgGlItem['path']; ?>" style="cursor: pointer" class="docsElement" alt="<?php echo $imgGlItem['path']; ?>"></a>
        </div>

        <?php endforeach; ?>
    </div>
</div>
<?php include ROOT . '/views/layouts/footer.php'; ?>