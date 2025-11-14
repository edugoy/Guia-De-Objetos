class Micro {
  const property capacidadSentados
  const property capacidadParados
  const property volumen
  var ocupadosSentados = 0
  var ocupadosParados = 0

  method lugaresSentadosLibres() {
    return capacidadSentados - ocupadosSentados 
  }

  method lugaresParadosLibres() {
    return capacidadParados - ocupadosParados
  }

  method lugaresTotalesLibres() {
    return self.lugaresSentadosLibres() + self.lugaresParadosLibres()
  }

  method hayLugar() {
    self.lugaresLibres() > 0
  }

  method hayLugarSentado() {
    self.lugaresSentadosLibres() > 1
  }

  method lugaresLibres() {
    return  self.lugaresTotalesOcupados() - self.lugaresTotalesLibres()
  }

  method lugaresTotalesOcupados() {
    return capacidadParados + capacidadSentados
  }
}

class Persona {
  
}