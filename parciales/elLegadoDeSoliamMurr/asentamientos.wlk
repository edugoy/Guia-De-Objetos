import parciales.elLegadoDeSoliamMurr.solaimMurr.*

class Asentamiento {
  var prosperidad

  method cantidadPlazas()

  method tienePlaza() {
    return self.cantidadPlazas() > 0
  }

  method aumentarPorsperidad(unaCantidad) {
    prosperidad =+ unaCantidad
  }

  method pasearPorPlaza(unExiliado) {
    self.aumentarPorsperidad(5)
  }

  method tomarTe(unExiliado) {
    unExiliado.tomarTe(self)
  }

  method trabajar(horas, unExiliado) {
    self.aumentarPorsperidad((50 * horas))
    unExiliado.trabajar(self)
  }
}

class Pueblos inherits Asentamiento {
  
  override method cantidadPlazas() = 1

  method tieneMonumentoASoliamMurr() {
    return false
  }
}

class Ciudad inherits Asentamiento {
  var habitantes
  var atracciones = []
  var monumentos = []

  method visitarMonumento(unExiliado, monumento) {
    unExiliado.visitarMonumento(self, monumento)
  }

  method tieneMonumentoASoliamMurr() {
    return monumentos.any({monumento => soliamMurr.esReferenciadoPor(monumento)})
  }

  override method cantidadPlazas() {
    return self.cantidadDePlazasComoAtracciones() + habitantes.div(10000)
  }

  method cantidadDePlazasComoAtracciones() {
    return self.plazasComoAtracciones().size()
  }

  method plazasComoAtracciones() {
    return atracciones.filter({atraccion => atraccion.contains("plaza")})
  }

  method incrementarHabitantes() {
    habitantes += 1
  }

  method visitarMonumentoASoliamMurr(exiliado) {
    exiliado.visitarMonumento(self, self.monumentoASoliamMurr())
  }
  
  method monumentoASoliamMurr() {
    return monumentos.find({monumento => soliamMurr.esReferenciadoPor(monumento)})
  }
}