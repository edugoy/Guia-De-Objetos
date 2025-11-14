object juliana {
  const celular = samsungS21
  const compania = personal

  method cantidadDeBateria() {
    return celular.bateria()
  }

  method realizarLlamada(duracion) {
    celular.bateriaConsumida(duracion)
  }

  method celularApagado() {
    celular.celularApagado()
  }

  method cargarCelular() {
    celular.cargarBateria()
  }
}

object catalina {
  const celular = iphone13
  const compania = movistar

  method cantidadDeBateria() {
    return celular.bateria()
  }
  
  method realizarLlamada(duracion) {
    celular.bateriaConsumida(duracion)
  }

  method celularApagado() {
    celular.celularApagado()
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

  method celularApagado() {
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

  method celularApagado() {
    bateria == 0
  }
}

object movistar {
  const precioBase = 60

  method cobroFijo() {
    return precioBase
  }

  method montoLlamadoPorMinuto(minutos) {
    self.cobroFijo() * minutos
  }
}

object claro {
  const precioBase = 50

  method cobroFijo() {
    return precioBase * 1.21
  }

  method montoLlamadoPorMinuto(minutos) {
    self.cobroFijo() * minutos
  }
}

object personal {
  const precioBase = 70

  method cobroFijo() {
    return precioBase 
  }

  method montoLlamadoPorMinuto(minutos) {
    self.cobroFijo() * minutos
  }
}