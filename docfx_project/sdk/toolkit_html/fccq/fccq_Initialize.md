### Initialize

Public Sub Initialize(ByRef TheFCApplication As FCApplication, _
                      ByRef TheFCSession As FCSession)

**Description**

The Initialize method is used to establish the relationship between the FCCQ object and the FCApplication and FCSession objects.  This method must be called before calling any of the other API methods.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| TheFCApplication | Yes | The FCApplication Object |
| TheFCSession | Yes | The FCSession Object |

**Example**

 Create the necessary objects, and initialize the FCCQ object

**Visual Basic:**

Dim FCApp     As New FCApplication

Dim FCSession As FCSession

Dim FCCQ      As New CQ

FCApp.WorkingDirectory = "c:\\temp"

FCApp.Initialize

Set FCSession = FCApp.CreateSession

FCSession.Login "sa", "sa", "user"

FCSession.ThrowErrors = False

FCCQ.Initialize FCApp, FCSession

'Now any of the API methods on FCCQ can be called

'When finished, destroy the FCCQ object

Set FCCQ = Nothing

**JavaScript:**

var FCApp = Server.CreateObject("FCFLCompat.FCApplication");

var FCCQ = Server.CreateObject("FCCompatToolkit.CQ");

FCApp.WorkingDirectory = "C:\\\temp";

FCApp.Initialize();

var FCSession = FCApp.CreateSession();

FCSession.Login("sa", "sa", "user");

FCSession.ThrowErrors = false;

FCCQ.Initialize(FCApp, FCSession);

//Now any of the API methods on FCCQ can be called

//When finished, destroy the FCCQ object

FCCQ = null;