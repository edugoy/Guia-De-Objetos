class Caracteristica {
  
  method puntosPara(disfraz, persona, fechaFiesta) { }
}

class Gracioso inherits Caracteristica{
  const property nivelDeGracia

  override method puntosPara(disfraz, persona, fechaFiesta) {
    if (persona.edad() > 50){
        return nivelDeGracia * 3
    } else {
        return nivelDeGracia
    }
  }
}

class Tobara inherits Caracteristica {
  const property fechaCompra
  
  override method puntosPara(disfraz, persona, fechaFiesta) {
    if(self.cantidadDeDiasQueCompro(fechaFiesta) >= 2){
        return 5
    } else {
        return 3
    }
  } 

  method cantidadDeDiasQueCompro(fechaFiesta) {
    return fechaFiesta - fechaCompra
  }
}

class Careta inherits Caracteristica {
  const property valorPersonaje
  
  override method puntosPara(disfraz, persona, fechaFiesta) {
    return valorPersonaje
  }
}

class Sexy inherits Caracteristica{
  
  
  override method puntosPara(disfraz, persona, fechaFiesta) {
    if(persona.esSexy()){
        return 15
    } else {
        return 2
    }
  }
}