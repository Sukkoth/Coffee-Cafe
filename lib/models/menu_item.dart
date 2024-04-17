import 'package:uuid/uuid.dart';

final _generateId = const Uuid().v4;

class MenuItem {
  final String id;
  final String name;
  final String? description;
  final double price;
  final String? imageUrl;
  final bool? isAvailable;
  final String? subCategoryId;
  final List<String>? customizationOptions;

  MenuItem({
    required this.name,
    this.description,
    required this.price,
    this.imageUrl,
    this.customizationOptions,
    this.isAvailable = true,
    this.subCategoryId,
  }) : id = _generateId();
}
