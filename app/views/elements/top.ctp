<?php
$wide = isset($wide) ? ($wide ? 'wide':''):'wide';
$sub = isset($sub) ? $sub : false;
$main_categories = isset($main_categories) ? $main_categories : true;

if(isset($header)){
	if(!$header){
		$header = '';
	
	} elseif(is_string($header)) {
		$header = $html->div('title title1',$header);
	
	} elseif(is_array($header)) {
		$text = $header['text'];
		unset($header['text']);
		$header = $html->div('title',$html->link($text,$header));
	}
} else {
	$header = '';
}

if(empty($this->params['isAjax']))
	echo $this->element('main_categories');

echo
	$html->div('content'.$wide),
	$html->div('pad trans'),
	$html->div('trans'),
	$header;



/*
if($main_categories){
	$nodos = array(
		1=>'Motores 2 y 4 tiempos',
		'Aquamotos',
		'Lanchas de Fibra de Vidrio',
		'Generadores y Accesorios',
		'Bombas de Riego'
	);

	echo
		$html->tag('ul',null,'main_categories');
		foreach($nodos as $idx => $nodo){
			echo 
				$html->tag('li'),
				$html->link($nodo,'javascript:;',array('class'=>'tab_'.($idx-1))));
				
				foreach($categories_recent[$idx] as $child){
					echo
						$html->div('wrapper');
				}
		}
*/
		/*
		$html->tag('li',$html->link('Aquamotos','javascript:;')),
		$html->tag('li',$html->link('Lanchas de Fibra de Vidrio','javascript:;')),
		$html->tag('li',$html->link('Generadores y Accesorios','javascript:;')),
		$html->tag('li',$html->link('Bombas de Riego','javascript:;')),
		*/

//}
?>