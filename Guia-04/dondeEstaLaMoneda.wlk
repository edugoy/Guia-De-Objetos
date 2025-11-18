class ElJuegoCree {
  var vecesGanadas = 0
  var vecesPerdidas = 0
  var apuestaMasAlta = 0
  var dineroTotal = 0
  
  method apostar(dineroApostado, ubicacionMoneda) {
    self.verificarSiEsElMayor(dineroApostado)
    self.dineroTotalApostado(dineroApostado)
    if(ubicacionMoneda == self.sombreroConMoneda()){
        vecesPerdidas += 1
        dineroTotal -= dineroApostado * 2
        return dineroApostado * 2
    } else {
        vecesGanadas += 1
        return 0
    }
  }

  method sombreroConMoneda() {
    return (0.randomUpTo(3)).truncate(0) + 1
  }

  method verificarSiEsElMayor(dineroApostado) {
    if(dineroApostado > apuestaMasAlta)
    apuestaMasAlta = dineroApostado
  }

  method dineroTotalApostado(dineroApostado) {
    dineroTotal += dineroApostado
  }

  method verLaMayorApuesta() {
    return apuestaMasAlta
  }

  method verDineroTotalDeunJuego() {
    return dineroTotal
  }
}