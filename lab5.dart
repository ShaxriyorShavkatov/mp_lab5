import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Practice',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[50],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo[600],
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: WidgetPracticeScreen(),
    );
  }
}

class WidgetPracticeScreen extends StatefulWidget {
  @override
  _WidgetPracticeScreenState createState() => _WidgetPracticeScreenState();
}

class _WidgetPracticeScreenState extends State<WidgetPracticeScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widget Practice', style: TextStyle(fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSection(
                '1. Container Widget',
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 6,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          height: 150,
                          width: 120,
                          child: Icon(Icons.home, size: 40, color: Colors.white),
                        ),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          margin: const EdgeInsets.all(8.0),
                          height: 120,
                          width: 140,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.blue[400]!, Colors.blue[600]!],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.4),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Styled!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              _buildSection(
                '2. Column & Row Layouts',
                Column(
                  children: [
                    Text('Star Rating Row:', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey[700])),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, size: 45, color: Colors.amber[600]),
                        Icon(Icons.star, size: 45, color: Colors.amber[600]),
                        Icon(Icons.star, size: 45, color: Colors.amber[600]),
                        Icon(Icons.star, size: 45, color: Colors.amber[600]),
                        Icon(Icons.star_half, size: 45, color: Colors.amber[600]),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text('Action Row:', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey[700])),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildActionIcon(Icons.star, Colors.amber[600]!),
                        _buildActionIcon(Icons.favorite, Colors.red[400]!),
                        _buildActionIcon(Icons.thumb_up, Colors.blue[500]!),
                        _buildActionIcon(Icons.share, Colors.green[500]!),
                      ],
                    ),
                  ],
                ),
              ),

              _buildSection(
                '3. Text Input Fields',
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Enter your name',
                          prefixIcon: Icon(Icons.person, color: Colors.indigo[400]),
                          labelStyle: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Enter your password',
                          prefixIcon: Icon(Icons.lock, color: Colors.indigo[400]),
                          labelStyle: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              _buildSection(
                '4. Advanced Layouts',
                Column(
                  children: [
                    Text('Flexible Row Layout:', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey[700])),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.red[400],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text('1', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.green[400],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text('2', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text('Spacer Demo:', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey[700])),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.pink[300],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        Spacer(),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.orange[400],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.arrow_forward, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              _buildSection(
                '5. User Profile Card',
                Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.indigo[400],
                            child: Text('A', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Alex Johnson',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[800]),
                                ),
                                Text(
                                  '@alexjohnson',
                                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Flutter developer passionate about creating beautiful mobile experiences. Love hiking and coffee!',
                        style: TextStyle(fontSize: 15, color: Colors.grey[700], height: 1.4),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Following Alex!'),
                                  backgroundColor: Colors.green,
                                ),
                              );
                            },
                            icon: Icon(Icons.person_add),
                            label: Text('Follow'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo[500],
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                          OutlinedButton.icon(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Message sent!')),
                              );
                            },
                            icon: Icon(Icons.message),
                            label: Text('Message'),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.indigo[500],
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              _buildSection(
                '6. Product List Item',
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple[200]!, Colors.purple[400]!],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.headphones, size: 40, color: Colors.white),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wireless Headphones',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800],
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Premium quality wireless headphones with noise cancellation and 30-hour battery life.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                                height: 1.3,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                Text(
                                  '\$99.99',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[600],
                                  ),
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Icon(Icons.star, size: 16, color: Colors.amber),
                                    Text('4.8', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, Widget child) {
    return Container(
      margin: EdgeInsets.only(bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.indigo[700],
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 16),
          child,
        ],
      ),
    );
  }

  Widget _buildActionIcon(IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Icon(icon, size: 28, color: color),
    );
  }
}
