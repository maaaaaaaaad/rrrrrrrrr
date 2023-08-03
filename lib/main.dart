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
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text("hello")],
      )),
    );
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
