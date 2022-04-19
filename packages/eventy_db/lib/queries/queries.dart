class Queries {
  static const String getUser = '''
  query GetUser(\$email: String, \$username: String!, \$password: String!) {
    user(where: {password: {_eq: \$password}, _or: [{username: {_eq: \$username}}, {email: {_eq: \$email}}]}) {
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
  ''';

  static const String getMyEvents = '''
  query GetMyEvents(\$organizer: uuid!) {
  event(where: {organizer: {_eq: \$organizer}}) {
      address
      banner_image
      description
      end_date
      id
      image
      location
      name
      organizer
      start_date
    }
  }
  ''';

  static const String getPopularEvents = '''
  query GetPopularEvents {
    event {
      address
      banner_image
      description
      end_date
      id
      image
      location
      name
      organizer
      start_date
    }
  } 
  ''';

  static const String getOngoingEvents = '''
  query GetOngoingEvents(\$curr_date: timestamp!) {
    event(where: {start_date: {_lte: \$curr_date}, _and: {end_date: {_gte: \$curr_date}}}) {
      address
      banner_image
      description
      end_date
      id
      image
      location
      name
      organizer
      start_date
    }
  }
''';

  static const String getUpcomingEvents = '''
  query GetOngoingEvents(\$curr_date: timestamp!) {
    event(where: {start_date: {_gt: \$curr_date}}) {
      address
      banner_image
      description
      end_date
      id
      image
      location
      name
      organizer
      start_date
    }
  }
  ''';
}
