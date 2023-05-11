class ValidateExpression {
  String entrada;
  ValidateExpression({required this.entrada});

  bool validate() {
    final expr = RegExp(
        r"^([-+]?[0-9]*\.?[0-9]+[\/\+\-\*])+([\-\+\*\/]*\.?[0-9]+)",
        multiLine: true);
    if (expr.hasMatch(entrada)) {
      return true;
    } else {
      return false;
    }
  }
}
