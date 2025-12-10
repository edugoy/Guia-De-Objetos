import Guia-03.alquiler-Vehiculos.bicicletas.Bicicleta
import Guia-03.alquiler-Vehiculos.moto.Moto
import Guia-03.alquiler-Vehiculos.autos.Auto




class Empresa {
  var vehiculos = #{}

  method velocidadMaximaMayorA(velocidadDada) {
    return vehiculos.filter({vehiculo => vehiculo.velocidadMaxima() > velocidadDada})
  }

  method cada100KmConsumeMenosQue(consumoDado) {
    return vehiculos.filter({vehiculo => vehiculo.gastoCada100Km() < consumoDado})
  }

  method vehiculoMasEficiente() {
    return vehiculos.max({vehiculo => vehiculo.coeficienteDeEficiencia()})
  }

  method cantidadPasajerosConVelocidadMayorA(velocidad) {
    const vehiculosNuevos = self.velocidadMaximaMayorA(velocidad)
    return vehiculosNuevos.sum({vehiculo => vehiculo.cantidadPasajeros()})
  }
}