class UserModel {
  final String name;
  final String bio;
  final String profileImage;
  final String bannerImage;
  int followers = 0;
  int followings = 0;
  UserModel({
    required this.name,
    required this.bio,
    required this.profileImage,
    required this.bannerImage,
  });
}
