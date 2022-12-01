# Flutter Concepts and Developing Widgets 


## 1- Fluter Aplication

Basics Concepts of Flutter. The First App

The basic Functions: 
- main(): your main function will likely initiate any pre-processing needed for your program, and end with a function call that runs the rest of your app. 
- runApp(): is a Flutter function that runs your Flutter app
- MaterialApp(): An application that uses Material Design.
- Scaffold(): which provides standard app elements like an AppBar and a Drawer
- AppBar():An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar.
- Container(): A convenience widget that combines common painting, positioning, and sizing widgets.
- Center(): A widget that centers its child within itself. 

child: is for only one son 
- child: Text('Widget Text')

children is for more than one son
- children: <Widget>[Text('Widget Text 1'), Text('Widget Text 2')]
  
<p align="center">
  <img src=https://user-images.githubusercontent.com/93054257/203457158-6180222b-3570-4c1f-a21c-f08338b6e375.png>
</p>

- For more information about Flutter: https://api.flutter.dev/flutter/widgets/widgets-library.html

## 2- Statelles Widget

A widget that does not require mutable state.

A stateless widget is a widget that describes part of the user interface by building a constellation of other widgets that describe the user interface more concretely. The building process continues recursively until the description of the user interface is fully concrete.

<p align="center">
  <img src=https://user-images.githubusercontent.com/93054257/203851618-2a7c8ec1-32a4-428e-990f-aec8cf2636d1.png>
</p>

- For more information about Statelles Widget: https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html

## 3- Stateful Widget

A widget that has mutable state.

State is information that (1) can be read synchronously when the widget is built and (2) might change during the lifetime of the widget. It is the responsibility of the widget implementer to ensure that the State is promptly notified when such state changes, using State.setState.

- setState(): calling setState notifies the framework that the internal state of this object has changed in a way that might impact the user interface in this subtree, which causes the framework to schedule a build for this State object.

- ElevatedButton(): Use elevated buttons to add dimension to otherwise mostly flat layouts, e.g. in long busy lists of content, or in wide spaces. Avoid using elevated buttons on already-elevated content such as dialogs or cards.
  
<p align="center"> 
  <img src=https://user-images.githubusercontent.com/93054257/204063827-7f827161-2708-44cc-b041-cd0809650e3b.png>
</p>

- For more information about Stateful Widget: https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html
  
## 4- TextField

A text field lets the user enter text, either with hardware keyboard or with an onscreen keyboard.

The text field calls the onChanged callback whenever the user changes the text in the field. If the user indicates that they are done typing in the field (e.g., by pressing a button on the soft keyboard), the text field calls the onSubmitted callback.

To control the text that is displayed in the text field, use the controller. For example, to set the initial value of the text field, use a controller that already contains some text. The controller can also control the selection and composing region (and to observe changes to the text, selection, and composing region).

- TextEditingController: a controller for an editable text field. Whenever the user modifies a text field with an associated [TextEditingController], the text field updates [value] and the controller notifies its listeners. Listeners can then read the [text] and [selection] properties to learn what the user has typed or how the selection has been updated.. can also be used to provide an initial value for a text field. If you build a text field with a controller that already has text, the text field will use that text as its initial value.

<p align="center">
  <img src=https://user-images.githubusercontent.com/93054257/204572301-51cce844-cb4c-4eb8-9b9c-8a394bc32d40.png>
</p>

- For more information about TextField: https://api.flutter.dev/flutter/material/TextField-class.html

## 5- AlertDialog

An alert dialog (also known as a basic dialog) informs the user about situations that require acknowledgement. An alert dialog has an optional title and an optional list of actions. The title is displayed above the content and the actions are displayed below the content.

- FloatingActionButton(): A floating action button is a circular icon button that hovers over content to promote a primary action in the application. Floating action buttons are most commonly used in the Scaffold.floatingActionButton field.  Use at most a single floating action button per screen. Floating action buttons should be used for positive actions such as "create", "share", or "navigate". If the onPressed callback is null, then the button will be disabled and will not react to touch. It is highly discouraged to disable a floating action button as there is no indication to the user that the button is disabled. Consider changing the backgroundColor if disabling the floating action button.

<p align="center">
  <img src="https://user-images.githubusercontent.com/93054257/204844552-2a0ad032-b236-4fd4-b7fe-9bdecda5121e.png">
</p>

- For more information about AlertDialog: https://api.flutter.dev/flutter/material/AlertDialog-class.html

## 6- Stepper
A material stepper widget that displays progress through a sequence of steps. Steppers are particularly useful in the case of forms where one step requires the completion of another one, or where multiple steps need to be completed in order to submit the whole form.
The widget is a flexible wrapper. A parent class should pass currentStep to this widget based on some logic triggered by the three callbacks that it provides.

<p align = "center">
  <img src="https://user-images.githubusercontent.com/93054257/205100205-98ffd87b-c3b1-4c94-9e5a-daf59198d950.png">
</p>

- For more information about Stepper: https://api.flutter.dev/flutter/material/Stepper-class.html

## 7- TabBar

## 8- Navegator Tabs

## 9- Navegator Router

## 10- Navegator Drawer

## 11- SnackBar

## 12- ListViews 

## 13- Infinit ListView 
