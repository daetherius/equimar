<?php
$categories = Configure::read('Site.categories');

echo
	$this->element('showcase',array('data'=>$carrusel)),
	$html->div('contentwide'),
	$html->div('pad'),
		$html->tag('ul',null,'main_categories');

		foreach($categories as $main_category => $category){
			echo $html->tag('li',$html->link(
				$html->image(Inflector::slug($main_category).'.jpg',array('alt'=>strtolower($main_category))).
				$html->tag('h2',$main_category)
			,'javascript:;'));
		}

		echo '</ul>';
?>
</div>
</div>