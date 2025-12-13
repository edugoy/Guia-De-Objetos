class Jugador {
  const property color
  var property mochila = []
  var property nivelDeSospecha = 40
  var property tareasARealizar = []
  const personalidad

  method esSospechoso() {
    return nivelDeSospecha > 50
  }

  method buscar(item) {
    mochila.add(item)
  }

  method aumentarSospecha(cantidad) {
    nivelDeSospecha += cantidad
  }

  method disminuirSospecha(cantidad) {
    nivelDeSospecha -= cantidad
  }
  
  method tieneItem(item) {
    mochila.contains(item)
  }

  method quitarItem(item) {
    mochila.remove(item)
  }

  method tareaRealizada(tarea, nave) {
    tareasARealizar.remove(tarea)
    nave.verificarVictoria(self)
  }

  method verificarTareas() {
    return tareasARealizar.isEmpty()
  }

  method mochilaVacia() {
    return mochila.isEmpty()
  }

  method votar(nave) {
    personalidad.votar(self, nave)
  }
}

class Tripulante inherits Jugador {
  
  method tareaPendiente() {
    return tareasARealizar.anyOne()
  }

  method hacerTareaElegida(nave) {
    const tareaElegida = self.tareaPendiente()
    if(tareaElegida.puedeRealizarTarea(self)){
        tareaElegida.realizarTarea(self, nave)
    }
  }
}

class Impostor inherits Jugador {

  override method verificarTareas() {
    return true
  }

  method realizarTarea(tarea) {
   // no hace nada 
  }

  method hacerTareaElegida() {
    // no hace nada
  }
}