void main() {
  print(nombreCompleto("juan", "perez"));
  print(empleado("godin", apemat: "Jimenez", apepat: "perez"));
}

String nombreCompleto(String nombre, String apepat, [String? apemat = ""]) {
  if (apemat != null) {
    return "$nombre $apemat $apepat";
  } else {
    return "$nombre $apemat";
  }
}

String empleado(String nombre, {String apepat = "", String apemat = ""}) {
  return "$nombre $apepat $apemat ";
}
