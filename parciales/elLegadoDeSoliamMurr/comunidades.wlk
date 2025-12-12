class Comunidades {
  var asentamientos = []

  method prosperidad() {
    return asentamientos.sum({asentamiento => asentamiento.prosperidad()})
  }

  method asentamientoMasProspero() {
    return asentamientos.max({asentamiento => asentamiento.prosperidad()})
  }

  method serVisitado(triunvirato) {
    self.asentamientoMasProspero().serVisitado(triunvirato)
  }
}