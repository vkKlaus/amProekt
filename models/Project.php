<?php

class Project
{
    public static function getProjectList()
    {
        $db = Db::getConnection();

        $result = $db->query('SELECT id, title 
                                FROM projekt 
                                WHERE view = "1" 
                                ORDER BY id');

        $i = 0;

        $projectList = array();
        
        while ($row = $result->fetch()) {
            $projectList[$i]['id'] = $row['id'];

            $projectList[$i]['title'] = $row['title'];

            $projectList[$i]['img'] = Galary::getImage($row['id'], 1);

            $i++;
        }

        return $projectList;
    }

    public static function getProject($id)
    {
        $db = Db::getConnection();

        $result = $db->query('SELECT * FROM projekt WHERE id = ' . $id);

        $i = 0;

        $projectList = array();

        while ($row = $result->fetch()) {
            $projectList[$i]['id'] = $row['id'];

            $projectList[$i]['title']   = "<p>" . str_replace("[~a~]", "</p>
                                            <p>", $row['title']) . "</p>";

            $projectList[$i]['heder']   =  "<p>" . str_replace("[~a~]", "</p>
                                            <p>", $row['heder']) . "</p>";

            $projectList[$i]['adress'] =  (empty($row['adress']))  ? "" : "<p>" . str_replace("[~a~]", "</p>
                                                                            <p>", $row['adress']) . "</p>";

            $projectList[$i]['area']   =  (empty($row['area']))    ? "" : "<p>" . str_replace("[~a~]", "</p>
                                                                            <p>", $row['area']) . "</p>";

            $projectList[$i]['floors'] =  (empty($row['floors']))  ? "" : "<p>" . str_replace("[~a~]", "</p>
                                                                            <p>", $row['floors']) . "</p>";

            $projectList[$i]['volume'] =  (empty($row['volume']))  ? "" : "<ul>
                                                                                <li>" . str_replace("[~a~]", "</li>
                                                                                <li>", $row['volume']) . "</li>
                                                                            </ul>";

            $projectList[$i]['status'] =  (empty($row['status']))  ? "" : "<p>" . str_replace("[~a~]", "</p>
                                                                            <p>", $row['status']) . "</p>";

            $i++;
        }

        return $projectList;
    }
}
