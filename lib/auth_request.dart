class AuthRequest {
  AuthRequest({
    required this.firebaseUid,
    required this.loginType,
    required this.displayedName,
    required this.email,
    required this.selectedPlan,
  });

  final String firebaseUid;
  final String loginType;
  final String displayedName;
  final String email;
  final String selectedPlan;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'firebaseUid': firebaseUid,
    'loginType': loginType,
    'displayedName': displayedName,
    'email': email,
    'selectedPlan': selectedPlan,
  };
}
