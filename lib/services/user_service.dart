class UserService {
  Future<UserModel> getUser() async {
    // Implement user retrieval logic here
    return const UserModel(name: 'John Doe', level: 1);
  }
}