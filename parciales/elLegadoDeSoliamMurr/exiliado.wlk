class Exiliado {
  var diasExiliado = 0
  const leGustaElTe

  method tomarTe(asentamiento) {
    asentamiento.aumentarPorsperidad(10 * if(leGustaElTe) 1 else -1)    
  }

  method trabajar(asentamiento) {
    diasExiliado =+ 1
  }
}

class Nomada inherits Exiliado {
  
}

class Demonio inherits Nomada {
  
}