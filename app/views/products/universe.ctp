<?php
echo
	$this->element('main_categories'),
	$html->div('contentwide'),
	$html->div('pad trans'),
	$html->div('trans'),
		$html->tag('h1',$category,'title');

	if($items){
		foreach ($items as $item)
			echo $this->element('th',array(
				'item'=>$item,
				'v'=>1,
				'mini'=>1
			));
		echo $this->element('pages');
	} else
		echo $html->para('noresults','No hay elementos que mostrar');
?>
</div><!-- .trans -->
</div><!-- .pad -->
<div class="pre-content"></div>
</div><!-- .content -->