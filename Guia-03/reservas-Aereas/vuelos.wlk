class Vuelo {
  var asientosDisponibles

  method asientosDisponibles() = asientosDisponibles

  method reservarAsientos(cantidadAsientos) {
    asientosDisponibles -= cantidadAsientos
  }
}

class Asiento {
  const fila
  const columna
  const tipo
}