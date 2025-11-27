import 'package:flutter/material.dart';
import 'bottom_nav_screen.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 400,
            height: 855,
            padding: const EdgeInsets.all(24),
            child: const PersonalizationContent(),
          ),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(),
    );
  }
}

class PersonalizationContent extends StatefulWidget {
  const PersonalizationContent({super.key});

  @override
  State<PersonalizationContent> createState() => _PersonalizationContentState();
}

class _PersonalizationContentState extends State<PersonalizationContent> {
  String? selectedGrade = 'Primary 5';
  final List<String> gradeOptions = [
    'Primary 1',
    'Primary 2',
    'Primary 3',
    'Primary 4',
    'Primary 5',
    'Form 1',
    'Form 2',
    'Form 3',
  ];

  String? selectedSource = 'Friends';
  final List<String> sourceOptions = [
    'Instagram',
    'Medium',
    'Threads',
    'Friends',
    'School',
    'Teacher',
    'Others'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Personalizing course\naccording to your profile',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),

        const SizedBox(height: 40),

        _buildProfileItem(
          title: 'Current School',
          value: 'Diocesan Boys\' School',
        ),

        const SizedBox(height: 24),

        _buildProfileItem(
          title: 'Elective Subject',
          value: 'Mathematics',
        ),

        const SizedBox(height: 24),

        _buildGradeDropdown(),

        const SizedBox(height: 24),

        _buildSourceDropdown(),
        const Spacer(),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomNavBarScreen()));
              },
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ],
    );
  }
  Widget _buildGradeDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Current Grade',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedGrade,
              isExpanded: true,
              icon: const Icon(Icons.arrow_drop_down, color: Colors.black54),
              alignment: Alignment.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  selectedGrade = newValue;
                });
              },
              items: gradeOptions.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Center(child: Text(value)),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSourceDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'How Did You Hear About Us?',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedSource,
              isExpanded: true,
              icon: const Icon(Icons.arrow_drop_down, color: Colors.black54),
              alignment: Alignment.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  selectedSource = newValue;
                });
              },
              items: sourceOptions.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Center(child: Text(value)),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProfileItem({required String title, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
