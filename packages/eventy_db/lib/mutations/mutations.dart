class Mutations {
  static const String registerUser = """
    mutation registerUser(\$id: uuid!, \$username: String!, \$password: String!, \$first_name: String!
    \$last_name: String!, \$email: String!, \$contact_no: String!,\$description: String!, \$image: String!) {
    action: insert_user_one(object: {id: \$id, username: \$username, password: \$password,
    first_name: \$first_name, last_name: \$last_name, email: \$email, contact_no: \$contact_no,
    description: \$description, image: \$image
    }) {
    id
    username
    first_name
    last_name
    email
    contact_no
    description
    image
    }
  }
  """;

  static const String deleteEventById = '''
    mutation MyMutation(\$id: uuid!) {
    delete_event(where: {id: {_eq: \$id}}) {
      affected_rows
    }
  }
  ''';
}
