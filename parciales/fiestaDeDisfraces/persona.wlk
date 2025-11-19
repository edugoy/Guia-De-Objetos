
class Persona {
  const property edad
  const property personalidad
  var property miDisfraz

  method esSexy() = personalidad.esSexy(self)

  method satisfechoCon(disfraz) { }
}

class Caprichoso inherits Persona {
  override method satisfechoCon(disfraz) {
    not(disfraz.nombre().isEmpty()) && self.letrasPar(disfraz)
  }

  method letrasPar(disfraz) {
    return self.cantidadLetras(disfraz) % 2 == 0
  }

  method cantidadLetras(disfraz) {
    return disfraz.nombre().split(" ").size()
  }
}

class Pretenciosos inherits Persona {
  override method satisfechoCon(disfraz) {
    disfraz.fechaDeConfeccion() < 30
  }
}

class Numerologo inherits Persona {
  var property cifraPreferida
  const property fechaFiesta

  override method satisfechoCon(disfraz) {
    const puntaje = disfraz.puntos(self, fechaFiesta)
    puntaje > 10 && puntaje == cifraPreferida
  }
}