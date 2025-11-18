class Vaca {
  var pesoVaca = 200000 //expresado en gr
  var tieneSed = false
  var estaVacunada = true

  method comer(pesoComida) {
    pesoVaca += pesoComida / 3
    tieneSed = true
  }

  method beber() {
    pesoVaca -= 500
    tieneSed = false
  }

  method convieneVacunar() {
    return !estaVacunada
  }

  method vacunar() {
    estaVacunada = true
  }

  method tieneHambre() {
    pesoVaca < 200000
  }

  method salirACaminar() {
    pesoVaca -= 3000
  }
}

class Cerdo {
  var pesoCerdo = 20000
  var tieneHambre = false
  var comidaMayorPeso = 0
  var tieneSed = false
  var comeSinBeber = 0

  method comer(pesoComida) {
    self.verSiLeDaSed()
    self.verificarSiEsLaMayorComida(pesoComida)
    self.verSiAumentaPeso(pesoComida)
    self.verSiTodaviaTieneHambre(pesoComida)
    comeSinBeber += 1
  }

  method verSiTodaviaTieneHambre(pesoComida) {
    if(pesoComida > 1000){
        tieneHambre = false
    }else{
        tieneHambre = true
    }
  }

  method verificarSiEsLaMayorComida(pesoComida) {
    if(pesoComida > comidaMayorPeso){
        comidaMayorPeso = pesoComida
    }
  }

  method verSiAumentaPeso(pesoComida) {
    if(pesoComida > 200){
        pesoCerdo += pesoComida - 200
    }
  }
  
  method verCuantoFueLoUltimoQueComio() {
    return comidaMayorPeso
  }

  method beber() {
    tieneSed = false
    tieneHambre = true
    comeSinBeber = 0
  }

  method verSiLeDaSed() {
    if(comeSinBeber > 3){
        tieneSed = true
    }
  }
}