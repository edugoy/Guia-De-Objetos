object pepe {
  const categoria = cadete
  const bonoPresentismo = bonoPresentismoPorFaltas
  const bonoResultado = bonoResultadoNulo
  var faltas = 0 

  method sueldo() { // sueldo = neto x presentismo + bono x resultado
    return self.neto() + bonoPresentismo.sueldo(self) + bonoResultado.sueldo(self)
  }

  method neto() {
    return categoria.sueldoNeto()
  }

  method bonoPresentismo() {
    return bonoPresentismo.sueldo(self)
  }

  method bonoResultado() {
    return bonoResultado.sueldo(self)
  }
}

object cadete {
  method sueldoNeto() = 1500
}

object gerente {
  method sueldoNeto() = 1000
}

object bonoPresentismoNulo {
  method sueldo() = 0
}

object bonoPresentismoPorFaltas {
  method sueldo(empleado) {
    const faltas = empleado.faltas()
    if(faltas <= 1){
        return 100
    }else if (faltas == 1){
        return 50
    }else {
        return 0
    }
  }
}

object bonoResultado{
    method sueldo(empleado){
        if(empleado.faltas() == 0){
            return 100
        } else if (empleado.faltas() == 1){
            return 50
        } else {
            return 0
        }
    }
}

object bonoResultadoNulo {
  method sueldo() = 0
}