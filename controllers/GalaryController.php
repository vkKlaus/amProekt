<?php

class GalaryController
{
    public function actionIndex($id)
    {
        $imgGl = Galary::getImgList($id);

        $project = Project::getProject($id);

        require_once(ROOT . '/views/project/galary.php');

        return true;
    }

    public function actionImage($progect, $id)
    {
        $imgPath = Galary::getImageFull($progect, $id);

        require_once(ROOT . '/views/project/images.php');

        return true;
    }
}
