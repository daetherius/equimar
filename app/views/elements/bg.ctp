<?php
if(is_c('products',$this)){
	$carrusel = array(
		array('src'=>'img/bg/01.jpg'),
		array('src'=>'img/bg/02.jpg')
	);

	echo $this->element('showcase',array('data'=>$carrusel,'id'=>'bg_showcase','opts'=>array('nav'=>false,'duration'=>2200)));
} else {
	echo $html->image('bg_'.$this->params['controller'].'.jpg',array('alt'=>'bg_'.$this->params['controller'].'.jpg','class'=>'bg'));
}
?>
