// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:app_gym_flutter/ui/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'domain/providers/OnboardingPageProvider.dart';

/// This is a reimplementation of the default Flutter application using provider + [ChangeNotifier].

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => OnboardingPageProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {'/splash': (_) => const Splash_Page()},
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const <Widget>[
//             // Count(),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         key: const Key('increment_floatingActionButton'),
//         onPressed: () => context.read<Counter>().increment(),
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// class Count extends StatelessWidget {
//   const Count({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       /// Calls `context.watch` to make [Count] rebuild when [Counter] changes.
//       '${context.watch<Counter>().count}',
//       key: const Key('counterState'),
//       style: Theme.of(context).textTheme.headlineMedium,
//     );
//   }
// }
