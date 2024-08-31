class UserModal {
  String id;
  String email;
  String firstName;
  String lastName;
  String avatar;
  bool liked;

  UserModal({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
    this.liked = false,
  });

  factory UserModal.fromJson(Map<String, dynamic> json) {
    return UserModal(
      id: json['id'].toString(),
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar'],
    );
  }
}
