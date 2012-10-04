<?php
App::import('Controller','_base/Items');
class ProductsController extends ItemsController{
	var $name = 'Products';
	var $uses = array('Product');


	function admin_export(){ $this->_export(array('nombre','precio','descripcion','Category.nombre')); }
}
?>