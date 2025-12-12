class Tematica {
  var property titulo
  method esInteresante() = false

  method cantidadPalabras() = titulo.words().size()

  method puntosPorOpinion(unPanelista) = unPanelista.puntosOpinionComun()
}

class Filosofica inherits Tematica {
  override method esInteresante() = self.cantidadPalabras() > 20
}

class Farandula inherits Tematica {
  const involucrados = []

  method estaInvolucrado(unFarandulero) = involucrados.contains(unFarandulero)

  override method esInteresante() = self.cantidadInvolucrados() >= 3

  method cantidadInvolucrados() = involucrados.size()

  override method puntosPorOpinion(unPanelista) = unPanelista.puntosOpinionFarandulera(self)
}

class Deportiva inherits Tematica {
  override method puntosPorOpinion(unPanelista) = unPanelista.puntosOpinionDeportiva()

  override method esInteresante() = titulo.contains("Messi")
}

class TematicaMixta inherits Tematica {
  var property tematicas = []

  override method titulo() = tematicas.map({tematica => tematica.titulo()}).join()

  override method puntosPorOpinion(unPanelista) = tematicas.sum({tematica => tematica.puntosPorOpinion(unPanelista)})

  override method esInteresante() = tematicas.any({tematica => tematica.esInteresante()})
}