<?php
echo
	$html->div('contentwide'),
	$html->div('pad'),
		$this->element('main_categories'),
		$html->div('spacer','');

	$moo->addEvent('.item_name','mouseenter',array(
		'if'=>'$("item_"+this.get("rel")).get("html") == ""',
		'url'=>'"+this.get("href")+"',
		'update'=>'"item_"+this.get("rel")',
		'spinner'=>array('"item_"+this.get("rel")'),
		'css'=>true
	));
?>
</div>
</div>