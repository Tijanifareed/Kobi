import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String userName;
  final double balance;

  const HomePage({
    Key? key,
    required this.userName,
    required this.balance,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Info')),
      body: Center(
        child: Card(
          elevation: 6,
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Name: ${widget.userName}', style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 10),
                Text('Balance: \$${widget.balance.toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 18, color: Colors.green)),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    print('Send Money button clicked!');
                  },
                  child: const Text('Send Money'),
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}
