class Subscriptions {
  static const myEventsSubscription = '''
  subscription GetMyEvents(\$organizer: uuid!) {
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
}
