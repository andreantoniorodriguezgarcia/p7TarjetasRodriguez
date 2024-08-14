import 'package:flutter/material.dart';

void main() => runApp(const TarjetaApp());

class TarjetaApp extends StatelessWidget {
  const TarjetaApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'Tarjeta Rodríguez',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: const PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplo de Tarjetas"),
        actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
        backgroundColor: Color(0xffd8bfff),
        shape: const StadiumBorder(),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide.merge(
                  BorderSide(
                      width: 1.5,
                      color: Color(0xff993fff),
                      style: BorderStyle.solid),
                  BorderSide(
                      width: 1.5,
                      color: Color(0xff993fff),
                      style: BorderStyle.solid)),
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color(0xffd8bfff),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide.merge(
                          BorderSide(
                              width: 1.5,
                              color: Color(0xff993fff),
                              style: BorderStyle.solid),
                          BorderSide(
                              width: 1.5,
                              color: Color(0xff993fff),
                              style: BorderStyle.solid)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Color(0xffd5fff6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Flutter is Cool',
                            style: TextStyle(
                                color: Color(0xff993fff), fontSize: 30),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(height: 100, width: 100, child: FlutterLogo())
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    /*return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplo de Tarjetas"),
        actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
        backgroundColor: Color(0xffd8bfff),
        shape: const StadiumBorder(),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide.merge(
                  BorderSide(
                      width: 1.5,
                      color: Color(0xffc263ff),
                      style: BorderStyle.solid),
                  BorderSide(
                      width: 1.5,
                      color: Color(0xffc263ff),
                      style: BorderStyle.solid)),
              borderRadius: BorderRadius.circular(20),
            ),
            color: const Color(0xffd5fff6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Flutter is Cool',
                  style:
                      const TextStyle(color: Color(0xffc263ff), fontSize: 30),
                ),
                const SizedBox(height: 20),
                Container(height: 100, width: 100, child: const FlutterLogo()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class PaginaInicio extends StatelessWidget {
  final String title;
  const PaginaInicio({super.key, required this.title});  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
    */
  }
}
