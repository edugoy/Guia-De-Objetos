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

  method hayLugar() = self.lugaresTotalesLibres() > 0

  method hayLugarSentado() = self.lugaresSentadosLibres() > 0

  method lugaresTotalesOcupados() {
    return ocupadosParados + ocupadosSentados
  }
  method puedeSubir(unaPersona) = self.hayLugar() && unaPersona.aceptaSubir(self)

  method subirA(unaPersona) {
    if(self.puedeSubir(unaPersona)){

    }
  }
}

class Persona {
  method aceptaSubir(unMicro) {}
}

class Claustrofobico inherits Persona {
  override method aceptaSubir(unMicro) {
    unMicro.volumen() > 120
  }
}

class Fiaca inherits Persona{
  override method aceptaSubir(unMicro) {
    unMicro.hayLugarSentado()
  }
}

class Moderados inherits Persona {
  const lugaresQueQuiere
  override method aceptaSubir(unMicro) {
    unMicro.lugaresTotalesLibres() >= lugaresQueQuiere
  }
}

class Obsecuentes inherits Persona {
  const property jefe
  override method aceptaSubir(unMicro) {
    jefe.aceptaSubir(unMicro)
  }
}