<?php
echo $this->element('top',array('header'=>$_ts));
	
	if($items){
		foreach($items as $item)
			echo $this->element('th',array('item'=>$item,'v'=>1));
			
		echo $this->element('pages');


	} else 
		echo $html->para('noresults','No hay elementos que mostrar');
?>
</div><!-- .trans -->
</div><!-- .pad -->
</div><!-- .content -->