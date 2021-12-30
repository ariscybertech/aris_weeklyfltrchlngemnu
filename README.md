# weekly_flutter_challenge_6_menu

## Challenge summary:
This challenge is about recreating two of Kuenzang Sherub's designs: [Login Concept](https://www.uplabs.com/posts/login-concept-mockup) and [Menu](https://www.uplabs.com/posts/menu-mockup-market). The former contains a login form, that will let me learn to handle forms in Flutter apps. The latter requires me to use 3D transformation to move the login page away and reveal the menu. The app itself is a simple one, but let me learn very important aspects of developing an app.

## Things that I have learned during the development of this challenge app:
0. I have started using [DevTools](https://flutter.dev/docs/development/tools/devtools/overview) for this project to debug layout problems.
1. For the login page I have created a [Form](https://flutter.dev/docs/cookbook/forms/validation) with [TextFormField](https://api.flutter.dev/flutter/material/TextFormField-class.html) that are validated. Earlier I have also used a [TextField](https://api.flutter.dev/flutter/material/TextField-class.html).
2. I have used [Wrap](https://api.flutter.dev/flutter/widgets/Wrap-class.html) to properly display login page elements when soft keyboard is visible.
3. During development I have used a [SnackBar](https://api.flutter.dev/flutter/material/SnackBar-class.html) widget as a way to test a form.
4. The [Transform](https://api.flutter.dev/flutter/widgets/Transform-class.html) widget with [Matrix4](https://api.flutter.dev/flutter/vector_math_64/Matrix4-class.html) allowed me to create 3D transformation of Login page.
5. Using the [FocusScope](https://api.flutter.dev/flutter/widgets/FocusScope-class.html) I have taken the focus away from a TextFormField and as a result I have hidden a soft keyboard.
6. The [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html) and [ListTile](https://api.flutter.dev/flutter/material/ListTile-class.html) let me easily and nicely set up a menu.
7. I have also tried [RichText](https://api.flutter.dev/flutter/widgets/RichText-class.html) with [TextSpan](https://api.flutter.dev/flutter/painting/TextSpan-class.html) to mix differently styled text. This was later removed.
8. Used [CircleAvatar](https://api.flutter.dev/flutter/material/CircleAvatar-class.html) to show, well a circle avatar in menu.

## Original design
Original design consists of two pages:
1. [Login page](https://www.uplabs.com/posts/login-concept-mockup) that is visible when application starts.
2. [Menu](https://www.uplabs.com/posts/menu-mockup-market) that is revealed when user logs in or swipes the screen to the right.

[![Original design](https://github.com/JKPK/weekly_flutter_challenge_6_menu/blob/master/original_design.png?raw=true)](https://www.uplabs.com/posts/menu-mockup-market)

## Challenge result - click GIF to see video
[![Challenge result](https://github.com/JKPK/weekly_flutter_challenge_6_menu/blob/master/challenge_result.gif?raw=true)](https://youtu.be/I5z-3GufVb4)

## Youtube link
https://youtu.be/I5z-3GufVb4