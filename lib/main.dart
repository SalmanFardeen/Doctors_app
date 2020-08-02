import 'package:doctors_app/screens/auth/login.dart';
import 'package:doctors_app/screens/auth/logindoc.dart';
import 'package:doctors_app/screens/auth/signupdoc.dart';
import 'package:doctors_app/screens/patient/categories_screen.dart';
import 'package:doctors_app/screens/patient/doctor_screen.dart';
import 'package:doctors_app/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:doctors_app/screens/auth/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/home': (context) => CategoriesScreen(),
        '/logindoc': (context) => LoginDocScreen(),
        '/signupdoc': (context) => SignupDocScreen(),
        DoctorScreen.routeName:(ctx) => DoctorScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Doctor\'s App',
      theme: ThemeData(
        fontFamily: 'avenir',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MainPage(), // Removed because clash with the route properties
    );
  }
}

/*class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor\'s App'),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
              child: Text('Login')
            ),
            RaisedButton(
                onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                child: Text('Sign Up')
            ),
            ///TODO: Amir and Ayon please create a button for each of the UI that..
            ///TODO: ..you're gonna create and put that button in HERE i.e. the temporary 'opening screen'
            ///TODO: We're doing this to keep a track of all the UI we're individually creating
            ///TODO: And also to avoid code-conflicts
            ///TODO: For example button names can be 'create-appointment-ui-1', 'create-appointment-ui-2'
            ///TODO: Also 'home-ui', 'search-ui' etc
            ///TODO: Clicking those buttons will open the ui that you designed
          ],
        ),
      ),
    );
  }
}
*/

