<?php
	
echo
	$this->element('top'),
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
			$item[$_m[0]]['enlace'] = 'power.com';
			if(!empty($item[$_m[0]]['enlace'])){
				echo $html->link('Visite el minisitio de este producto',$item[$_m[0]]['enlace'],array('class'=>'minisite','target'=>'_blank','rel'=>'nofollow'));
			}

	echo '</div>',
		$html->div('column omega'),
			$html->div('desc tmce'),
				$html->link('Ordene Ahora',array('controller'=>'contacto','action'=>'index',b64(_dec($item[$_m[0]]['nombre']))),array('class'=>'ordernow')),
				$item[$_m[0]]['descripcion'],
			'</div>',
			$this->element('share'),
		'</div>',
	'</div>';
?>
</div><!-- .trans -->
</div><!-- .pad -->
</div><!-- .content -->