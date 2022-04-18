class Queries {
  static const String getUser = '''
  query GetUser(\$email: String, \$username: name, \$password: String!) {
    users(where: {password: {_eq: \$password}, _or: [{username: {_eq: \$username}}, {email: {_eq: \$email}}]}) {
      contact_no
      description
      email
      first_name
      id
      last_name
      user_image
      username
    }
  }
  ''';
}
