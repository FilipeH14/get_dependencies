import 'package:flutter/cupertino.dart';

class BasicoController extends ChangeNotifier {
  var nome = 'sem nome';

  void alterarNome(String nomeAlterar) {
    nome = nomeAlterar;
    notifyListeners();
  }
}
