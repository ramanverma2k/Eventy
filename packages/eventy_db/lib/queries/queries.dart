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
        start_date
        user {
          id
          first_name
          last_name
        }
        event_type {
          type_name
        }
        event_managers {
          user {
            id
            first_name
            last_name
            contact_no
          }
        }
        attendants {
        user {
          first_name
          last_name
        }
      }
      attendants_aggregate {
        aggregate {
          count
        }
      }
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
      start_date
      user {
        id
        first_name
        last_name
      }
      event_type {
        type_name
      }
      event_managers {
        user {
          id
          first_name
          last_name
          contact_no
        }
      }
      attendants {
        user {
          first_name
          last_name
        }
      }
      attendants_aggregate {
        aggregate {
          count
        }
      }
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
      start_date
      user {
        id
        first_name
        last_name
      }
      event_type {
        type_name
      }
      event_managers {
        user {
          id
          first_name
          last_name
          contact_no
        }
      }
      attendants {
        user {
          first_name
          last_name
        }
      }
      attendants_aggregate {
        aggregate {
          count
        }
      }
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
      start_date
      user {
        id
        first_name
        last_name
      }
      event_type {
        type_name
      }
      event_managers {
        user {
          id
          first_name
          last_name
          contact_no
        }
      }
      attendants {
        user {
          first_name
          last_name
        }
      }
      attendants_aggregate {
        aggregate {
          count
        }
      }
    }
  }
  ''';

  static const String getEventsBySearch = '''
  query GetEventsBySearch(\$query: String!) {
    event(where: {name: {_iregex: \$query}}) {
      address
      banner_image
      description
      end_date
      id
      image
      location
      name
      start_date
      user {
        id
        first_name
        last_name
      }
      event_type {
        type_name
      }
      event_managers {
        user {
          id
          first_name
          last_name
          contact_no
        }
      }
      attendants {
        user {
          first_name
          last_name
        }
      }
      attendants_aggregate {
        aggregate {
          count
        }
      }
    }
  }
  ''';

  static const String getEventTypeIdByName = '''
  query getEventTypeIdByName(\$type_name: String!) {
    event_type(where: {type_name: {_eq: \$type_name}}) {
      id
    }
  }
  ''';
}
