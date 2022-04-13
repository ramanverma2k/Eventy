class Mutations {
  static const String addUser = """
    mutation addUser(\$name: name) {
    action: insert_test_users_one(object: {name: \$name}) {
      name
      id
    }
  }
  """;
}
