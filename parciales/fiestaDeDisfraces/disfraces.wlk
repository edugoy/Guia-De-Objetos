class Disfraz {
  const property nombre
  const property fechaDeConfeccion
  var property caracteristicas = #{}

  method puntos(persona, fechaFiesta) {
    caracteristicas.sum({caracteristica => caracteristica.puntosPara(self, persona, fechaFiesta)})
  }
}