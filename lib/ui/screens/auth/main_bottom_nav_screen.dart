import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/taskManager/add_new_task_screen.dart';
import 'package:task_manager/ui/screens/taskManager/cancelled_task_screen.dart';
import 'package:task_manager/ui/screens/taskManager/completed_task_screen.dart';
import 'package:task_manager/ui/screens/taskManager/in_progress_screen.dart';
import 'package:task_manager/ui/screens/taskManager/new_task.dart';
import 'package:task_manager/ui/utility/app_colors.dart';
import 'package:task_manager/ui/widgets/profile_app_bar.dart';


class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    // AddNewTaskScreen(),
    NewTaskScreen(),
    CompletedTaskScreen(),
    InProgressTaskScreen(),
    CancelledTaskScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      // body: Center(child: Text('Main Bottom Nav Screen'),),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          _selectedIndex = index;
          if (mounted) {
            setState(() {});
          }
        },
        selectedItemColor: AppColors.themeColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          // BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Task'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'New Task'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Completed'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), label: 'In Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.close), label: 'Cancelled'),
        ],
      ),
    );
  }
}