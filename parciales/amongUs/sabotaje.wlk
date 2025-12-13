class Sabotaje {
  
  method realizarSabotaje(jugador, nave) {
  }
}

class ReducirOxigeno inherits Sabotaje {
  
  override method realizarSabotaje(jugador, nave) {
    if(!nave.alguienTiene("tubo de oxigeno")){
        nave.disminuirNivelOxigeno(10)
    }
    jugador.aumentarSospecha(5)
    nave.verificarDerrota()
  }
}