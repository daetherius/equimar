<?php
$categories = Configure::read('Site.categories');

echo
	$html->tag('ul',null,'main_categories');

	foreach($categories as $main_category => $categories){

		echo $html->tag('li',
			$html->link(
				$html->image('mc_'.strtolower(Inflector::slug($main_category)).'.jpg',array('alt'=>strtolower($main_category))).
				$html->tag('h2',$main_category,'title')
			,'javascript:;').$this->element('main_category',compact('main_category'))
		);
	}

echo '</ul>';

$moo->addEvent('.item_name','mouseenter',array(
		'if'=>'$("item_"+this.get("rel")).get("html") == ""',
		'url'=>'"+this.get("href")+"',
		'update'=>'"item_"+this.get("rel")',
		'spinner'=>array('"item_"+this.get("rel")'),
		'css'=>true
	));
?>