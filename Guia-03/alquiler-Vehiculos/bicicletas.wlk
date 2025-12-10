class Bicicleta {
  const rodado

  method rodado() = rodado 

  method velocidadMaxima() {
    return rodado * 1.2
  }

  method gastoCada100Km() {
    return 1
  }

  method cantidadPasajeros(){
    return 1
  }

  method coeficienteDeEficiencia() {
    (self.cantidadPasajeros() * self.velocidadMaxima()) / self.gastoCada100Km()
  }
}

