<ul id="menu">
<?php
//echo $html->tag('li',$html->link($html->tag('span', 'inicio'),'/'),array('class'=>$this->params['controller']=='inicio' ? 'mSelected' : ''));
foreach(Configure::read('Modules') as $cntllr => $mod){
	if(isset($mod['menu']) && $mod['menu']){
		$class = '';
		if(in_array($cntllr, array('about','services'))){
			$class = 'pulsembox';
		}

		echo
			$html->tag('li',
				$html->link(
					$html->tag('span',$mod['menu']),
					array('controller'=>$cntllr,'action'=>'index'),
					compact('class')
				),
				array('class'=>$this->params['controller'] == $cntllr ? 'mSelected' : '')
			);
	}
}
?>
</ul>