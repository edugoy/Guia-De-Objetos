import parciales.noticiasDeAyer.noticia.*

class Periodista {
  const property fechaIngreso
  var noticiasPublicadasHoy = #{}

  
  method quieroPublicar(noticia, hoy) {
    return true
  }
  method noQuieroPublicar(noticia, hoy) {
    not(self.quieroPublicar(noticia, hoy))
  }

  method cantidadNoPreferidasPublicadas(hoy) {
    return noticiasPublicadasHoy.filter({noticia => self.noQuieroPublicar(noticia, hoy).size()})
  }

  method publicarNoticia(noticia, hoy) {
    if(noticia.noticiaBienEscrita() && self.puedePublicar(noticia, hoy)){
        noticiasPublicadasHoy.add(noticia)
    }
  }

  //queda a definir el metodo puedePublicar

}

class PeriodistaCopado inherits Periodista {
  

  override method quieroPublicar(noticia, hoy) {
    return noticia.esCopada(hoy)
  }
}

class PeriodistaSensacionalista inherits Periodista {
  

  override method quieroPublicar(noticia, hoy) {
    noticia.esSensacionalista()
  } 
}

class PeriodistaVago inherits Periodista {
  

  override method quieroPublicar(noticia, hoy) {
    self.esCorta(noticia) or noticia.esChivo()
  }

  method esCorta(noticia) = self.cantidadPalabras(noticia) < 100

  method cantidadPalabras(noticia) {
    return noticia.split(" ").size()
  }
}