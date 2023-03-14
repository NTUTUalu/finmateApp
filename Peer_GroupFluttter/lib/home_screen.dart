import 'package:flutter/material.dart';
import 'card.dart'; // assuming this is the file containing the BankCardList screen
import 'transactions.dart'; // assuming this is the file containing the BankCardList screen
import 'profile.dart'; // assuming this is the file containing the BankCardList screen
import 'transactionhistory.dart'; // assuming this is the file containing the BankCardList screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Add this line to make app bar white
        leading: Image.network(
          'https://tinypic.host/images/2023/03/12/WhatsApp_Image_2023-03-12_at_11.44.38-removebg-preview.png',
          height: 40,
          width: 40,
        ),
        title: Text(
          'FinMate',
          style: TextStyle(
            color: Colors.black,
          ),
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Confirm Log Out"),
                    content: Text("Are you sure you want to log out?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (BuildContext context) => SignInPage(),
                          //   ),
                          // ); // Navigate to SignInPage
                        },
                        child: Text("Log Out"),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 19),
            Text('    My Card'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Ammy Silver'),
                                SizedBox(width: 19),
                                Text('mastercard'),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text('2435 **** **** **23'),
                            SizedBox(height: 10),
                            Text('\$2,459,000'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Card(
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BankCardList()),
                          );
                        },
                        child: Image.network(
                            'https://tinypic.host/images/2023/03/13/cardaddicon-removebg-preview.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    // navigate to contacts page
                  },
                  child: Column(
                    children: [
                      Icon(Icons.contacts),
                      SizedBox(height: 8),
                      Text('Your Transactions'),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TransactionHistoryPage()),
                    );
                  },
                  // navigate to transfers page

                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TransactionPage()),
                          );
                        },
                        child: Column(
                          children: [
                            Icon(Icons.attach_money),
                            SizedBox(height: 8),
                            Text('Transfer Money'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Today',
                style: TextStyle(fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('You received payment'),
              subtitle: Text('\$50\nAmmy Silver'),
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('You received payment'),
              subtitle: Text('\$100\nAmmy Silver'),
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('You received payment'),
              subtitle: Text('\$500\nAmmy Silver'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.credit_card),
              onPressed: () {
                // navigate to card-related page
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserAccountPage(),
                    ),
                  );
// navigate to profile page
                }),
          ],
        ),
      ),
    );
  }
}

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Center(
        child: Text('Notifications Page'),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Profile Page'),
      ),
    );
  }
}
// navigate to notifications page
