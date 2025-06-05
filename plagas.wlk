
import elementos.*
class Plaga {
    var poblacion
    method transmiteEnfermedades() = poblacion >= 10
    method efectoDeAtaque() { poblacion += poblacion * 0.1}
    method atacar(unElemento) {
        unElemento.efectoDelAtaque(self)
        self.efectoDeAtaque()
        }
}



class PlagaDeCucarachas inherits Plaga{
    var pesoPromedio
    method nivelDeDaño() = poblacion / 2 
    override method transmiteEnfermedades() = super() and pesoPromedio >= 10
    override method efectoDeAtaque() {
        super()
        pesoPromedio += 2} 
}
class PlagaDePulgas inherits Plaga{
    method nivelDeDaño() = poblacion * 2
}
class PlagaDeGarrapatas inherits PlagaDePulgas{
    override method efectoDeAtaque() {
        poblacion += poblacion * 0.2
        
        }
}
class PlagaDeMosquitos inherits Plaga{
    method nivelDeDaño() = poblacion 
    override method transmiteEnfermedades() = super() and poblacion % 3 == 0
}


