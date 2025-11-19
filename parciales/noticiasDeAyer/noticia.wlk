class Noticia {
 const property fechaDePublicacion
 const property periodistaQueLoPublico
 const property gradoDeImportancia
 const property titulo
 const property desarrolloDeLaNoticia

 method criterioDeCopada(hoy) = gradoDeImportancia >= 8 && self.fuePublicadoHaceMenosDe(3, hoy)
 method criterioDeSensacionalista() = titulo.contains("espectacular") or titulo.contains("increible") or titulo.contains("grandioso")

 method fuePublicadoHaceMenosDe(cantidadDeDias, hoy) = (hoy - fechaDePublicacion) < cantidadDeDias

 method esCopada(hoy) {
   self.criterioDeCopada(hoy)
 }
 
 method esSensacionalista() {
   self.criterioDeSensacionalista()
 }

 method esChivo() = false

 method noticiaBienEscrita() {
   self.cantidadPalabrasTitulo() >= 2 && not(desarrolloDeLaNoticia.isEmpty())
 }

 method cantidadPalabrasTitulo() {
   return titulo.split(" ").size()
 }
}

class NoticiaComun inherits Noticia {
  var property cantidadLinkANoticias

  override method esCopada(hoy) {
    self.criterioDeCopada(hoy) && cantidadLinkANoticias > 2
  }
}

class Chivo inherits Noticia {
  var property productoPromocionado
  var property plataDePublicacion

  override method esCopada(hoy) {
    self.criterioDeCopada(hoy) && plataDePublicacion > 2000000
  }

  override method esChivo() = true
}

class Reportaje inherits Noticia {
  var property personEntrevistada

  override method esCopada(hoy) {
    self.criterioDeCopada(hoy) && self.esImpar(personEntrevistada.size())
  }

  method esImpar(cantidadLetras) = (cantidadLetras % 2) != 0

  override method esSensacionalista() {
    self.criterioDeSensacionalista() && personEntrevistada.contains("Dibu Martinez")
  }
}

class Cobertura inherits Noticia {
  const property noticias = #{}

  override method esCopada(hoy) {
    self.criterioDeCopada(hoy) && noticias.all({noticia => noticia.esCopada(hoy)})
  }
}