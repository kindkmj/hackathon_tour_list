import 'package:tour_list/cubit/model/tour/comment_model.dart';
import 'package:tour_list/cubit/model/tour/location_model.dart';

class Tour {
  Tour({
    required this.commentList,
    required this.content,
    required this.createdAt,
    required this.creatorId,
    required this.date,
    required this.locationModel,
    required this.price,
    required this.tags,
    required this.theme,
    required this.title,
    required this.vehicle,
  });

  List<CommentModel> commentList;
  String content;
  String createdAt;
  String creatorId;
  String date;
  LocationModel locationModel;
  String price;
  List<String> tags;
  String theme;
  String title;
  String vehicle;
}
