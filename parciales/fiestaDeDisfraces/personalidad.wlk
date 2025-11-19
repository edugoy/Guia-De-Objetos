class Personalidad {
  method esSexy(persona) {
    
  }
}

class Alegre inherits Personalidad {
  override method esSexy(persona) = false
}

class Taciturna inherits Personalidad {
    override method esSexy(persona) {
    persona.edad() < 30
  }
}

class Cambiante inherits Personalidad {
  const property personalida1
  const property personalida2

  override method esSexy(persona) {
    if(self.usarPrimer(persona)){
      return personalida1.esSexy(persona)
    } else {
      return personalida2.esSexy(persona)
    }
  }

  method usarPrimer(persona) = persona.edad() % 2 == 0
}