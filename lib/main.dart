import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
          fontFamily: "Poppins_Regular",
          accentColor: Color(0xFF6055A5),
          backgroundColor: Color(0xFFFF7A7A),
          textTheme:
              TextTheme(body1: TextStyle(fontFamily: "Poppins_Regular"))),
      home: RegisterPage(),
      debugShowCheckedModeBanner: false,
    ));

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  Widget userDetailsInputFields(String nameOfTheField) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))),
            hintText: nameOfTheField,
            hintStyle: TextStyle(
                fontFamily: "Poppins_Regular", fontWeight: FontWeight.w600),
            contentPadding: EdgeInsets.all(20)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF7A7A),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 400,
          ),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg-intro-mobile.png"),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 64),
                    child: Center(
                      child: Text(
                        "Learn to code by watching others",
                        style: TextStyle(
                            fontFamily: "Poppins_Regular",
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Center(
                      child: Text(
                        "See how experienced developers solve problems in real-time. Watching scripted tutorials is great, "
                        "but understanding how developers think is invaluable.",
                        style: TextStyle(
                            fontFamily: "Poppins_Regular",
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 56),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.black54.withOpacity(0.5),
                              blurRadius: 10.0,
                              offset: Offset(-8, 20))
                        ]),
                        child: RaisedButton(
                          color: Color(0xFF6055A5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            //side: BorderSide(color: Colors.red)
                          ),
                          onPressed: () {},
                          child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * .75,
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Try it free 7 days then',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                                Text(r'$20/mo. thereafter',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                              ],
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0xFF5BC0CD),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 16,
                        ),
                        userDetailsInputFields("First Name"),
                        userDetailsInputFields("Last Name"),
                        userDetailsInputFields("Email Address"),
                        userDetailsInputFields("Password"),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: RaisedButton(
                            elevation: 6,
                            color: Color(0xFF38CC8C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              //side: BorderSide(color: Colors.red)
                            ),
                            onPressed: () {},
                            child: Container(
                              height: 60,
                              child: Center(
                                child: Text(
                                  "CLAIM YOUR FREE TRIAL",
                                  style: TextStyle(
                                      fontFamily: "Poppins_Regular",
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Column(
                          children: <Widget>[
                            Center(
                              child: Text(
                                "By clicking the button, you are agreeing to, ",
                                style: TextStyle(
                                    fontFamily: "Poppins_Regular",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.withOpacity(0.5)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text: "Our ", style: TextStyle(
                                  fontFamily: "Poppins_Regular",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "Terms and Services", style: TextStyle(
                                    fontFamily: "Poppins_Regular",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFFFF7A7A),
                                  )
                                  )
                                ]
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 72,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
