class Vaca {
  var property peso = 200000 //expresado en gr
  var tieneSed = false
  var estaVacunada = true

  method comer(pesoComida) {
    peso += pesoComida / 3
    tieneSed = true
  }

  method beber() {
    peso -= 500
    tieneSed = false
  }

  method convieneVacunar() {
    return !estaVacunada
  }

  method vacunar() {
    estaVacunada = true
  }

  method tieneHambre() {
    peso < 200000
  }

  method salirACaminar() {
    peso -= 3000
  }

  method verSiTieneSed() {
    return tieneSed 
  }
}

class Cerdo {
  var peso = 20000
  var tieneHambre = false
  var comidaMayorPeso = 0
  var tieneSed = false
  var comeSinBeber = 0
  var estaVacunada = true

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
        peso += pesoComida - 200
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

  method convieneVacunar() {
    return true
  }

  method tieneHambre() {
    return tieneHambre
  }

  method verSiTieneSed() {
    return tieneSed 
  }

  method vacunar() {
    estaVacunada = true
  }
}

class Gallina {
  const peso = 4
  var vecesQueComio = 0
  var tieneSed = false
  var estaVacunada = false

  method comer(pesoComida) {
    vecesQueComio += 1
  }

  method tieneHambre() {
    return true
  }

  method verSiTieneSed() {
    tieneSed = false
  }

  method convieneVacunar() {
    return false
  }

  method verCuantasVecesComio() {
    return vecesQueComio
  }

  method beber() {
    if(!tieneSed){
      tieneSed = false
    }
  }

  method vacunar() {
    estaVacunada = true
  }
}