<?php

class Galary
{
    public static function getImgList($id)
    {
        $db = Db::getConnection();

        $result = $db->query('SELECT name, title 
                                FROM imgproject 
                                WHERE view = "1" AND idProject = ' . $id . ' ORDER BY name');

        $i = 0;

        $imgtList = array();

        while ($row = $result->fetch()) {
            $imgtList[$i]['name'] = $row['name'];

            $imgtList[$i]['title'] = $row['title'];

            $imgtList[$i]['path'] = self::getImage($id, $row['name']);

            $i++;
        }

        return $imgtList;
    }

    public static function getImage($project, $img)
    {
        $path = '/template/images/Projects/';

        $noImage = '/template/images/no-image.webp';

        $pathToProductImage = $path  . $project . '/Small/' . $img . '.webp';

        if (file_exists($_SERVER['DOCUMENT_ROOT'] . $pathToProductImage)) {
            return $pathToProductImage;
        }

        return $noImage;
    }

    public static function getImageFull($project, $img)
    {

        $path = '/template/images/Projects/';

        $noImage = '/template/images/no-image.webp';

        $pathToProductImage = $path  . $project . '/' . $img . '.webp';

        if (file_exists($_SERVER['DOCUMENT_ROOT'] . $pathToProductImage)) {
            return $pathToProductImage;
        }

        return $noImage;
    }

    public static function getSlider()
    {
        $db = Db::getConnection();

        $result = $db->query('SELECT projekt.id as p_id, 
                                        projekt.name as p_name, 
                                        projekt.title as p_title, 
                                        projekt.comment as p_comment,
                                        imgproject.id as i_id,
                                        imgproject.name as i_name,
                                        imgproject.title as i_title,
                                        imgproject.idProject as i_prj
                                    FROM 
                                        `projekt` LEFT JOIN `imgproject`  
                                    ON projekt.id = imgproject.idProject 
                                    WHERE projekt.view = 1 and imgproject.view = 1 and imgproject.slider = 1');

        $i = 0;

        $imgtList = array();

        while ($row = $result->fetch()) {
            $imgtList[$i]['title'] = $row['i_title'];

            $imgtList[$i]['prj'] = $row['p_title'];

            $imgtList[$i]['path'] = self::getImageFull($row['i_prj'], $row['i_name']);

            $i++;
        }

        shuffle($imgtList);

        return $imgtList;
    }
}
