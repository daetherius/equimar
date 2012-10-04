<?php
echo
	$this->element('adminhdr',array('links'=>array('back'))),
	$this->element('inputs',array('schema'=>array('category'=>array('options'=>Configure::read('Site.categories'))))),
	$this->element('tinymce',array('advanced'=>1,'size'=>'m'));
?>