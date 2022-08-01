class CategoryModel {
  String? id;
  String? title;
  String? short;
  String? icon;
  List<Map<String, dynamic>> children;

  CategoryModel({
    required this.id,
    required this.title,
    required this.short,
    required this.icon,
    required this.children,
  });
}
