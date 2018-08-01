initialize
----------

```
Public Sub Initialize(ByVal FCApp As FCApplication, ByVal FCSess As FCSession)
```

#### Description

This API initializes an **FCCS** object. It must be called after the creation of the object, and before any other APIs can be called on the **FCCS** object. Simply put, this API simply saves the FCApplication and FCSession pointers within the **FCCS** object so that they can be used as needed.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| FCApp | Yes | FCApplication object |
| FCSess | Yes | FCSession object |

#### Examples

Create and initialize a new FCCS object.

**JavaScript:**
```
var FCApp;
var FCSession;
var fccs;

FCApp = new ActiveXObject("FCFL.fcapplication");
FCApp.WorkingDirectory = 
    "C:\\\users\\\first\\\product\\\fcfl\\\error";

FCApp.Initialize();
FCSession = FCApp.CreateSession();
FCSession.Login("sa","sa", "user");

fccs = new ActiveXObject("FCCS.CS");
fccs.Initialize(FCApp, FCSession);

//  Do FCCS work here
FCCS = null;
FCSession.Logout();
FCSession.CloseSession();
FCSession = null;
FCApp = null;
```

**Visual Basic:**
```
Dim fc_app     As FCApplication
Dim fc_session As FCSession
Dim fccs_obj   As CS

Set fc_app = New FCApplication
fc_app.ConnectionString = "provider=sqloledb;datasource=gaffer;initial   catalog=cl10;user id=sa; password=sa;"
fc_app.Initialize

Set fc_session = fc_app.CreateSession
fc_session.Login "sa", "sa", "user"

Set fccs_obj = New CS
fccs_obj.Initialize fc_app, fc_session   

' Do FCCS work here
Set fccs_obj = Nothing
fc_session.Logout

Set fc_session = Nothing
Set fc_app = Nothing
```