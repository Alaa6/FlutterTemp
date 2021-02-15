import 'package:flutter/material.dart';
import './firstRoute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign in',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Sign in'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>(); // msh fahma
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                  child: Form(
                key: _formKey,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: ' email',
                            focusColor: Colors.grey,
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Email can\'t by empty';
                            }
                            return null;
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: ' Password',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password can\'t by empty';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstRoute()),
                            );
                          }
                        },
                        child: Text('Sign in'),
                      ),
                    ),
                    Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Need an account ? Register'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Forget password ? '),
                      )
                    ])
                  ],
                ),
              )),
            ))));
  }
}
