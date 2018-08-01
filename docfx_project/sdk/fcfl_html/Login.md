_Login_
----
**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Sub Login(LoginName As String, password As String, TheLoginType As String)
```

#### Description

This method validates the login name and password for either a contact or a user/employee.for contacts, the login_name is validated against the login_name field on the web_user table, and the password is validated against the passwordf field in the web_user table. The web_user record is related to the contact record via the relation web_user2contact. This is the same validation that is done in Clarify web-based products, such as ClearExpress WebSupport and eSupport.for users/employees, the login_name and password are validated against the database - similar to the Clarify Classic Client. If the login attempt is successful, the following happens:

*  The Item collection data is setup
*  If using Data Restriction, the data restrictions for the user are setup
*  If using Oracle, the NLS_DATE_FORMAT for the session is set to 'MM/DD/YYYY HH:MI:SS AM'

**Note**: You can use the _PasswordRequired_ property on the FCSession to bypass password validation. Please see that method's documentation for more information.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| LoginName | Yes | The login name |
| Password | Yes | The password |
| LoginType | Yes | The login type - either "user" or "contact" |

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 11003 | Already Logged In. |
| 11013 | You must supply a login name. |
| 11011 | Invalid login type. |
| 11012 | Could not login. |

#### Examples

The following example attempts to login as a contact using data from a posted web page.

**JavaScript:**
```
var FCApp;
var FCSession;
var strUserName = Request.Form("username").Item;
var strPassword = Request.Form("password").Item;

//Create a session using the Global FCApp
 FCApp = Application.Contents("FCApp");
 FCSession = FCApp.CreateSession();

//Set Locale on The IIS Session
  SetLCID();

//Login as a contact
  var LogonOK = true; | try | {
    FCSession.Login(strUserName,strPassword,"contact")
  }
  catch(e)
  {
    Response.Write("<BR><B>Logon Error:</B><BR>");
    Response.Write("<B>" + e.description + "</B><BR>");
    var LogonOK = false;
  }
```