void main(List<String> arguments) {
  print('Hello world!');
  estudia("algebra", "calculo");

  print(nombreCompleto("nombre", "apepat", "apemat"));

  var salida = otroNombreCompleto("Perez", apemat: "Glz");
  print(salida);
}

void estudia(String materia1, String materia2) {
  print("Estudiando $materia1 y $materia2");
}

String nombreCompleto(String nombre, String apepat, [String? apemat]) {
  if (apemat != null) {
    return "$nombre $apepat $apemat";
  } else {
    return "$nombre $apepat";
  }
}

String otroNombreCompleto(String nombre, {String? apepat, String? apemat}) {
  String salida = nombre;
  if (apepat != null) {
    salida = "$nombre $apepat";
  } else if (apemat != null) {
    salida = "$nombre $apepat $apemat";
  }
  return salida;
}
