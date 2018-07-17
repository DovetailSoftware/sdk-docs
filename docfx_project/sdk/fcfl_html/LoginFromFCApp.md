_LoginFromFCApp_
----------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Sub LoginFromFCApp())

**Description**

This method allows you to login to a FCSession as a user using the same login_name and password that you used when logging into the FCApplication object. The login_name and password will be the same one you defined in either your fc.env file, or in the InitializeFull method. The LoginType for this type of login is always "user".  The same processing happens as the normal Login method, except that you do not need to supply any parameters.

Please refer to the documentation for the Login method for more details.                                                                             

**Error Codes**

**Value                                     Meaning                                                                                                                               **

11003                                      Already Logged In.

**Example**

The following example attempts to login as a user using the same user as the FCApplication.

**Visual Basic:**

The code in this example is written in Visual Basic

Dim fc_session As FCSession

Set fc_session = fc_app.CreateSession

fc_session.LoginFromFCApp

MsgBox (fc_session.item("user.login_name"))