class LoginInPayload {
  String? phoneNumber;
  String? password;

  Map<String, dynamic> toJson() {
    return {
      "phoneNumber": phoneNumber,
      "password": password,
    };
  }
}
