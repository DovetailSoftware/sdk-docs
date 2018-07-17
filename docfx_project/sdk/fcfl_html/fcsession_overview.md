_FCFL FCSession Object_
-----------------------

**Overview**

The FCSession represents a single user or contact connection to the database. In traditional applications, such as Visual Basic, there would be a single FCApplication object and a single FCSession object. In a web-based application, there would be a single FCApplication object, and multiple FCSession objects. Each browser connection to the web server would have its own FCSession object.

The FCSession object is used to manage individual information for each login.

You can use the FCSession object to:

*   Login and Logout
*   Create new FCGeneric, FCBulk, and FCSQLExec objects
*   Access information specific to the user or contact
*   Convert timestamps between different time zones

To create a new FCSession object, use the CreateSession method of the FCApplication object. The following are examples of how to create an FCSession object in both JavaScript and Visual Basic:

**JavaScript**:

var FCApp = Server.CreateObject("FCFL.fcapplication");

FCApp.Initialize();

var FCSession = FCApp.CreateSession();

**Visual Basic**:

Dim FCApp as FCApplication

Dim FCSession as FCSession

Set FCApp = CreateObject("FCFL.fcapplication")

FCApp.Initialize

Set FCSession = FCApp.CreateSession