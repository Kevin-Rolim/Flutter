import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeApp(),
  ));
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, 
                  fontFamily: 'Arial'
                  );
    return Center(
      child: Container(
        width: double.infinity,
        color: Color.fromRGBO(255, 97, 92, 0.945),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset('asset/images/1.png'),

            Container(
              padding: EdgeInsets.only(bottom: 12),
              child: Text(
                'Location Change',
                style: textStyle.copyWith(fontSize: 24),
              ),
            ),

            Container(
              padding: EdgeInsets.only(bottom: 18),
              child: Text('Plugins App for Tinder',
              style: textStyle.copyWith(fontSize: 14),),
            ),

            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print('Botão Pressionado');
                },
                style: ButtonStyle(
                  side: WidgetStateProperty.all(BorderSide.none),
                  backgroundColor: WidgetStateProperty.all(Colors.white),
                  
                ) ,
                child: Text('Login with Facebook',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(255, 97, 92, 0.945)),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
