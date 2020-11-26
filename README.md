# FlutterPOC

 Flutter Basic component implementation for learning purpose
   
   - Login UI with TextFormFied and Button to get Input from the user - main.dart
   
   - Splash Screen - splash_screen.dart
   
   - Showing Toast Message on click of Button - home_screen.dart
   
   - ListView with Static Data - listview_screen.dart

   - Dynamic ListView with dynamic data that can vary on runtime - dynamic_listview.dart

   <b>An Important Note</b>
    
    - To launch various screen just comment & uncomment others from the following
        
        - void main() => runApp(MyApp()); - for Login Screen keep this line uncommented and rest commented.
        - void main() => runApp(ListViewScreen()); - for ListView Screen with Static Data keep this line uncommented and rest commented.
        - void main() => runApp(HomeScreen());  - for Home Screen with Buttons to Navigate to Various Screen keep this line uncommented & rest commented.