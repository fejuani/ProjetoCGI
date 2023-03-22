class Account {
  int? id;
  final String name;
  final String cpf;
  final String email;
  final String phone;

  Account({this.id, required this.name, required this.cpf, required this.email, required this.phone});

  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'name': name,
      'cpf': cpf,
      'email': email,
      'phone': phone,
    };
  }

    factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      id: map["id"] as int,
      name: map["name"] as String,
      cpf: map["cpf"] as String,
      phone: map["phone"] as String,
      email: map["email"] as String,
    );
  }
}