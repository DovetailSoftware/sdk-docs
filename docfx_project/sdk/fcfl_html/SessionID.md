_SessionID_
-----------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

```
Public Property Get SessionID() As String
```

#### Description

Returns the unique identifier associated with the FCSession. For ASP applications, this SessionID can be saved as a variable in an ASP Session object. Then, for each new page request, this value can be used with the CreateSession method on the FCApplication in order to retrieve a reference to an existing FCSession object.

**Example**

The following example stores the SessionID into an ASP Session object.

**JavaScript:**
```
if (LogonOK){
	// Save the FCSession Id in an ASP Session variable so that
	// it can be reestablished in the PageInitInc.asp of each
	// subsequent request.
	Session.Contents("FCSessionId") = FCSession.SessionId
```

The following example retrieves the SessionID from an ASP Session object, and uses the CreateSession method to reestablish it.

**Visual Basic:**
```
strSessionId = Session.Contents("FCSessionId")

if ( typeof(strSessionId) != "string" ) strSessionId = ""
if ( strSessionId == "" )
  { Response.Redirect("Logon3.asp") }

try
{    
FCSession = Application.Contents("FCApp").CreateSession(strSessionId)
} catch ( e )
{
//Could not re-establish session. Re-direct to logon page
  Response.Redirect("Logon3.asp")
}
```