import 'package:flutter/material.dart';
import 'httphelper.dart';
import 'pizza.dart';
import 'pizza_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final helper = HttpHelper();

  Future<List<Pizza>> callPizzas() async {
    return await helper.getPizzaList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON - Candra'),
        backgroundColor: Colors.lime,
      ),
      body: FutureBuilder<List<Pizza>>(
        future: callPizzas(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Something went wrong'));
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final pizzas = snapshot.data ?? [];
          return ListView.builder(
            itemCount: pizzas.length,
            itemBuilder: (BuildContext context, int position) {
              final pizza = pizzas[position];

              return Dismissible(
                key: Key(position.toString()),
                onDismissed: (direction) {
                  HttpHelper helper = HttpHelper();
                  final deletedId = pizza.id;

                  setState(() {
                    pizzas.removeAt(position);
                  });

                  if (deletedId != null) {
                    helper.deletePizza(deletedId);
                  }
                },
                child: ListTile(
                  title: Text(pizza.pizzaName ?? 'No Name'),
                  subtitle: Text(
                    '${pizza.description ?? ''} - € ${pizza.price?.toString() ?? '0'}',
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PizzaDetailScreen(pizza: pizza, isNew: false),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  PizzaDetailScreen(pizza: Pizza(), isNew: true),
            ),
          );
        },
      ),
    );
  }
}
