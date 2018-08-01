_PasswordRequired_
------------------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

```
Public PasswordRequired As Boolean
```

#### Description

This property allows you to disable password valdation when logging in using the Login method. By default, this property is set to True, meaning that a valid password must be supplied to the Login method. If this property is set to False, then the login name is validated, but the password is not. 

This property is useful when developing applications that  use their own validation mechanisms, such as an LDAP server or web server.

**Example**

The following example demonstrates setting and using the _PasswordRequired_ property. The example allows you to login without supplying a valid password.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

var FCApp;

var FCSession;

var strUserName = Request.Form("username").Item;

//Create a session using the Global FCApp

 FCApp = Application.Contents("FCApp");

 FCSession = FCApp.CreateSession();

  FCSession.PasswordRequired = false;

//Login as a contact

  try

  {

    FCSession.Login(strUserName,"","contact")

  }

  catch(e)

  {

    Response.Write("<BR><B>Logon Error:</B><BR>");

    Response.Write("<B>" + e.description + "</B><BR>");

  }