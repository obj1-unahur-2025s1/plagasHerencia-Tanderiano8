class Cucaracha{
    const property peso
}
class Pulga{
    const property peso
}
class Garrapata{
    const property peso
}
class Mosquito{
    const property peso
}

class Plaga {
    const poblacion = #{}
    method agregarInsectos(insectos) {poblacion.addAll(insectos)}
    method removerInsectos(insectos) {poblacion.removeAll(insectos)}
    method nivelDeDaño() = 0
    method transmiteEnfermedades() = poblacion >= 10
}



class PlagaDeCucarachas inherits Plaga{
    override method nivelDeDaño() = poblacion / 2 
    override method transmiteEnfermedades() = poblacion >= 10 and self.pesoPromedio() >= 10
    method pesoPromedio() = self.pesoDeTodas() / poblacion
    method pesoDeTodas() = poblacion.sum({c=>c.peso()})
    
}
class PlagaDePulgas inherits Plaga{
    override method nivelDeDaño() = poblacion * 2
}
class PlagaDeGarrapatas inherits Plaga{
    override method nivelDeDaño() = poblacion * 2 
}
class PlagaDeMosquitos inherits Plaga{
    override method nivelDeDaño() = poblacion 
    override method transmiteEnfermedades() = poblacion >= 10 and poblacion % 3 == 0
}
