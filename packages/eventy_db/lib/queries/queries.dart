class Queries {
  static const String fetch = '''
    query MyQuery {
    test_users {
      name
      id
    }
  }
  ''';

  static const String getUser = '''
    query GetUser(\$email: String!, \$password: String!) {
    users(where: {email: {_eq: \$email}, password: {_eq: \$password}}) {
      id
      first_name
      contact_no
    }
  }
  ''';
}
