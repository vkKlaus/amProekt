<?php

class ProjectController
{
    public function actionIndex()
    {
        $project = Project::getProjectList();

        require_once(ROOT . '/views/project/index.php');

        return true;
    }
}
