<?php
$config['Site'] = array(
	'name'=>'Nombre de la Empresa',
	'domain'=>$_SERVER['SERVER_NAME'],
	'email'=>'info@'.$_SERVER['SERVER_NAME'],
	'slogan'=>'Slogan',
	'keywords'=>'',
	'description'=>'',
	'tw'=>'',
	'fb'=>'',
	'categories'=>array(
		'Motores fuera de borda'=>array(
			'Motores 2 Tiempos'=>'Motores 2 Tiempos',
			'Motores 4 Tiempos'=>'Motores 4 Tiempos'
		),
		'Aquamotos'=>array(
			'Lujo y Alto rendimiento'=>'Lujo y Alto rendimiento',
			'Rendimiento Deportivo'=>'Rendimiento Deportivo',
			'Recreación'=>'Recreación',
			'2 Tiempos'=>'2 Tiempos',
			'Remolques Aquamotos'=>'Remolques Aquamotos'
		),
		'Lanchas y Hieleras de Fibra de Vidrio'=>array(
			'Borda Regular'=>'Borda Regular',
			'Borda Alta'=>'Borda Alta',
			'Hieleras de Fibra de Vidrio'=>'Hieleras de Fibra de Vidrio',
			'Remolques'=>'Remolques'
		),
		'Productos de Energía'=>array(
			'Generadores 2 Tiempos'=>'Generadores 2 Tiempos',
			'Generadores 4 Tiempos Inverter'=>'Generadores 4 Tiempos Inverter',
			'Generadores 4 Tiempos Premium'=>'Generadores 4 Tiempos Premium',
			'Generadores Diesel'=>'Generadores Diesel',
			'Bombas de Riego'=>'Bombas de Riego',
			'Motores Multiuso'=>'Motores Multiuso'
		),
		'Accesorios de Pesca y Deportivos'=>array(
			'Pesca Deportiva'=>'Pesca Deportiva',
			'Pesca Comercial'=>'Pesca Comercial'
		)
	)
);

$config['Site']['og'] = array(
	'title'=>$config['Site']['name'],
	'type'=>'company',// blog, article
	'url'=>'http://'.$config['Site']['domain'],
	'image'=>'http://'.$config['Site']['domain'].'/img/logo.png',
	'site_name'=>$config['Site']['name'],
	'description'=>$config['Site']['description'],

	'itemtype'=>'organization' //article
);

/**
 * Modos de uso:
 * Crea por elemento (nombre de controlador) un array asociativo compuesto de las siguientes claves
 * - label: Nombre general del catálogo para el usuario; puede establecerse sin la clave si es el primer elemento del array
 * - route: URL personalizada del controlador; si no se especifica, lo toma de 'label'
 * - menu: Nombre del catálogo en el menú principal de navegación; Sólo los elementos que cuenten con esta clave aparecerán en el menú
 * - admin: Nombre del catálogo en el menú del panel de administración, o si es array: Si tiene 1 elemento indica la clase del botón, o si son 2 elementos, el label y la clase; si no se especifica, lo toma de 'menu', sino de 'label'; especificar a false para omitir
*/
$modules = array(
	'categories'=>array('categorías','admin'=>array('tags')),
	'products'=>array('productos','menu','admin'=>array('')),
	'productimgs'=>array('Imágenes','admin'=>false),
	'about'=>array('quiénes somos','menu','admin'=>array('pages')),
	'services'=>array('servicios','menu','admin'=>array('pages')),
	//'carousels'=>array('Carrusel','admin'=>array('photos')),
	//'banners'=>array('admin'=>array('banners')),
	'contacto'=>array('menu','admin'=>false),
	'users'=>array('Usuarios','admin'=>array('users')),
);

$cached_modules = Cache::read('sitemodules');

if((!$cached_modules) || Configure::read('debug')){
	foreach($modules as $idx => $mod){
		$mod = Set::normalize($mod);
		
		if((!isset($mod['label']))){
			if(in_array($label = key($mod),array('admin','menu','singu'))){
				$mod['label'] = $idx;
			} else {
				$mod['label'] = $label;
				unset($mod[$label]);
			}
		}
		
		if(array_key_exists('menu',$mod) && (!isset($mod['menu']))) $mod['menu'] = $mod['label'];
		if(!isset($mod['admin'])){
			if(isset($mod['menu']) && $mod['menu'])
				$mod['admin'] = $mod['menu'];
			else
				$mod['admin'] = $mod['label'];
		} elseif(is_array($mod['admin'])) {
			if(sizeof($mod['admin'])>1){
				$mod['admin'] = array('label'=>$mod['admin'][0],'class'=>$mod['admin'][1]);
			} else {
				$mod['admin'] = array('label'=>$mod['label'],'class'=>$mod['admin'][0]);
			}
		}
		
		if(!array_key_exists('route',$mod)) $mod['route'] = strtolower(Inflector::slug($mod['label']));
		
		if(is_numeric($idx)){
			unset($modules[$idx]);
			$modules[$mod['label']] = $mod;
		} else
			$modules[$idx] = $mod;
	}
	
	Cache::write('sitemodules',$modules);
} else
	$modules = $cached_modules;

$config['Modules'] = $modules;
?>