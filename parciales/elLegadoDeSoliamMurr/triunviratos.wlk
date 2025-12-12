class Triunvirato {
  var property exiliados = []
  var lider

  method estaActivo() {
    return self.cantidadDeMiembros() > 3
  }

  method cantidadDeMiembros() {
    return exiliados.size()
  }

  method incorporarExiliado(unExiliado) {
    exiliados.add(unExiliado)
  }

  method cambiarLider(nuevoLider) {
    self.formaParte(nuevoLider)
    lider = nuevoLider
  }

  method formaParte(unExiliado) {
    exiliados.contains(unExiliado)
  }

  method visitarAsentamiento(asentamiento) {
    exiliados.forEach({exiliado => lider.congraciarse(exiliado, asentamiento, exiliados)})
  }

  method companieroCualquieraDe(exiliado) {
    return self.exiliadosSin(exiliado).anyOne()
  }

  method exiliadosSin(exiliado) {
    return exiliados.filter({miembro => miembro != exiliado})
  }
}