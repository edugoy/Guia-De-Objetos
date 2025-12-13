class Nave {
  var nivelOxigeno = 10
  var property jugadores = []


  method aumentarNivelOxigeno(cantidad) {
    nivelOxigeno += cantidad
  }

  method disminuirNivelOxigeno(cantidad) {
    nivelOxigeno -= cantidad
  }

  method verificarVictoria(jugador) {
    const tareas = self.tareasDeJugadores()
    if(tareas.isEmpty()){
        self.error("felicitaciones, ganaron los tripulantes")
    }
  }

  method tareasDeJugadores() {
    return jugadores.flatMap({jugador => jugador.tareasARealizar()})
  }

  method verificarDerrota() {
    if(nivelOxigeno <= 0){
        self.error("felicitaciones, ganaron los importores")
    }
  }

  method alguienTiene(item) {
    const items = self.itemsJugadores()
    items.contains(item)
  }

  method itemsJugadores() {
    return jugadores.flatMap({jugador => jugador.mochila()})
  }

  method jugadoresVotados() {
    return jugadores.map({jugador => jugador.votar(self)})
  }

  method realizarVotacion() {
    const votados = self.jugadoresVotados()
    const candidatos = votados.asSet()
  }
}