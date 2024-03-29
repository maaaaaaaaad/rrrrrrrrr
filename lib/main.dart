import 'package:flutter/material.dart';

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
        useMaterial3: true,
      ),
      home: const Look(title: 'home'),
    );
  }
}

class Look extends StatefulWidget {
  const Look({super.key, required this.title});

  final String title;

  @override
  State<Look> createState() => _Look();
}

class _Look extends State<Look> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    if (_count > 0) {
      setState(() {
        _count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("MAD", style: TextStyle(color: Colors.white)),
            backgroundColor: const Color.fromARGB(255, 4, 133, 239)),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("hello"),
            Text('$_count'),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: _decrement,
                child: const Text(
                  '-',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: _increment,
          backgroundColor: const Color.fromARGB(255, 4, 133, 239),
          child: const Icon(
            Icons.add,
            size: 22,
            color: Colors.white,
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // ...
                },
              ),
            ],
          ),
        ));
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   void _dicrementCounter() {
//     setState(() {
//       if (_counter > 0) {
//         _counter--;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'You have pushed the button this many times:',
//               ),
//               Text(
//                 '$_counter',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//               TextButton(
//                 style: TextButton.styleFrom(
//                     textStyle: const TextStyle(fontSize: 20),
//                     backgroundColor: const Color.fromARGB(31, 4, 45, 227)),
//                 onPressed: _dicrementCounter,
//                 child: const Text('-'),
//               ),
//               const SizedBox(height: 30),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: _incrementCounter,
//           tooltip: 'Increment',
//           child: const Icon(Icons.add),
//         ));
//   }
// }
