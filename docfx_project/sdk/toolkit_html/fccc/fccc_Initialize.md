Initialize
----------

Public Sub Initialize(ByRef TheFCApplication As Variant,

ByRef TheFCSession As Variant)

**Description**

This API is called when the FC.CC object is first created.   It sets various private parameters of the object and makes it ready to be used for ClearContracts calls

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

TheFCApplication               Yes                         The FC Application object

TheFCSession                    Yes                           The FC Session object

**Returns**

No return values

**Examples  **

**JavaScript:**

//  Open the FCFLCompat and FCCC objects

FCApp = new ActiveXObject("FCFLCompat.fcapplication");

FCApp.WorkingDirectory =  "C:\\\users\\\first\\\product\\\fcfl\\\error";

    FCApp.Initialize();

    FCSession = FCApp.CreateSession();

    FCSession.Login("sa","sa", "user");

    fccc = new ActiveXObject("FCCompatToolkit.CC");

    fccc.Initialize(FCApp, FCSession);

**        Visual Basic:**

 Dim fc_app     As.FCApplication

    Dim fc_session As FCSession

    Dim fccc_obj   As FCCompatToolkit.CC

    ' Open the FCFLCompat and FCCC objects

    Set fc_app = New FCApplication

    fc_app.Initialize

    Set fc_session = fc_app.CreateSession

    fc_session.Login "sa", "sa", "user"

    Set fccc_obj = New FCCompatToolkit.CC

    fccc_obj.Initialize fc_app, fc_session