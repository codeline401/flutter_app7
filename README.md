# ch8_bottom_navigation_bar

A new Flutter project.

The BottomNavogatorBar items property has a list of three BottomNavigatorBarItems.

For each BottomNavigatorBarItem, we set an icon property and a label property.
The BottomNavigationBar onTap passes the selected index value to the _chagePage method.
The _changePage method uses setState() to set _currentIndex and _currentPage to display.

The _currentIndex sets the selected BottomNavigationBarItem, and the _currentPage sets the current
page to display from the _listePages List.
