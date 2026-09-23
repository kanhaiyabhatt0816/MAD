// import 'package:flutter/material.dart';
// // import 'LabSheet3/program_01.dart';
// // import 'LabSheet3/program_02.dart';
// // import 'LabSheet3/program_03.dart';
// // import 'LabSheet3/program_04.dart';
// // import 'LabSheet3/program_05.dart';
// // import 'LabSheet3/program_06.dart';
// // import 'LabSheet3/program_07.dart';
// // import 'LabSheet3/program_08.dart';
// // import 'LabSheet3/program_09.dart';
// // import 'LabSheet3/program_10.dart';
// // import 'LabSheet3/program_11.dart';
// // import 'LabSheet3/program_12.dart';
// // import 'LabSheet3/program_13.dart';
// // import 'LabSheet3/program_14.dart';
// // import 'LabSheet3/program_15.dart';
// // import 'LabSheet3/program_16.dart';
// // import 'LabSheet3/program_17.dart';
// // import 'LabSheet3/program_18.dart';
// // import 'LabSheet3/program_19.dart';
// // import 'LabSheet3/program_20.dart';
// // import 'LabSheet3/program_21.dart';
// // import 'LabSheet3/program_22.dart';
// // import 'LabSheet3/program_23.dart';
// // import 'LabSheet3/program_24.dart';
// // import 'LabSheet3/program_25.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Lab Sheet 3 Dashboard',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//         useMaterial3: true,
//       ),
//       home: const Dashboard(),
//     );
//   }
// }
//
// class Dashboard extends StatelessWidget {
//   const Dashboard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> programs = [
//       {'title': 'Program 01', 'widget': Program01()},
//       {'title': 'Program 02', 'widget': Program02()},
//       {'title': 'Program 03', 'widget': Program03()},
//       {'title': 'Program 04', 'widget': Program04()},
//       {'title': 'Program 05', 'widget': Program05()},
//       {'title': 'Program 06', 'widget': Program06()},
//       {'title': 'Program 07', 'widget': Program07()},
//       {'title': 'Program 08', 'widget': Program08()},
//       {'title': 'Program 09', 'widget': Program09()},
//       {'title': 'Program 10', 'widget': Program10()},
//       {'title': 'Program 11', 'widget': Program11()},
//       {'title': 'Program 12', 'widget': Program12()},
//       {'title': 'Program 13', 'widget': Program13()},
//       {'title': 'Program 14', 'widget': Program14()},
//       {'title': 'Program 15', 'widget': Program15()},
//       {'title': 'Program 16', 'widget': Program16()},
//       {'title': 'Program 17', 'widget': Program17()},
//       {'title': 'Program 18', 'widget': Program18()},
//       {'title': 'Program 19', 'widget': Program19()},
//       {'title': 'Program 20', 'widget': Program20()},
//       {'title': 'Program 21', 'widget': Program21()},
//       {'title': 'Program 22', 'widget': Program22()},
//       {'title': 'Program 23', 'widget': Program23()},
//       {'title': 'Program 24', 'widget': Program24()},
//       {'title': 'Program 25', 'widget': Program25()},
//     ];
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dashboard'),
//         centerTitle: true,
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       ),
//       body: Column(
//         children: [
//           const Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Text(
//               'Lab Sheet 3',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: programs.length,
//               itemBuilder: (context, index) {
//                 return Card(
//                   elevation: 2,
//                   margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//                   child: ListTile(
//                     leading: CircleAvatar(
//                       child: Text('${index + 1}'),
//                     ),
//                     title: Text(programs[index]['title']),
//                     trailing: const Icon(Icons.arrow_forward_ios),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => programs[index]['widget'],
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
