<?php
App::import('Controller','_base/Items');
class ProductsController extends ItemsController{
	var $name = 'Products';
	var $uses = array('Product');

	function ver($id = false) {
		parent::ver($id);

		if(!empty($this->params['isAjax'])){
			$this->set('v',true);
			$this->render('/elements/th');
		}
	}

	function admin_export(){ $this->_export(array('nombre','precio','descripcion','Category.nombre')); }
}
?>