import 'package:myexpenses/app/data/sql/data_help.dart';

abstract class CategoryData {
  static String sqlCreate() {
    const String idField = 'id';
    const String titleField = 'title';
    const String colorField = 'color';
    const String isActive = 'isActive';
    return '''
    CREATE TABLE categorys (
      $idField ${DataHelp.idType},
      $titleField ${DataHelp.textType},
      $colorField ${DataHelp.textType},
      $isActive ${DataHelp.boolType}
    )
    ''';
  }
}
