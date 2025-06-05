class Hogar {
    const nivelDeMugre 
    const comfort
    method esBueno() = nivelDeMugre <= comfort / 2 
} 

class Huerta {
    const kilos
    const meses 
    method capacidadDeProduccion() = kilos * meses  
    method esBueno() = self.capacidadDeProduccion() > nivelMinimo.nivel()  
}
class Mascota {
    const nivelDeSalud
    method esBueno() = nivelDeSalud > 250
}

object nivelMinimo {
  var property nivel = 100  
}


class Barrio{
  const elementos = []
  method agregarElemento(unElemento) {elementos.add(unElemento)}
  method removerElemento(unElemento) {elementos.remove(unElemento)}
  method unElementoEsBueno(unElemento) = unElemento.esBueno()
  method barrioEsCopado() = self.cantidadElementosBuenos() > self.cantidadElementosNoBuenos()
  method cantidadElementosBuenos() = elementos.count({e=>e.esBueno()})
  method cantidadElementosNoBuenos() = elementos.count({e=> not e.esBueno()})
}