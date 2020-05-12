<?php include ROOT . '/views/layouts/header.php'; ?>

<div id="projectContainer">
    

<?php foreach ($project as $projectItem): ?>

<a href="<?php echo $projectItem['id']?>">

    <figure>
        <img src="<?php echo  $projectItem['img'] ?>" alt="">
        <figcaption>
            <?php echo $projectItem['title']?>
        </figcaption>
    </figure>



</a>

<?php endforeach; ?>
</div>

<?php include ROOT . '/views/layouts/footer.php'; ?>