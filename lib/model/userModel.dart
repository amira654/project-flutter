class UserModel {
  String nameofbook;
  String auther;
  String publisher;
  String pages;

  UserModel({
    required this.nameofbook,
    required this.auther,
    required this.publisher,
    required this.pages,
  });
  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
      nameofbook: json['name of book'] == null ? null : json['name of book'],
      auther: json['auther'] == null ? null : json['auther'],
      publisher: json['publisher'] == null ? null : json['publisher'],
      pages: json['no.of pages'] == null ? null : json['no.of pages']);

  Map<String, dynamic> tojson() => {
        'name of book': nameofbook,
        'auther': auther,
        'publisher': publisher,
        'No of pages': pages,
      };
}
