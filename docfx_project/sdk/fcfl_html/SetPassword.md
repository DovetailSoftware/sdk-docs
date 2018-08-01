_SetPassword_
----------
**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Sub SetPassword(ByVal LoginName As String, ByVal Password As String, ByVal LoginType As String)
```

#### Description

This method changes the password for a given user or contact. You may not use this method to change the password for the "sa" user. When setting the password for a contact, the password is changed in the web_user table. When setting the password for a user, the password is changed at the database level, so the current session user must have the correct database permissions to execute these commands (_sp_password_ on SQL Server, _alter user_ on Oracle). If the user does not have these permissions, an error will be thrown.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| LoginName | Yes | The user or web_user login_name |
| Password | Yes | The new password |
| LoginType | Yes | The login type - either "user" or "contact" |

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 11005 | Not logged in to an active session |
| 11011 | Invalid LoginType |
| 11017 | System administrators cannot change their password using this method. |
| 11019 | Could not find user/contact with given login name. |

#### Examples

The following example changes password for a user.

**JavaScript:**
```
//Get the Posted Data
var strLoginName    = Request.QueryString('login_name').Item;
var strPassword     = Request.QueryString('password').Item;

//Update the User Password
FCSession.SetPassword(strLoginName,strPassword,"user");
```