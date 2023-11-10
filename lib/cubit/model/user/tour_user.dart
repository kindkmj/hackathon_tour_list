class TourUser {
  TourUser({
    required this.email,
    required this.uid,
    required this.name,
  });

  final String email;
  final String uid;
  final String name;

  TourUser copyWith({
    String? email,
    String? uid,
    String? name,
  }) {
    return TourUser(
      email: email ?? this.email,
      uid: uid ?? this.uid,
      name: name ?? this.name,
    );
  }
}
