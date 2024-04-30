object casaDeAntiguedades{
	const artefactos = [antiguedades]
	
	method retornarTodo(){artefactos.asList()}
	method adquirirUnaAntiguedad(){artefactos.anyOne()}
	method adquirirLote(unLote){unLote.asList()}
	method antiguedadEnStock(unaAntiguedad){artefactos.contains(unaAntiguedad)}
	method cantidadDeAntiguedades(){artefactos.size()}
	method ultimaAntiguedadAdquirida(){artefactos.last()}
	method esDeMasdeCienAnios(antiguedad){artefactos.find({ antiguedades => antiguedad.cantidadDeAnios() > 100})}
	method restaurarLaPrimerAntiguedadAdquitida(){artefactos.first().restaurarAntiguedad()}
	method venderTodasLasAntiguedades(){artefactos.removeAll(artefactos)}
}

object antiguedades{
	var estaEnMalEstado = true
	var cantidadDeAnios 
	
	method estaEnMalEstado() = estaEnMalEstado
	method cantidadDeAnios() = cantidadDeAnios
	method restaurarAntiguedad(){estaEnMalEstado = false}
	
}