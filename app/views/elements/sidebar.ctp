<div class="sidebar">
<div class="pad">
<?php
if(is_c('inicio',$this)){
	
}
if(is_c('products',$this) && isset($item) && $item){
	echo $html->link('Agregar al Carrito',array('controller'=>'products','action'=>'add2cart',$item[$_m[0]]['id']),array('class'=>'add2cart'));
}

echo $html->div('banners',$this->element('banners'),array('id'=>'banners')), $moo->showcase('banners',array('nav'=>'out'));
?>
</div>
</div>