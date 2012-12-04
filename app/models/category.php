<?php
class Category extends AppModel {
	var $name = 'Category';
	var $asTree = false;
	var $actsAs = array('File' => array('portada'=>false,'fields'=>array('src'=>array('maxsize'=>614400))));
	var $skipValidation = array('src');
}
?>