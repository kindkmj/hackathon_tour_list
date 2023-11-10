class CommentModel {
  CommentModel({
    required this.createAt,
    required this.title,
    required this.userUid,
  });

  String createAt;
  String title;
  String userUid;

  factory CommentModel.fromJson(Map<String, dynamic> json) => CommentModel(
        createAt: json["createAt"] as String? ?? '',
        title: json["title"] as String? ?? '',
        userUid: json["userUid"] as String? ?? '',
      );
}
