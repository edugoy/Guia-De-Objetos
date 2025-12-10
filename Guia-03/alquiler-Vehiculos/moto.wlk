class Moto {
  const cilindrada

  method cilindrada() = cilindrada

  method velocidadMaxima() {
    return cilindrada / 5
  }

  method gastoCada100Km() {
    return 5 + (cilindrada / 200)
  }

  method cantidadPasajeros() {
    if(cilindrada <= 150){
        return 1
    }else{
        return 2
  }
  }

  method coeficienteDeEficiencia() {
    (self.cantidadPasajeros() * self.velocidadMaxima()) / self.gastoCada100Km()
  }
}