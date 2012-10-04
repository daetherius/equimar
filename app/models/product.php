<?php
class Product extends AppModel {
	var $name = 'Product';
	var $labels = array(
		'comment_count'=>'comentarios',
		'category'=>'categoría',
		'productimg_count'=>'Imágenes'
	);

	var $hasMany = array(
		'Comment'=>array(
			'className'=>'Comment',
			'foreignKey'=>'parent_id',
			'conditions'=>array('parent'=>'Product'),
			'dependent'=>true
		),
		'Productimg'=>array(
			'className'=>'Productimg',
			'dependent' => true
		)
	);
	var $hasOne = array(
		'Productportada'=>array(
			'className'=>'Productimg',
			'foreignKey'=>'product_id',
			'conditions'=>'Productportada.portada = 1'
		)
	);
	var $validate = array();
	var $skipValidation = array('descripcion','src');

}
?>