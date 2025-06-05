import plagasHerencia.*

class Hogar {
    var nivelDeMugre 
    const comfort
    method esBueno() = nivelDeMugre <= comfort / 2
    method efectoDelAtaque(unaPlaga)  {nivelDeMugre += unaPlaga.nivelDeDaño()} 
} 

class Huerta {
    var produccion   
    method esBueno() = produccion > nivelMinimo.nivel()
    method efectoDelAtaque(unaPlaga)  { produccion -= unaPlaga.nivelDeDaño() * 0.1
    + if(unaPlaga.transmiteEnfermedades()) 10 else 0.max(0)}  

}
class Mascota {
    var nivelDeSalud
    method esBueno() = nivelDeSalud > 250
    method efectoDelAtaque(unaPlaga)  {if(unaPlaga.transmiteEnfermedades()) nivelDeSalud -= unaPlaga.nivelDeDaño().max(0)} 
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