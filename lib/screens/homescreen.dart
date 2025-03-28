import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sms/screens/custom_textfield.dart';
import 'package:sms/screens/view_groups_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final numberController = TextEditingController();
  final numberFocus = FocusNode();

  @override
  void dispose() {
    numberController.dispose();
    numberFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enter numbers",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),

        leading: CupertinoNavigationBarBackButton(
          onPressed: () => Navigator.pop(context),
        ),

        actions: [
          SizedBox(
            child: PopupMenuButton(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              constraints: BoxConstraints(minWidth: 100, minHeight: 40),
              child: SizedBox(
                width: 40,
                height: 40,
                child: Icon(Icons.more_vert, color: Colors.black),
              ),
              itemBuilder: (_) {
                return [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(Icons.groups, size: 18, color: Colors.white),
                        SizedBox(width: 11),
                        Text(
                          "View Groups",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                    onTap: () {
                      Future.delayed(Duration.zero, () {
                        if (mounted) {
                          // Ensure the widget is still in the tree
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewGroupsScreen(),
                            ),
                          );
                        }
                      });
                    },
                  ),
                ];
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomTextfield(
                controller: numberController,
                hintText: 'Start Entering Numbers',
                focusNode: numberFocus,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
