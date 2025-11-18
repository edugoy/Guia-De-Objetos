import Guia-02.atencionDeAnimales.vacunatorio.*
import Guia-02.atencionDeAnimales.bebederos.*
import Guia-02.atencionDeAnimales.comederos.*
import Guia-02.atencionDeAnimales.animales.*


class EstacionDeServicio {
  const dispositivos = #{}

  method sePuedeAtenderA(unAnimal) {
    dispositivos.any({dispositivo => dispositivo.puedeAtenderA(unAnimal)})
  }

  method sePuedeAtenderEn(unAnimal) {
    return dispositivos.filter({dispositivo => dispositivo.puedeAtenderA(unAnimal)})
  }

  method seAtiendeEn(unAnimal) {
    const disponibles = self.sePuedeAtenderEn(unAnimal)
    if((disponibles.isEmpty())){
        return null
    } return disponibles.anyOne()
  }

  method atenderA(unAnimal) {
    const lugar = self.sePuedeAtenderEn(unAnimal)
    if(lugar != null){
        lugar.atenderA(unAnimal)
    }
  }

  method recargarDispositivos() {
    const dispositivosACargar = self.dispositivosQueNecesitanRecargarse()
    if(!dispositivosACargar.isEmpty()){
        dispositivosACargar.forEach({dispositivo => dispositivo.recargar()})
    }
  }

  method dispositivosQueNecesitanRecargarse() {
    return dispositivos.filter({dispositivo => dispositivo.necesitaRecargar()})
  }
}