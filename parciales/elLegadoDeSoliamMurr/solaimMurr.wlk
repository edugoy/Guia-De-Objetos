object soliamMurr {
  const referencias = ["El primer exiliado", "El ultimo de su nombre", "Soliam Murr"]

  method esReferenciadoPor(unMonumento) {
    return referencias.any({referencia => unMonumento.contains(referencia)})
  }
}