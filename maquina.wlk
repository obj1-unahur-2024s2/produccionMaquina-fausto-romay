object maquina {
  const produccion = [5,70,1,30]
  method algunDiaSeProdujo(cantidad) = produccion.contains(cantidad)
  method maximoValorDeProduccion() = produccion.max()
  method valoresDeProduccionPares() = produccion.filter({number => number.even()})
  method produccionEsAcotada(num1, num2) = produccion.all({elem => elem.between(num1, num2)})
  method produccionesSuperioresA(cant) = produccion.filter({number => number > cant})
  method cantidadDeProduccionesMayoresALaPrimera() = produccion.count({elemento => elemento > produccion.fist()})
  method produccionesSumando(num) = produccion.map({elem => elem + num})
}

object horno {

    const produccion = []
    method algunDiaSeProdujo(cantidad) = produccion.any{e=>e.cantidad() == cantidad}

    method producir(producto){
      produccion.add(producto)
    }
    method totalProducido() = produccion.sum({p=>p.cantidad() })
    method maximoValorDeProduccion() = produccion.max({p=>p.cantidad()})
    method ultimoValorDeProduccion() = produccion.last()

    method produccionesQueCuestanMasQue(valor) 
       = produccion.filter( {elemento=> elemento.precio() > valor } ) 

    method cantidadProduccionesMayorALaPrimera() = produccion.count({elem => elem.cantidad() > produccion.first().cantidad()})

    method produccionEsAcotada(n1,n2) = produccion.all({e => e.cantidad().between(n1,n2)})
    method incendio(){
      produccion.clear()
    }
    method produccionesAptoCeliaco() = produccion.filter{p=>p.esAptoCeliaco()}

    method elPrimeroParaCeliaco() = produccion.find{p=>p.esAptoCeliaco()}

    method corregirRegistro(valorViejo,valorNuevo){
      produccion.remove(valorViejo)
      produccion.add(valorNuevo)
    }
    method promedio() = self.totalProducido() / produccion.size()

    method produccionesSumando(cant) = produccion.map{p=> p.cantidad() + cant}
    method todasLasProduccionesAptasCeliaco() = produccion.sum({elemento => elemento.esAptoCeliaco().cantidad()})
  }


object bizcocho{
  method cantidad() = 100
  method precio() = 10 
  method esAptoCeliaco() = true

}

object factura{
  method cantidad() = 12
  method precio() = 0
    method esAptoCeliaco() = false

}

object pan{
  var cantidad = 5
  method cantidad() = cantidad
  method precio() = cantidad * 10
  method esAptoCeliaco() = cantidad < 1

}

object sanguchito{
  var esDeMiga = true

  method cantidad() = if (esDeMiga) 10 else 24
  method precio() = pan.precio()*2 + 10
  method esAptoCeliaco() = not esDeMiga
}

object remera{
  method color() = "celeste"
}

//maquina.algunDiaSeProdujo(1)
//true

