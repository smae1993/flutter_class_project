class User {
  String name;
  int nationalCode;
  User(this.name, this.nationalCode);

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "nationalCode": nationalCode,
    };
  }
}
