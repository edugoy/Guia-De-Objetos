class Auto {
  const cantidadPasajeros 
  const velocidadMaxima

  method velocidadMaxima() = velocidadMaxima

  method cantidadPasajeros() = cantidadPasajeros

  method gastoCada100Km() {
    return 20 + (cantidadPasajeros * 10)
  }

  method coeficienteDeEficiencia() {
    (self.cantidadPasajeros() * self.velocidadMaxima()) / self.gastoCada100Km()
  }
}