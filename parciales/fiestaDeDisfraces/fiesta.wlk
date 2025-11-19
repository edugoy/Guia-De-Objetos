class Fiesta {
  var property lugarDeLaFiesta
  const property fechaDeFiesta
  var property invitados = #{}

  method esUnBodrio() {
    invitados.all({invitado => not(invitado.satisfechoCon(invitado.miDisfraz()))})
  }

  method puntajeDisfraz() {
    const invitado = invitados.anyOne()
    return invitado.miDisfraz().puntos(invitado, fechaDeFiesta)
  }

  method mejorDisfraz() {
    invitados.max({invitado => invitado.miDisfraz().puntos(invitado, fechaDeFiesta)})
  }
}

class FiestInolvidable inherits Fiesta {
  
  method esInolvidable() {
    invitados.all({invitado => invitado.esSexy()}) && invitados.all({invitado => invitado.satisfechoCon(invitado.miDisfraz())})
  }
}