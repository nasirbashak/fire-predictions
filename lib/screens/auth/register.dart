import 'package:fireprediction/CustomIcons.dart';
import 'package:fireprediction/Widgets/FormCard.dart';
import 'package:fireprediction/Widgets/SocialIcons.dart';
import 'package:fireprediction/models/user.dart';
import 'package:fireprediction/screens/auth/auth.dart';
import 'package:fireprediction/services/authservice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _authService = AuthService();

  String username;
  String pass1;
  String pass2;

  bool _isSelected = false;

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget radioButton(bool isSelected) => Container(
    width: 16.0,
    height: 16.0,
    padding: EdgeInsets.all(2.0),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2.0, color: Colors.black)),
    child: isSelected
        ? Container(
      width: double.infinity,
      height: double.infinity,
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: Colors.black),
    )
        : Container(),
  );

  Widget horizontalLine() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      width: ScreenUtil.getInstance().setWidth(120),
      height: 1.0,
      color: Colors.black26.withOpacity(.2),
    ),
  );





  @override
  Widget build(BuildContext context) {

    String errorMessage = "";

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Image.asset("assets/image_01.png"),
            ),
            Expanded(
              child: Container(),
            ),
            Expanded(child: Image.asset("assets/image_02.png"))
          ],
        ),
        GestureDetector(
          onLongPress: (){
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(

            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/logo.png",
                        width: ScreenUtil.getInstance().setWidth(110),
                        height: ScreenUtil.getInstance().setHeight(110),
                      ),
                      Text("LOGO",
                          style: TextStyle(
                              fontFamily: "Poppins-Bold",
                              fontSize: ScreenUtil.getInstance().setSp(46),
                              letterSpacing: .6,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(100),
                  ),
                  //Card start
                  Container(
                    width: double.infinity,
                    //height: ScreenUtil.getInstance().setHeight(500),
                    padding: EdgeInsets.only(bottom: 1),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 15.0),
                              blurRadius: 15.0),
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, -10.0),
                              blurRadius: 10.0),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Text("Register",
                              style: TextStyle(
                                  fontSize: ScreenUtil.getInstance().setSp(45),
                                  fontFamily: "Poppins-Bold",
                                  letterSpacing: .6)),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(30),
                          ),
                          Text("Username",
                              style: TextStyle(
                                  fontFamily: "Poppins-Medium",
                                  fontSize: ScreenUtil.getInstance().setSp(26))),
                          TextField(
                            onChanged: (data){
                              username = data;
                            },
                            decoration: InputDecoration(
                                hintText: "username",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                          ),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(30),
                          ),
                          Text("PassWord",
                              style: TextStyle(
                                  fontFamily: "Poppins-Medium",
                                  fontSize: ScreenUtil.getInstance().setSp(26))),
                          TextField(
                            onChanged: (data){
                              pass1 = data;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                          ),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(35),
                          ),
                          Text("Confirm PassWord",
                              style: TextStyle(
                                  fontFamily: "Poppins-Medium",
                                  fontSize: ScreenUtil.getInstance().setSp(26))),
                          TextField(
                            onChanged: (data){
                              pass2 = data;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                          ),
                          SizedBox(height: ScreenUtil.instance.setHeight(40),),
                        ],
                      ),
                    ),
                  ),
                  //Card end
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 12.0,
                          ),
                          GestureDetector(
                            onTap: _radio,
                            child: radioButton(_isSelected),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text("Remember me",
                              style: TextStyle(
                                  fontSize: 12, fontFamily: "Poppins-Medium"))
                        ],
                      ),
                      InkWell(
                        child: Container(
                          width: ScreenUtil.getInstance().setWidth(330),
                          height: ScreenUtil.getInstance().setHeight(100),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFF17ead9),
                                Color(0xFF6078ea)
                              ]),
                              borderRadius: BorderRadius.circular(6.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFF6078ea).withOpacity(.3),
                                    offset: Offset(0.0, 8.0),
                                    blurRadius: 8.0)
                              ]),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () async {

                                try {
                                  dynamic result  = await _authService.registerWithEmaillAndPassword(username, pass1);
                                  if(result is User) {
                                    print("inside register email and pass Result.uid = " + result.uid);
                                  }else if(result is String){
                                    print("inside register email and pass Result.uid != "+ result.split(",")[1]);
                                    setState(() {
                                      errorMessage = result.split(",")[1];
                                      print(errorMessage);

                                    });

                                    final snackBar = SnackBar(
                                      content: Text("$errorMessage",
                                        style: TextStyle(
                                            color: Colors.red
                                        ),),
                                      action: SnackBarAction(
                                        label: '',
                                        onPressed: () {
                                          // Some code to undo the change.
                                        },
                                      ),
                                    );

                                    // Find the Scaffold in the widget tree and use
                                    // it to show a SnackBar.
                                    Scaffold.of(context).showSnackBar(snackBar);


                                  }
                                } catch (e) {
                                  print("inside register email and pass Exception"+e.toString());
                                  setState(() {
                                    errorMessage = e.toString();
                                  });

                                  errorMessage = e.toString();

                                  final snackBar = SnackBar(
                                    content: Text("$errorMessage",
                                      style: TextStyle(
                                          color: Colors.red
                                      ),),
                                    action: SnackBarAction(
                                      label: '',
                                      onPressed: () {
                                        // Some code to undo the change.
                                      },
                                    ),
                                  );

                                  // Find the Scaffold in the widget tree and use
                                  // it to show a SnackBar.
                                  Scaffold.of(context).showSnackBar(snackBar);


                                }

                              },
                              child: Center(
                                child: Text("Register",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins-Bold",
                                        fontSize: 18,
                                        letterSpacing: 1.0)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
