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

  void calculateExpr() {
    print(entrada.length);
    final exprNum = RegExp(r"([0-9])", multiLine: true);
    final exprSimbSoma = RegExp(r"[+]");
    final exprSimbDiv = RegExp(r"[/]");
    final exprSimbMult = RegExp(r"[*]");
    final exprSimbSub = RegExp(r"[-]");
    double resultado = 0;
  }
}
