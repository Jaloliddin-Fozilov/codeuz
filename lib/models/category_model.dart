class CategoryModel {
  String? id;
  String? title;
  String? icon;
  List<Map<String, String>>? children;

  CategoryModel({
    required this.id,
    required this.title,
    required this.icon,
    required this.children,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    icon = json['icon'];
    children = json['children'];
  }
}
