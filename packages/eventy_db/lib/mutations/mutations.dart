class Mutations {
  static const String registerAdminUser = """
    mutation registerUser(\$id: uuid!, \$username: name!, \$password: String!, \$first_name: name!
    \$last_name: name!, \$email: String!, \$contact_no: numeric!,\$description: String!, \$is_admin: boolean
    ) {
    action: insert_users_one(object: {id: \$id, username: \$username, password: \$password,
    first_name: \$first_name, last_name: \$last_name, email: \$email, contact_no: \$contact_no,
    description: \$description, is_admin: \$is_admin
    }) {
    id
    username
    first_name
    last_name
    email
    contact_no
    description
    }
  }
  """;

  static const String registerUser = """
    mutation registerUser(\$id: uuid!, \$username: name!, \$password: String!, \$first_name: name!
    \$last_name: name!, \$email: String!, \$contact_no: numeric!,\$description: String!
    ) {
    action: insert_users_one(object: {id: \$id, username: \$username, password: \$password,
    first_name: \$first_name, last_name: \$last_name, email: \$email, contact_no: \$contact_no,
    description: \$description
    }) {
    id
    username
    first_name
    last_name
    email
    contact_no
    description
    }
  }
  """;
}
