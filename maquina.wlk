object maquina {
  const produccion = [5,70,1,30]
  method algunDiaSeProdujo(cantidad) = produccion.contains(cantidad)
  method maximoValorDeProduccion() = produccion.max()
  method valoresDeProduccionPares() = produccion.filter({number => number.even()})
  method produccionEsAcotada(num1, num2) = produccion.between(num1, num2)
  method produccionesSuperioresA(cant) = produccion.filter({number => number > cant})
  }

//maquina.algunDiaSeProdujo(1)
//true

