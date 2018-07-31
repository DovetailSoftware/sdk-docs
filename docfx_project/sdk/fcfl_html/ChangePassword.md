_Change__Password_
------------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Sub ChangePassword(ByVal password As String)

**Description**

This method changes the password for the session user, which may either be a contact or a user. You may not use this method to change the password for the "sa" user.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| password | Yes | The new password |

**Error Codes**

**Value**                **Meaning**

11005                                      Not logged in to an active session

11017                                      System administrators cannot change their password using this method.

**Example**

The following example changes the current user's password.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

FCSession.ChangePassword("new_password");