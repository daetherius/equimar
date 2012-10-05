<?php
class Contact extends AppModel {
	var $name = 'Contact';
	var $_schema = array(
		'producto' =>array('type'=>'string', 'length'=>255),
		'nombre' =>array('type'=>'string', 'length'=>100),
		'sucursal' =>array('type'=>"enum('Sucursal 1','Sucursal 2','Sucursal 3','Sucursal 4')", 'length'=>255),
		'email' =>array('type'=>'string', 'length'=>255),
		'empresa' =>array('type'=>'string', 'length'=>255),
		'mensaje' =>array('type'=>'text')
	);
	var $actsAs = array('Captcha');
	var $useTable = false;
	var $validate = array(
		'nombre' => array(
			'rule' => 'notEmpty',
			'required' => true,
			'allowEmpty' => false,
			'message' => 'Escribe un nombre por favor.'
		),
		'mail' => array(
			'rule'=>'blank',
			'required' => true,
			'allowEmpty' => true,
			'message' => 'Non-Human.'
		),
		'email' => array(
			'format'=>array(
				'rule' => 'email',
				'required' => true,
				'allowEmpty' => false,
				'message' => 'La dirección de correo no parece ser válida. Corríjalo o escriba otro, por favor.'
			),
			'vacio' => array(
				'rule' => 'notEmpty',
				'required' => true,
				'allowEmpty' => false,
				'message' => 'Este campo no puede quedar vacío.'
			)		
		),
		'mensaje' => array(
			'rule' => 'notEmpty',
			'required' => true,
			'allowEmpty' => false,
			'message' => '¡No ha escrito su mensaje!'
		)
	);
}
?>