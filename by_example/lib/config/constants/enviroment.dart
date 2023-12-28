import 'package:flutter_dotenv/flutter_dotenv.dart';


class Enviroment {
  static String masterURL = dotenv.env['MASTER_URL'] ?? 'http://localhost';
}