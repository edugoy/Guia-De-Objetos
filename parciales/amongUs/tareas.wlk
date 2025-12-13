import parciales.amongUs.jugadores.*
class Tarea {
  

  method puedeRealizarTarea(jugador) {    
  }

  method realizarTarea(jugador, nave) {
  }
}

class TableroElectrico inherits Tarea {
  
  override method puedeRealizarTarea(jugador) {
    return jugador.tieneItem("llave inglesa")
  }

  override method realizarTarea(jugador, nave) {
    if(self.puedeRealizarTarea(jugador)){
    jugador.aumentarSospecha(10)
    jugador.tareaRealizada(self, nave)
    jugador.quitarItem("llave inglesa")
    }
  }
}

class SacarBasura inherits Tarea {
  
  override method puedeRealizarTarea(jugador) {
    return jugador.tieneItem("escoba") and jugador.tieneItem("bolsa de consorcio")
  }

  override method realizarTarea(jugador, nave) {
    if(self.puedeRealizarTarea(jugador)){
        jugador.disminuirSospecha(4)
        jugador.tareaRealizada(self, nave)
        jugador.quitarItem("escoba")
        jugador.quitarItem("bolsa de consorcio")
    }
  }
}

class VentilarNave inherits Tarea {
  

  override method realizarTarea(jugador, nave) {
    nave.aumentarNivelOxigeno(4)
  }
}