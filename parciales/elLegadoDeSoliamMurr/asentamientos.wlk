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
}

class Ciudad inherits Asentamiento {
  var habitantes
  var atracciones = []
  var monumentos = []

  method visitarMonumento(unExiliado, monumento) {
    
  }
}