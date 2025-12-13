class Personalidad {
  
  method votar(jugador, nave) {
  }
}

class Troll inherits Personalidad {
  
  override method votar(_jugador, nave) {
    nave.jugadores().min({jugador => jugador.nivelDeSospecha()})
  }
}

class Detectives inherits Personalidad {
  
  override method votar(_jugador, nave) {
    nave.jugadores().max({jugador => jugador.nivelDeSospecha()})
  }
}

class Materialistas inherits Personalidad {
  
  override method votar(_jugador, nave) {
    nave.jugadores().findOrDefault({jugador => jugador.mochilaVacia()})
  }
}