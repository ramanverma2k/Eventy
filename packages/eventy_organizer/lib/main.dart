import 'package:eventy_db/eventy_db.dart';
import 'package:eventy_db/mutations/mutations.dart';
import 'package:eventy_db/queries/queries.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: DatabaseConfig.client,
      child: const MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eventy'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Mutation(
                options: MutationOptions(document: gql(Mutations.addUser)),
                builder: (
                  RunMutation runMutation,
                  QueryResult? result,
                ) {
                  return ElevatedButton(
                    onPressed: () {
                      runMutation({
                        'name': 'Non dough',
                      });

                      setState(() {});
                    },
                    child: const Text('Add User'),
                  );
                }),
            Query(
              options: QueryOptions(
                document: gql(Queries.fetch),
              ),
              builder: (
                QueryResult result, {
                Future<QueryResult> Function(FetchMoreOptions)? fetchMore,
                Future<QueryResult?> Function()? refetch,
              }) {
                if (result.hasException) {
                  return Text(result.exception.toString());
                }

                if (result.isLoading) {
                  return const CircularProgressIndicator();
                }

                if (result.data == null) {
                  return const Text('No data');
                }

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // List of users in a row
                    ...result.data!['test_users'].map(
                      (user) => Text(
                        user['name'],
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
