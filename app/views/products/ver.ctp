<?php
	
echo
	$this->element('top'),
	$this->element('main_categories'),
	$html->div('detail clear'),
		$html->tag('h1',$item[$_m[0]]['nombre'],array('class'=>'title')),
		$html->div('column'),
			$util->th($item,$_m[0],array(
				'w'=>360,
				'h'=>600,
				'class'=>'pulsembox portada',
				'url'=>true,
				'atts'=>array('rel'=>'roller')
			)),
			$this->element('slider',array(
				'model'=>$_m[0].'img',
				'data'=>$item[$_m[0].'img'],
				'skip'=>true,
				'h'=>60,
				'title'=>'descripcion'
			));

			if(!empty($item[$_m[0]]['video'])){
				echo $util->youtube($item[$_m[0]]['video'],'player',array('width'=>360,'height'=>203));
			}

	echo '</div>',
		$html->div('column omega'),
			$html->link('Orderar',array('controller'=>'contacto','action'=>'index',b64($item[$_m[0]]['nombre'])),array('class'=>'ordernow')),
			$html->div('desc tmce',$item[$_m[0]]['descripcion'].''),
			$this->element('share'),
		'</div>',
	'</div>';
?>
</div>
</div><!-- content -->