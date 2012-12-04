<?php
App::import('Controller','_base/Items');
class CategoriesController extends ItemsController {
	var $name = 'Categories';
	var $uses = array('Category');
}
?>