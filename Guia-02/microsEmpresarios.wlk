class Micro {
  const property capacidadSentados
  const property capacidadParados
  const property volumen
  var ocupadosSentados = 0
  var ocupadosParados = 0

  method lugaresSentadosLibres() {
    return ocupadosSentados
  }

  method lugaresParadosLibres() {
    return ocupadosParados
  }

  method lugaresTotalesLibres() {
    return self.lugaresSentadosLibres() + self.lugaresParadosLibres()
  }

  method hayLugar() {
    self.lugaresLibres()
  }

  method hayLugarSentado() {
    ocupadosSentados > 1
  }

  method lugaresLibres() {
    self.lugaresTotalesLibres() - self.lugaresTotalesOcupados()
  }

  method lugaresTotalesOcupados() {
    return capacidadParados + capacidadSentados
  }
}

class Persona {
  
}