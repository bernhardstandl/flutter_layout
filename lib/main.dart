import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Layout',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 228, 58, 7)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
     notifyListeners();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout einer App'),
        ),
        
        body: Column(
          
          children: [
            
            

            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                
                
                child: Text(
                  'Box 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),

              ),
            ),
            
            SizedBox(height: 20),
            
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.green,
              child: Center(
                
                child: Text(
                  'Box 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),

              ),
            ),
            
            SizedBox(height: 20),
            
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.orange,
              child: Center(

                child: Text(
                  'Box 3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),

              ),
            ),
            
            SizedBox(height: 20),
            
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.yellow,
              
              child: Row(
                children: [
                  
                  
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        
                        child: Text(
                          'Column 1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        
                      ),

                    ),
                  ),
                  

                  
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                      child: Center(

                        child: Text(
                          'Column 2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),

                        ),
                      ),
                    ),
                  ),
                  
                  Expanded(
                    child: Container(
                      color: Colors.teal,

                      child: Center(
                        child: Text(
                          'Column 3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}