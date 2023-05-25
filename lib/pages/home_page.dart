import 'package:everything_of_location/providers/theme_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: OwlsTheme.lightTheme,
      darkTheme: OwlsTheme.darkTheme,
      home: Scaffold(
        drawer: const Drawer(
          width: 400,
        ),
        appBar: AppBar(
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.orange,
                    size: 40,
                  ),
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'Owls Test',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.orange),
            ),
          ),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Body section.',
              style: TextStyle(fontSize: 48),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
