class Programa {
  const property panelistas = []
  const property tematicas = []
  var emitido = false

  method puedeEmitirse() = self.cantidadPanelistas() > 2 && self.esProgramaInteresante()

  method cantidadPanelistas() = panelistas.size()
  method esProgramaInteresante() = self.cantidadTematicasInteresante() >= self.cantidadTematicas() /2

  method cantidadTematicas() = tematicas.size()
  method cantidadTematicasInteresante() = tematicas.count({tematica => tematica.esInteresante()})

  method emitirse() {
    self.tratarTematicas()
    self.finalizarEmision()
  }

  method tratarTematicas() {
    tematicas.forEach({tematica => self.opinarSobre(tematica)})
  }

  method opinarSobre(unaTematica) {
    panelistas.forEach({panelista => panelista.opinarConRemate(unaTematica)})
  }

  method finalizarEmision() {
    emitido = true
  }

  method panelistasEstrella() {
    self.validarProgramaEmitido()
    return panelistas.max({panelista => panelista.puntos()})
  }

  method validarProgramaEmitido() {
    if(!emitido) {
        throw new DomainException(message = "El programa no fue emitido")
    }
  }
}