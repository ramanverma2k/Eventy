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

  static const String createEvent = '''
    mutation CreateEvent(\$id: uuid!, \$name: String!, \$start_date: timestamp!, \$end_date: timestamp!,
                        \$address: String!, \$location: json!, \$description: String!, \$type_id: Int!,
                        \$banner_image: String!, \$image: String!, \$organizer: uuid!) {
    insert_event(objects: {id: \$id, name: \$name, start_date: \$start_date, end_date: \$end_date,
                          address: \$address, location: \$location, description: \$description,
                          type_id: \$type_id, banner_image: \$banner_image, image: \$image, organizer: \$organizer}) {
      affected_rows
    }
  }
  ''';
}
