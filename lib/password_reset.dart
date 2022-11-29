import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}
class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xFF16E4E4, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff14cdcd),//10%
      100: const Color(0xff12b6b6),//20%
      200: const Color(0xff0fa0a0),//30%
      300: const Color(0xff0d8989),//40%
      400: const Color(0xff0b7272),//50%
      500: const Color(0xff095b5b),//60%
      600: const Color(0xff074444),//70%
      700: const Color(0xff042e2e),//80%
      800: const Color(0xff021717),//90%
      900: const Color(0xff000000),//100%
    },
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New_password',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Palette.kToDark,
      ),
      home: const PasswordReset(),
    );
  }
}
class PasswordReset extends StatefulWidget {
  const PasswordReset({Key? key}) : super(key: key);

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: ListView(
        children:  [
          //BACK BUTTON

          const Padding(padding: EdgeInsets.fromLTRB(0,35, 0, 15)),
          SizedBox(
            child: SvgPicture.asset('assets/images/Mikedcare.svg',
              height: deviceHeight*0.09,
              width: deviceWidth*0.09,
              alignment: Alignment.bottomCenter,),
          ),
          const Padding(padding: EdgeInsets.fromLTRB(0,35, 0, 35)),
          Container(
            height: deviceHeight*0.10,
            margin: EdgeInsets.symmetric(horizontal: 140),
            decoration: BoxDecoration(
              color: Color(0xFFE7FFE0),
              borderRadius: BorderRadius.circular(7)
            ),
            child: Icon(Icons.check_circle_outline, color: Color(0xFF329A37),size: deviceWidth*0.16,),
          ),
          const Padding(padding: EdgeInsets.fromLTRB(0,35, 0, 35)),
          const Center(child: Text
            ('Password reset',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          )
          ),
          const Padding(padding: EdgeInsets.fromLTRB(0,35, 0, 15)),
          const Center(child: Text
            ('Your password has been successfully reset\nClick below to login',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w300),
          )
          ),
          const Padding(padding: EdgeInsets.fromLTRB(0,35, 0, 35)),
          Container(
            margin: const EdgeInsets.fromLTRB(35,0,35,0),
            height: deviceHeight*0.07,
          child: ElevatedButton(onPressed: (){},style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                  )
              )
          ),
            child: const Text('CONTINUE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),),),),
        ],
      ),
    );
  }
}

class MyColors {
  static const grey=Color(0xff8c9696);
  static const shade0=Color(0xff14cdcd);//10%
  static const shade20= Color(0xff12b6b6);//20%
  static const shade30= Color(0xff0fa0a0);//30%
  static const shade40=Color(0xff0d8989);//40%
  static const shade50=Color(0xff0b7272);//50%
  static const shade60=Color(0xff095b5b);//60%
  static const shade70=Color(0xff074444);//70%
  static const shade80=Color(0xff042e2e);//80%
  static const shade90=Color(0xff021717);//90%
  static const shade100=Color(0xff000000);//100%

}

