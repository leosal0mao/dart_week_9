import 'package:intl/intl.dart';

extension FormatterExtension on double {
  String get currencyPTBR {
    final currencyFormat = NumberFormat.currency(locale: 'pt-br', symbol: r'R$');
    return currencyFormat.format(this);
  }
}
