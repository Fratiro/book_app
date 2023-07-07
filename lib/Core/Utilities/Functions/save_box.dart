import 'package:hive/hive.dart';

import '../../../Features/Home/Domain/Entities/book_entity.dart';
import '../../../constants.dart';

void saveData({required List<BookEntity> books, required String boxName}) {
  var box = Hive.box<BookEntity>(kHivefeaturedBoxName);
  box.addAll(books);
}