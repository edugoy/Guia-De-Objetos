object juliana {
  const celular = samsungS21

  method cantidadDeBateria() {
    return celular.bateria()
  }

  method realizarLlamada(duracion) {
    celular.bateriaConsumida(duracion)
  }

  method celularApagado() {
    celular.apagado()
  }

  method cargarCelular() {
    celular.cargarBateria()
  }
}

object catalina {
  const celular = iphone13

  method cantidadDeBateria() {
    return celular.bateria()
  }
  
  method realizarLlamada(duracion) {
    celular.bateriaConsumida(duracion)
  }

  method celularApagado() {
    celular.apagado()
  }

  method cargarCelular() {
    celular.cargarBateria()
  }
}

object samsungS21 {
  var bateria = 5

  method bateria() = bateria

  method bateriaConsumida(tiempo) {
    bateria -= 0.25
  }

  method cargarBateria() {
    bateria = 5
  }

  method apagado() {
    bateria == 0
  }
}
object iphone13 {
  var bateria = 5

  method bateria() = bateria

  method bateriaConsumida(tiempo) {
    bateria -= (tiempo * 0.01)
  }

  method cargarBateria() {
    bateria = 5
  }

  method apagado() {
    bateria == 0
  }
}