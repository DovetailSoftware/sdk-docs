_LoadUserVersions_
------------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Sub LoadUserVersions(Optional user_name As String)

**Description**

This method reads the user version and resource configuration from the database, and stores them in a memory cache for fast access. User versions are read from the cache with the _GetUserVersion_ and _BuildUserVersionProc_ methods.

When you call this method, the database is searched for the user's current resource configuration. The routine then determines, for each web form type, if the user's resource configuration has a custom version of that web form in the resource config, or if the _baseline_ version of the form should be used.

This method is optional. You do not have to call on it in your **FCFL** programs. If you are writing a program (such as a command-line processor), you will not use user versions of web forms, and you do not need to call on this method. In this case, no user versions are loaded, and any calls to the _GetUserVersion_ method will return "".

You should use the supplied GUI in _fcAdmin_ to modify web forms, web user versions, and resource configurations.

**Note:** The _fcClient_ program calls on this method for you so that user versions are available in the thin client. You do not need to add it to your forms in the thin client.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| user_name | No | The name of the user for whom user version/resource configuration  should be loaded into this session. |

**Example**

This example shows the loading of user versions for the current user. It then prints out the user version of the "CASE" form.

**Visual Basic:**

The code in this example is written in Visual Basic.

fc_session.LoadUserVersions

MsgBox fc_session.GetUserVersion("CASE")