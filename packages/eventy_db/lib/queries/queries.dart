class Queries {
  static const String getUser = '''
    query GetUser(\$email: String!, \$password: String!) {
    users(where: {email: {_eq: \$email}, password: {_eq: \$password}}) {
      id
      username
      first_name
      last_name
      email
      contact_no
      description
    }
  }
  ''';
}
