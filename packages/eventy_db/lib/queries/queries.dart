class Queries {
  static const String getUserByEmail = '''
    query GetUserByEmail(\$email: String!, \$password: String!) {
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

  static const String getUserByUsername = '''
    query GetUserByUsername(\$username: name!, \$password: String!) {
    users(where: {username: {_eq: \$username}, password: {_eq: \$password}}) {
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
