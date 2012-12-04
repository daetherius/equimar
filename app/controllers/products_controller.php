<?php
App::import('Controller','_base/Items');
class ProductsController extends ItemsController{
	var $name = 'Products';
	var $uses = array('Product','Category');

	function index(){}
	function universe($category = false){
		$items = false;

		$categories = Configure::read('Site.categories');
		if((!empty($category)) && (!empty($categories[$category]))){
			$cat_id = array_search($category, array_keys($categories))+1;
			$category_bg = $this->Category->field('src',array('Category.id'=>$cat_id));

			$categories = $categories[$category];

			$conds = array();
			foreach ($categories as $value)
				$conds['category'][] = _enc($value);
			$items = $this->paginate('Product',$this->Product->find_($conds,'paginate'));
		}

		$this->set(compact('items'));
		$this->set(compact('category_bg'));
		$this->set(compact('category'));
	}

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