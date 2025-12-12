class Panelista {
  var puntosEstrella

  method darRemateGracioso(tematica) {    
  }

  method opinarSobreTematica(tematica) {
    puntosEstrella += 1
  }
}

class Celebridad inherits Panelista {
  
  override method darRemateGracioso(tematica) {
    puntosEstrella += 3
  }
}

class Colorado inherits Panelista{
  var gracia


  override method darRemateGracioso(tematica) {
    puntosEstrella += (gracia / 5)
    gracia += 1
  }
}

class ColoradoConPeluca inherits Colorado {

  override method darRemateGracioso(tematica) {
    super(tematica)
    puntosEstrella += 1
  }
}

class Viejo inherits Panelista {
  
  override method darRemateGracioso(tematica) {
    const tituloTematica = tematica.split(" ")
    puntosEstrella += tituloTematica.size()
  }
}

class Deportivos inherits Panelista {
  
}