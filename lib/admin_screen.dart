import 'package:flutter/material.dart';
import 'package:sms/screens/homescreen.dart';
import 'package:sms/utils/custom_elevated_button.dart';
import 'package:sms/screens/custom_textfield.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  // Controllers for group name
  final groupOneController = TextEditingController();
  final groupTwoController = TextEditingController();
  final groupThreeController = TextEditingController();
  final groupFourController = TextEditingController();
  final groupFiveController = TextEditingController();

  // Controllers for group numbers
  final groupOneNumberController = TextEditingController();
  final groupTwoNumberController = TextEditingController();
  final groupThreeNumberController = TextEditingController();
  final groupFourNumberController = TextEditingController();
  final groupFiveNumberController = TextEditingController();

  // Focus Nodes for group names
  FocusNode groupOneFocus = FocusNode();
  FocusNode groupTwoFocus = FocusNode();
  FocusNode groupThreeFocus = FocusNode();
  FocusNode groupFourFocus = FocusNode();
  FocusNode groupFiveFocus = FocusNode();

  // FocusNodes for group numbers
  final groupOneNumberFocus = FocusNode();
  final groupTwoNumberFocus = FocusNode();
  final groupThreeNumberFocus = FocusNode();
  final groupFourNumberFocus = FocusNode();
  final groupFiveNumberFocus = FocusNode();

  @override
  void dispose() {
    // Dispose of Group name controllers
    groupOneController.dispose();
    groupTwoController.dispose();
    groupThreeController.dispose();
    groupFourController.dispose();
    groupFiveController.dispose();

    // Dispose all Group number controllers
    groupOneNumberController.dispose();
    groupTwoNumberController.dispose();
    groupThreeNumberController.dispose();
    groupFourNumberController.dispose();
    groupFiveNumberController.dispose();

    // Dispose of all Group name focus nodes
    groupOneFocus.dispose();
    groupTwoFocus.dispose();
    groupThreeFocus.dispose();
    groupFourFocus.dispose();
    groupFiveFocus.dispose();

    // Dispose of all Group number focus nodes
    groupOneNumberFocus.dispose();
    groupTwoNumberFocus.dispose();
    groupThreeNumberFocus.dispose();
    groupFourNumberFocus.dispose();
    groupFiveNumberFocus.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, // Ensures UI resizes properly when keyboard appears
      appBar: AppBar(
        title: Text(
          'Create Groups',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Enter Group 1 Name
              CustomTextfield(
                controller: groupOneController,
                hintText: 'Enter Group 1 Name',
                focusNode: groupOneFocus,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20),
              // Enter numbers for Group  1
              CustomTextfield(
                controller: groupOneNumberController,
                hintText: 'Enter Numbers ',
                focusNode: groupOneNumberFocus,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              // Enter Group 2 Name
              CustomTextfield(
                controller: groupTwoController,
                keyboardType: TextInputType.text,
                hintText: 'Enter Group 2 Name',
                focusNode: groupTwoFocus,
              ),
              SizedBox(height: 20),
              // Enter numbers for group 2
              CustomTextfield(
                controller: groupTwoNumberController,
                hintText: 'Enter Numbers',
                focusNode: groupTwoNumberFocus,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              // Enter Group 3 name
              CustomTextfield(
                controller: groupThreeController,
                hintText: 'Enter Group 3 Name',
                focusNode: groupThreeFocus,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20),
              // Enter numbers for group 3
              CustomTextfield(
                controller: groupThreeNumberController,
                hintText: 'Enter Numbers ',
                focusNode: groupThreeNumberFocus,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              // Enter group 4 name
              CustomTextfield(
                controller: groupFourController,
                hintText: 'Enter Group 4 Name',
                focusNode: groupFourFocus,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20),
              // Enter numbers for group 4
              CustomTextfield(
                controller: groupFourNumberController,
                hintText: 'Enter Numbers ',
                focusNode: groupFourNumberFocus,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              // Enter group 5 name
              CustomTextfield(
                controller: groupFiveController,
                hintText: 'Enter Group 5 Name',
                focusNode: groupFiveFocus,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20),
              // Enter numbers for group 5
              CustomTextfield(
                controller: groupFiveNumberController,
                hintText: 'Enter Numbers ',
                focusNode: groupFiveNumberFocus,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 25),
              CustomElevatedButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
