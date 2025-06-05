class PlagaDeCucarachas{
    const poblacion
    const pesoPromedioCadaBicho 
    method nivelDeDaño()  = poblacion / 2
    method transmiteEnfermedades() = poblacion >= 10 and pesoPromedioCadaBicho >= 10
}


class PlagaDePulgas{
    const poblacion 
    method nivelDeDaño()  = poblacion * 2
    method transmiteEnfermedades() = poblacion >= 10
}

class PlagaDeGarrapatas{
    const poblacion 
    method nivelDeDaño()  = poblacion * 2
    method transmiteEnfermedades() = poblacion >= 10
}

class PlagaDeMosquitos{
    const poblacion 
    method nivelDeDaño()  = poblacion
    method transmiteEnfermedades() = poblacion >= 10 and poblacion % 3 == 0
}


