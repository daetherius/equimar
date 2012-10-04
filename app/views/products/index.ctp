<?php
$categories = Configure::read('Site.categories');

echo
	$this->element('showcase',array('data'=>$carrusel)),
	$html->div('contentwide'),
	$html->div('pad'),
		$html->tag('ul',null,'main_categories');

		foreach($categories as $main_category => $categories){

			echo $html->tag('li',
				$html->link(
					$html->image('mc_'.strtolower(Inflector::slug($main_category)).'.jpg',array('alt'=>strtolower($main_category))).
					$html->tag('h2',$main_category,'title')
				,'javascript:;').$this->element('main_categories',compact('main_category'))
			);
		}

		echo '</ul>';
?>
</div>
</div>