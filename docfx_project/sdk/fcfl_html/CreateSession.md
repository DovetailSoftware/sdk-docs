_CreateSession_
---------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function CreateSession(Optional ByVal SessionID As String) As FCSession

**Description**

This method creates a new FCSession object, or returns a reference to an existing FCSession object.

If this method is called without any input parameters, a new FCSession object will be created and returned.

If this method is called with a SessionID, the FCApplication will attempt to return a reference to an existing FCSession object with the given SessionID. If a FCSession with this SessionID does not exist, an error is thrown.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| SessionID | No | An optional parameter for re-establishing an existing FCSession object. |

**Returns**

A new FCSession object, or a reference to an existing FCSession Object

**Error Codes**

**Value**                **Meaning**

10020                                      Invalid SessionID

**Example**

The following example attempts to retrieve a SessionID from the ASP Session, and , if found, re-establish the existing FCSession.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

var  FCSession;

var strSessionId = ""; 

strSessionId = Session.Contents("FCSessionId");

if ( typeof(strSessionId) != "string" )

   { strSessionId = ""; }

if ( strSessionId == "" )

   { Response.Redirect("Logon3.asp"); }

try

  {  

  FCSession = Application.Contents("FCApp").CreateSession(strSessionId)

  }

catch ( e )

  {

  //Could not re-establish session. Re-direct to logon page

  Response.Redirect("Logon3.asp")

  }  

The following example simply creates a new FCApplication object and a new FCSession object.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim fc_app As New FCApplication

Dim fc_session As FCSession

fc_app.WorkingDirectory = "C:\\inetpub\\wwwroot\\testing"

fc_app.Initialize()

Set fc_session = fc_app.CreateSession

fc_session.Login UserName, Password