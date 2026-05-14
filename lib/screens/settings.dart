import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';
import 'contect_us_page.dart';
import 'help_page.dart';
import 'about_us_page.dart';


class Sittings extends StatefulWidget {
  const Sittings({super.key});

  @override
  State<Sittings> createState() => _SittingsState();
}

class _SittingsState extends State<Sittings> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
      ListTile(
      title: const Text(
        "Theme",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      leading: Theme.of(context).brightness == Brightness.light
          ? Icon(Icons.dark_mode)
          : Icon(Icons.light_mode),
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Theme'),
            content: Consumer<ThemeProvider>(
              builder: (context, dataProvider, child) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RadioListTile(
                      value: "Light",
                      groupValue: dataProvider.themeState,
                      onChanged: (value) {
                        dataProvider.changeTheme(value!);
                        Navigator.pop(context);
                      },
                      title: const Text('Light'),
                    ),
                    RadioListTile(
                      value: "Dark",
                      groupValue: dataProvider.themeState,
                      onChanged: (value) {
                        dataProvider.changeTheme(value!);
                        Navigator.pop(context);
                      },
                      title: const Text('Dark'),
                    ),
                    RadioListTile( 
                      value: "System default",
                      groupValue: dataProvider.themeState,
                      onChanged: (value) {
                        dataProvider.changeTheme(value!);
                        Navigator.pop(context);
                      },
                      title: const Text('System default'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Cancel",
                          ),
                        )
                      ],
                    )
                  ],
                );
              },
            ),
          ),
        );
      },
    ),
    const Divider(
    color: Colors.grey,
    thickness: 0.2,
    indent: 60,
    endIndent: 20,
    height: 1,
    ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpPage()),
              );
            },
            leading: const Icon(Icons.help),
            title: const Text(
              "Help",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.2,
            indent: 60,
            endIndent: 20,
            height: 1,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUsPage()),
              );
            },
            leading: const Icon(Icons.info),
            title: const Text(
              "About us",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.2,
            indent: 60,
            endIndent: 20,
            height: 1,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUsPage()),
              );
            },
            leading: const Icon(Icons.contact_mail),
            title: const Text(
              "Contact us",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}