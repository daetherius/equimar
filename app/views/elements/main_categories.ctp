<?php
if($data = Cache::read('product_all')){
	echo $html->div('lists '.Inflector::slug($main_category));

	switch($main_category){
		case 'Motores fuera de borda':
			$offset = ceil(sizeof($data['Motores 4 Tiempos'])/2);

			echo
				$html->div('column'),
					$util->mklist($data['Motores 2 Tiempos'],'Motores 2 Tiempos'),
				'</div>',
				$html->div('column'),
					$util->mklist(array_slice($data['Motores 4 Tiempos'],0,$offset),'Motores 4 Tiempos'),
				'</div>',
				$html->div('column'),
					$util->mklist(array_slice($data['Motores 4 Tiempos'],$offset)),
				'</div>';
		break;
		case 'Aquamotos':
			echo
				$html->div('column'),
					$util->mklist($data['Lujo y Alto rendimiento'],'Lujo y Alto rendimiento'),
					$util->mklist($data['Rendimiento Deportivo'],'Rendimiento Deportivo'),
				'</div>',
				$html->div('column'),
					$util->mklist($data['Recreación'],'Recreación'),
					$util->mklist($data['2 Tiempos'],'2 Tiempos'),
					$util->mklist($data['Remolques Aquamotos'],'Remolques'),
				'</div>';
		break;
		case 'Lanchas y Hieleras de Fibra de Vidrio':
			echo
				$html->div('column'),
					$util->mklist($data['Borda Regular'],'Borda Regular'),
					$util->mklist($data['Borda Alta'],'Borda Alta'),
				'</div>',
				$html->div('column'),
					$util->mklist($data['Hieleras de Fibra de Vidrio'],'Hieleras de Fibra de Vidrio'),
					$util->mklist($data['Remolques'],'Remolques'),
				'</div>';
		break;
		case 'Productos de Energía':
			echo
				$html->div('column'),
					$util->mklist($data['Generadores 2 Tiempos'],'Generadores 2 Tiempos'),
					$util->mklist($data['Generadores 4 Tiempos Inverter'],'Generadores 4 Tiempos Inverter'),
					$util->mklist($data['Generadores 4 Tiempos Premium'],'Generadores 4 Tiempos Premium'),
				'</div>',
				$html->div('column'),
					$util->mklist($data['Generadores Diesel'],'Generadores Diesel'),
					$util->mklist($data['Bombas de Riego'],'Bombas de Riego'),
					$util->mklist($data['Motores Multiuso'],'Motores Multiuso'),
				'</div>';
		break;
		case 'Accesorios de Pesca y Deportivos':
			echo
				$html->div('column'),
					$util->mklist($data['Pesca Deportiva'],'Pesca Deportiva'),
				'</div>',
				$html->div('column'),
					$util->mklist($data['Pesca Comercial'],'Pesca Comercial'),
				'</div>';
		break;

	}

	echo '</div>';
}
?>