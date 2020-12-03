# Flutter-learning POC

 Flutter Basic component implementation for learning purpose
   
   - Login UI with TextFormFied and Button to get Input from the user - main.dart
   
   - Splash Screen - splash_screen.dart
   
   - Showing Toast Message on click of Button - home_screen.dart
   
   - ListView with Static Data - listview_screen.dart

   - Dynamic ListView with dynamic data that can vary on runtime - dynamic_listview.dart

   - Calling Rest API and getting the response data - WorkWithApi.dart

   - EventHandling - For Handling event like get the data enetered by user in TextFormField and display in toast on click of Button.

   - DartCollection - This Dart class contains code that uses various method,constructors & properties of Dart Collection API.

   - Navigation using pushNamed method - Code for navigation using pushed Named method was added , the components of this class includes
     navigation
      -home.dart
      -routs.dart
      -signin.dart
      -signup.dart

   <b>An Important Note</b>
    
    - To launch various screen just comment & uncomment others from the following
        
        - void main() => runApp(MyApp()); - for Login Screen keep this line uncommented and rest commented.(24th Nov 2020).
        - void main() => runApp(MySplashScreen()); - for Splash Screen keep this line uncommented and rest commented.(24th Nov 2020).
        - void main() => runApp(ListViewScreen()); - for ListView Screen with Static Data keep this line uncommented and rest commented.(25th Nov 2020).
        - void main() => runApp(HomeScreen());  - for Home Screen with Buttons to Navigate to Various Screen keep this line uncommented & rest commented(25th Nov 2020).
        - void main() => runApp(DynamicListViewScreen()); - for Dynamic ListView with dyanamically v changing data.(26th Nov 2020)
        - void main() => runApp(WorkWithApi()); - for Rest Api calling and getting the Response (30 Nov. 2020)
