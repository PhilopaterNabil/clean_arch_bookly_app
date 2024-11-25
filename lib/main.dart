import 'package:clean_arch_bookly_app/bookly_app.dart';
import 'package:clean_arch_bookly_app/core/utils/constants.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(Constants.kFeaturedBox);
  await Hive.openBox<BookEntity>(Constants.kNewestBox);

  runApp(const BooklyApp());
}
