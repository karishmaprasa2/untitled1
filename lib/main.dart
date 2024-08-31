// // // import 'package:flutter/material.dart';
// // // import 'package:telephony/telephony.dart';
// // //
// // // void main() {
// // //   runApp(MyApp());
// // // }
// // //
// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: ChatScreen(),
// // //     );
// // //   }
// // // }
// // //
// // // class ChatScreen extends StatefulWidget {
// // //   @override
// // //   _ChatScreenState createState() => _ChatScreenState();
// // // }
// // //
// // // class _ChatScreenState extends State<ChatScreen> {
// // //   final List<String> _messages = [];
// // //   final TextEditingController _controller = TextEditingController();
// // //   final TextEditingController _phoneController = TextEditingController();
// // //   final Telephony telephony = Telephony.instance;
// // //   String? _defaultPhoneNumber;
// // //
// // //   // Function to send SMS
// // //   void _sendSms(String number, String message) {
// // //     if (number.isNotEmpty && message.isNotEmpty) {
// // //       telephony.sendSms(to: number, message: message);
// // //     }
// // //   }
// // //
// // //   void _sendMessage() {
// // //     if (_controller.text.isNotEmpty) {
// // //       if (_defaultPhoneNumber == null && _phoneController.text.isNotEmpty) {
// // //         _defaultPhoneNumber = _phoneController.text; // Set the default number
// // //       }
// // //
// // //       if (_defaultPhoneNumber != null) {
// // //         _sendSms(_defaultPhoneNumber!, _controller.text);
// // //         setState(() {
// // //           _messages.add(_controller.text);
// // //         });
// // //         _controller.clear();
// // //       } else {
// // //         // Show error message if no phone number is provided
// // //         ScaffoldMessenger.of(context).showSnackBar(
// // //           SnackBar(
// // //             content: Text('Please enter a phone number'),
// // //           ),
// // //         );
// // //       }
// // //     }
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         centerTitle: true,
// // //         title: Text(
// // //           'WhatsApp with SMS',
// // //           style: TextStyle(color: Colors.white),
// // //         ),
// // //         backgroundColor: Colors.teal,
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           Expanded(
// // //             child: ListView.builder(
// // //               itemCount: _messages.length,
// // //               itemBuilder: (context, index) {
// // //                 return Align(
// // //                   alignment: index % 2 == 0
// // //                       ? Alignment.centerLeft
// // //                       : Alignment.centerRight,
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(8.0),
// // //                     padding: EdgeInsets.all(12.0),
// // //                     decoration: BoxDecoration(
// // //                       color: index % 2 == 0
// // //                           ? Colors.greenAccent
// // //                           : Colors.blueAccent,
// // //                       borderRadius: BorderRadius.circular(16.0),
// // //                     ),
// // //                     child: Text(
// // //                       _messages[index],
// // //                       style: TextStyle(color: Colors.white),
// // //                     ),
// // //                   ),
// // //                 );
// // //               },
// // //             ),
// // //           ),
// // //           Padding(
// // //             padding: const EdgeInsets.all(8.0),
// // //             child: Column(
// // //               children: [
// // //                 if (_defaultPhoneNumber == null)
// // //                   TextField(
// // //                     controller: _phoneController,
// // //                     decoration: InputDecoration(
// // //                       hintText: 'Enter phone number',
// // //                       border: OutlineInputBorder(
// // //                         borderRadius: BorderRadius.circular(16.0),
// // //                       ),
// // //                     ),
// // //                     keyboardType: TextInputType.phone,
// // //                   ),
// // //                 SizedBox(height: 8.0),
// // //                 Row(
// // //                   children: [
// // //                     Expanded(
// // //                       child: TextField(
// // //                         controller: _controller,
// // //                         decoration: InputDecoration(
// // //                           hintText: 'Type a message',
// // //                           border: OutlineInputBorder(
// // //                             borderRadius: BorderRadius.circular(16.0),
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ),
// // //                     IconButton(
// // //                       icon: Icon(Icons.send),
// // //                       onPressed: _sendMessage,
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // //
// // // import 'package:flutter/material.dart';
// // //
// // // void main() {
// // //   runApp(MyApp());
// // // }
// // //
// // //
// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       debugShowCheckedModeBanner: false,
// // //       home: CalculatorScreen(),
// // //     );
// // //   }
// // // }
// // //
// // // class CalculatorScreen extends StatefulWidget {
// // //   @override
// // //   _CalculatorScreenState createState() => _CalculatorScreenState();
// // // }
// // //
// // // class _CalculatorScreenState extends State<CalculatorScreen> {
// // //   int _counter = 0;
// // //
// // //   // Increment
// // //   void _incrementCounter() {
// // //     setState(() {
// // //       _counter++;
// // //     });
// // //   }
// // //
// // //   // Decrement
// // //   void _decrementCounter() {
// // //     setState(() {
// // //       if (_counter > 0) {
// // //         _counter--;
// // //       }
// // //     });
// // //   }
// // //
// // //   // Multiply by 2
// // //   void _multiplyCounter() {
// // //     setState(() {
// // //       _counter *= 2;
// // //     });
// // //   }
// // //
// // //   // Divide by 2
// // //   void _divideCounter() {
// // //     setState(() {
// // //       if (_counter >= 2) {
// // //         _counter ~/= 2; // Integer division
// // //       }
// // //     });
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         backgroundColor: Colors.blue,
// // //         centerTitle: true,
// // //         title: Text(
// // //           'Calculator',
// // //           style: TextStyle(
// // //               color: Colors.red, fontWeight: FontWeight.bold, fontSize: 40),
// // //         ),
// // //       ),
// // //       body: Center(
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           children: <Widget>[
// // //             Text(
// // //               '$_counter',
// // //               style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
// // //             ),
// // //             SizedBox(height: 20),
// // //             Row(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 // Increment Button
// // //                 CircleAvatar(
// // //                   radius: 50,
// // //                   backgroundColor: Colors.blue,
// // //                   child: IconButton(
// // //                     icon: Icon(Icons.add, size: 40, color: Colors.white),
// // //                     onPressed: _incrementCounter,
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 20),
// // //                 // Decrement Button
// // //                 CircleAvatar(
// // //                   radius: 50,
// // //                   backgroundColor: Colors.red,
// // //                   child: IconButton(
// // //                     icon: Icon(Icons.remove, size: 40, color: Colors.white),
// // //                     onPressed: _decrementCounter,
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //             SizedBox(height: 20),
// // //             Row(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 // Multiply Button
// // //                 CircleAvatar(
// // //                   radius: 50,
// // //                   backgroundColor: Colors.green,
// // //                   child: IconButton(
// // //                     icon: Icon(Icons.close, size: 40, color: Colors.white),
// // //                     onPressed: _multiplyCounter,
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 20),
// // //                 // Divide Button
// // //                 CircleAvatar(
// // //                   radius: 50,
// // //                   backgroundColor: Colors.orange,
// // //                   child: IconButton(
// // //                     icon: Icon(Icons.horizontal_rule, size: 40, color: Colors.white),
// // //                     onPressed: _divideCounter,
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// //
// // //
// // //
// // // import 'package:flutter/material.dart';
// // //
// // // void main() {
// // //   runApp(MyApp());
// // // }
// // //
// // // class MyApp extends StatefulWidget {
// // //   @override
// // //   _MyAppState createState() => _MyAppState();
// // // }
// // //
// // // class _MyAppState extends State<MyApp> {
// // //   ThemeMode _themeMode = ThemeMode.light;
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       themeMode: _themeMode,
// // //       theme: ThemeData(
// // //         brightness: Brightness.light,
// // //         primaryColor: Colors.blue,
// // //         appBarTheme: AppBarTheme(
// // //           color: Colors.blue,
// // //           titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
// // //         ),
// // //         textTheme: TextTheme(
// // //           headlineLarge: TextStyle(fontSize: 32.0, color: Colors.black),
// // //           bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black87),
// // //         ),
// // //
// // //         buttonTheme: ButtonThemeData(buttonColor: Colors.blue),
// // //       ),
// // //       // Dark mode theme
// // //       darkTheme: ThemeData(
// // //         brightness: Brightness.dark,
// // //         primaryColor: Colors.grey[850],
// // //         appBarTheme: AppBarTheme(
// // //           color: Colors.grey[900],
// // //           titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
// // //         ),
// // //         textTheme: TextTheme(
// // //           headlineLarge: TextStyle(fontSize: 32.0, color: Colors.black),
// // //           bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black87),
// // //         ),
// // //         buttonTheme: ButtonThemeData(buttonColor: Colors.grey[800]),
// // //       ),
// // //       // Home screen widget
// // //       home: HomeScreen(
// // //         themeMode: _themeMode,
// // //         toggleTheme: _toggleTheme,
// // //       ),
// // //     );
// // //   }
// // //   void _toggleTheme() {
// // //     setState(() {
// // //       _themeMode =
// // //       _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
// // //     });
// // //   }
// // // }
// // //
// // // class HomeScreen extends StatelessWidget {
// // //   final ThemeMode themeMode;
// // //   final Function toggleTheme;
// // //
// // //   HomeScreen({required this.themeMode, required this.toggleTheme});
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Flutter Theme Example'),
// // //       ),
// // //       body: Center(
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           children: [
// // //             Text(
// // //               'Current Theme: ${themeMode == ThemeMode.light ? 'Light Mode' : 'Dark Mode'}',
// // //               style: Theme.of(context).textTheme.bodyLarge,
// // //             ),
// // //             SizedBox(height: 20),
// // //             ElevatedButton(
// // //               onPressed: () => toggleTheme(),
// // //               child: Text('Toggle Theme'),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // //
// // // import 'package:flutter/material.dart';
// // //
// // // void main() => runApp(MyApp());
// // //
// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: Scaffold(
// // //         appBar: AppBar(
// // //           title: Text('Flutter Table Widget Example'),
// // //         ),
// // //         body: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Table(
// // //             border: TableBorder.all(), // Add border to the table
// // //             columnWidths: {
// // //               0: FlexColumnWidth(1),
// // //               1: FlexColumnWidth(2),
// // //               2: FlexColumnWidth(1),
// // //             },
// // //             children: [
// // //               TableRow(
// // //                 decoration: BoxDecoration(
// // //                   color: Colors.grey[300],
// // //                 ),
// // //                 children: [
// // //                   Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: Text('ID', style: TextStyle(fontWeight: FontWeight.bold)),
// // //                   ),
// // //                   Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
// // //                   ),
// // //                   Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: Text('Age', style: TextStyle(fontWeight: FontWeight.bold)),
// // //                   ),
// // //                 ],
// // //               ),
// // //               TableRow(
// // //                 children: [
// // //                   Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: Text('1'),
// // //                   ),
// // //                   Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: Text('John Doe'),
// // //                   ),
// // //                   Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: Text('25'),
// // //                   ),
// // //                 ],
// // //               ),
// // //               TableRow(
// // //                 children: [
// // //                   Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: Text('2'),
// // //                   ),
// // //                   Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: Text('Jane Doe'),
// // //                   ),
// // //                   Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: Text('30'),
// // //                   ),
// // //                 ],
// // //               ),
// // //               TableRow(
// // //                 children: [
// // //                   Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: Text('3'),
// // //                   ),
// // //                   Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: Text('Alex Johnson'),
// // //                   ),
// // //                   Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: Text('28'),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// //
// // import 'package:flutter/material.dart';
// //
// // void main() => runApp(LudoApp());
// // class LudoApp extends StatelessWidget {
// //   @override
// //
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: LudoScreen(),
// //     );
// //   }
// // }
// //
// // class LudoScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Ludo UI'),
// //         backgroundColor: Colors.teal,
// //         centerTitle: true,
// //       ),
// //       body: Center(
// //         child: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: AspectRatio(
// //             aspectRatio: 1, // Ensures the board is square
// //             child: Container(
// //               decoration: BoxDecoration(
// //                 border: Border.all(color: Colors.black, width: 2),
// //               ),
// //               child: Stack(
// //                 children: [
// //                   _buildLudoGrid(),
// //                   _buildColoredCorners(),
// //                   // Position player pieces explicitly
// //                   Positioned(
// //                     top: 0,
// //                     left: 0,
// //                     child: _buildPlayerPiece(Colors.green, Alignment.topLeft),
// //                   ),
// //                   Positioned(
// //                     top: 0,
// //                     right: 0,
// //                     child: _buildPlayerPiece(Colors.red, Alignment.topRight),
// //                   ),
// //                   Positioned(
// //                     bottom: 0,
// //                     left: 0,
// //                     child: _buildPlayerPiece(Colors.yellow, Alignment.bottomLeft),
// //                   ),
// //                   Positioned(
// //                     bottom: 0,
// //                     right: 0,
// //                     child: _buildPlayerPiece(Colors.blue, Alignment.bottomRight),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   // Create the grid layout for the Ludo board
// //   Widget _buildLudoGrid() {
// //     return GridView.builder(
// //       physics: NeverScrollableScrollPhysics(),
// //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //         crossAxisCount: 15, // 15x15 grid for Ludo
// //         childAspectRatio: 1,
// //       ),
// //       itemCount: 15 * 15,
// //       itemBuilder: (context, index) {
// //         return Container(
// //           decoration: BoxDecoration(
// //             border: Border.all(color: Colors.black26),
// //           ),
// //         );
// //       },
// //     );
// //   }
// //
// //   Widget _buildColoredCorners() {
// //     return Container(); // Ensure this container doesn’t overlap or misplace items
// //   }
// //
// //   Widget _buildPlayerPiece(Color color, Alignment alignment) {
// //     return Padding(
// //       padding: const EdgeInsets.all(16.0),
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               _buildSinglePiece(color),
// //               SizedBox(width: 10),
// //               _buildSinglePiece(color),
// //             ],
// //           ),
// //           SizedBox(height: 10),
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               _buildSinglePiece(color),
// //               SizedBox(width: 10),
// //               _buildSinglePiece(color),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   Widget _buildSinglePiece(Color color) {
// //     return Container(
// //       width: 40, // Adjusted size
// //       height: 40, // Adjusted size
// //       decoration: BoxDecoration(
// //         shape: BoxShape.circle,
// //         color: color,
// //         border: Border.all(color: Colors.black, width: 2), // Border width
// //       ),
// //     );
// //   }
// // }
// //
// // import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(LudoApp());
// // }
// //
// // class LudoApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: LudoScreen(),
// //     );
// //   }
// // }
// //
// // class LudoScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Ludo UI'),
// //         backgroundColor: Colors.teal,
// //         centerTitle: true,
// //       ),
// //       body: Center(
// //         child: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: AspectRatio(
// //             aspectRatio: 1, // Ensures the board is square
// //             child: Container(
// //               decoration: BoxDecoration(
// //                 border: Border.all(color: Colors.black, width: 2),
// //               ),
// //               child: Stack(
// //                 children: [
// //                   _buildLudoGrid(),
// //                   _buildColoredCorners(), // Add colored zones
// //                   _buildPlayerPieces(), // Position player pieces in colored zones
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   // Create the grid layout for the Ludo board
// //   Widget _buildLudoGrid() {
// //     return GridView.builder(
// //       physics: NeverScrollableScrollPhysics(),
// //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //         crossAxisCount: 15, // 15x15 grid for Ludo
// //         childAspectRatio: 1,
// //       ),
// //       itemCount: 15 * 15,
// //       itemBuilder: (context, index) {
// //         return Container(
// //           decoration: BoxDecoration(
// //             border: Border.all(color: Colors.black26),
// //           ),
// //         );
// //       },
// //     );
// //   }
// //
// //   // Build colored corners for player zones
// //   Widget _buildColoredCorners() {
// //     return Stack(
// //       children: [
// //         Positioned(
// //           top: 0,
// //           left: 0,
// //           child: Container(
// //             width: 140,
// //             height: 140,
// //             color: Colors.green,
// //           ),
// //         ),
// //         Positioned(
// //           top: 0,
// //           right: 0,
// //           child: Container(
// //             width: 140,
// //             height: 140,
// //             color: Colors.red,
// //           ),
// //         ),
// //         Positioned(
// //           bottom: 0,
// //           left: 0,
// //           child: Container(
// //             width: 140,
// //             height: 140,
// //             color: Colors.yellow,
// //           ),
// //         ),
// //         Positioned(
// //           bottom: 0,
// //           right: 0,
// //           child: Container(
// //             width: 140,
// //             height: 140,
// //             color: Colors.blue,
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// //
// //   // Position player pieces within the colored zones
// //   Widget _buildPlayerPieces() {
// //     return Stack(
// //       children: [
// //         Positioned(
// //           top: 20,
// //           left: 20,
// //           child: _buildPlayerPiece(Colors.green),
// //         ),
// //         Positioned(
// //           top: 20,
// //           right: 20,
// //           child: _buildPlayerPiece(Colors.red),
// //         ),
// //         Positioned(
// //           bottom: 20,
// //           left: 20,
// //           child: _buildPlayerPiece(Colors.yellow),
// //         ),
// //         Positioned(
// //           bottom: 20,
// //           right: 20,
// //           child: _buildPlayerPiece(Colors.blue),
// //         ),
// //       ],
// //     );
// //   }
// //
// //   // Build player pieces
// //   Widget _buildPlayerPiece(Color color) {
// //     return Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         Row(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             _buildSinglePiece(color),
// //             SizedBox(width: 10),
// //             _buildSinglePiece(color),
// //           ],
// //         ),
// //         SizedBox(height: 10),
// //         Row(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             _buildSinglePiece(color),
// //             SizedBox(width: 10),
// //             _buildSinglePiece(color),
// //           ],
// //         ),
// //       ],
// //     );
// //   }
// //
// //   // Build a single player piece
// //   Widget _buildSinglePiece(Color color) {
// //     return Container(
// //       width: 40, // Size of each piece
// //       height: 40, // Size of each piece
// //       decoration: BoxDecoration(
// //         shape: BoxShape.circle,
// //         color: color,
// //         border: Border.all(color: Colors.black, width: 2), // Border width
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(LudoApp());
// }
//
// class LudoApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LudoScreen(),
//     );
//   }
// }
//
// class LudoScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Ludo UI'),
//         backgroundColor: Colors.teal,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: AspectRatio(
//             aspectRatio: 1, // Ensures the board is square
//             child: Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black, width: 2),
//               ),
//               child: Stack(
//                 children: [
//                   _buildLudoGrid(),
//                   _buildColoredCorners(), // Add colored zones
//                   _buildCentralContainer(), // Add central colored container
//                   _buildPlayerPieces(), // Position player pieces in colored zones
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   // Create the grid layout for the Ludo board
//   Widget _buildLudoGrid() {
//     return GridView.builder(
//       physics: NeverScrollableScrollPhysics(),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 15, // 15x15 grid for Ludo
//         childAspectRatio: 1,
//       ),
//       itemCount: 15 * 15,
//       itemBuilder: (context, index) {
//         return Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.black26),
//           ),
//         );
//       },
//     );
//   }
//
//   // Build colored corners for player zones
//   Widget _buildColoredCorners() {
//     return Stack(
//       children: [
//         Positioned(
//           top: 0,
//           left: 0,
//           child: Container(
//             width: 140,
//             height: 140,
//             color: Colors.green,
//           ),
//         ),
//         Positioned(
//           top: 0,
//           right: 0,
//           child: Container(
//             width: 140,
//             height: 140,
//             color: Colors.red,
//           ),
//         ),
//         Positioned(
//           bottom: 0,
//           left: 0,
//           child: Container(
//             width: 140,
//             height: 140,
//             color: Colors.yellow,
//           ),
//         ),
//         Positioned(
//           bottom: 0,
//           right: 0,
//           child: Container(
//             width: 140,
//             height: 140,
//             color: Colors.blue,
//           ),
//         ),
//       ],
//     );
//   }
//
//   // Add a central container with a distinct color
//   Widget _buildCentralContainer() {
//     return Center(
//       child: Container(
//         width: 100, // Size for central container
//         height: 100, // Size for central container
//         child: Stack(
//           children: [
//             // Top-left section
//             Positioned(
//               top: 0,
//               left: 0,
//               child: Container(
//                 width: 50,
//                 height: 50,
//                 color: Colors.green,
//               ),
//             ),
//             // Top-right section
//             Positioned(
//               top: 0,
//               right: 0,
//               child: Container(
//                 width: 50,
//                 height: 50,
//                 color: Colors.red,
//               ),
//             ),
//             // Bottom-left section
//             Positioned(
//               bottom: 0,
//               left: 0,
//               child: Container(
//                 width: 50,
//                 height: 50,
//                 color: Colors.yellow,
//               ),
//             ),
//             // Bottom-right section
//             Positioned(
//               bottom: 0,
//               right: 0,
//               child: Container(
//                 width: 50,
//                 height: 50,
//                 color: Colors.blue,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Position player pieces within the colored zones
//   Widget _buildPlayerPieces() {
//     return Stack(
//       children: [
//         Positioned(
//           top: 20,
//           left: 20,
//           child: _buildPlayerPiece(Colors.green),
//         ),
//         Positioned(
//           top: 20,
//           right: 20,
//           child: _buildPlayerPiece(Colors.red),
//         ),
//         Positioned(
//           bottom: 20,
//           left: 20,
//           child: _buildPlayerPiece(Colors.yellow),
//         ),
//         Positioned(
//           bottom: 20,
//           right: 20,
//           child: _buildPlayerPiece(Colors.blue),
//         ),
//       ],
//     );
//   }
//
//   // Build player pieces
//   Widget _buildPlayerPiece(Color color) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _buildSinglePiece(color),
//             SizedBox(width: 10),
//             _buildSinglePiece(color),
//           ],
//         ),
//         SizedBox(height: 10),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _buildSinglePiece(color),
//             SizedBox(width: 10),
//             _buildSinglePiece(color),
//           ],
//         ),
//       ],
//     );
//   }
//
//   // Build a single player piece
//   Widget _buildSinglePiece(Color color) {
//     return Container(
//       width: 40, // Size of each piece
//       height: 40, // Size of each piece
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: color,
//         border: Border.all(color: Colors.black, width: 2), // Border width
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled1/scoller/custom.dart';

void main(){
  runApp(LudoApp());
}
class LudoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: InfiniteScrollExample(),
    );
  }
}


