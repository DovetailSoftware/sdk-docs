_GetUserVersion_
----------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Function GetUserVersion(formName As String) As String
```

#### Description

This method returns the user version in the current user's resource configuration for the web form name passed in to the method. The resource configuration data is loaded into **FCFL** via the _LoadUserVersions_ method. If the resource configuration contains a custom version of the supplied form name, the user version is returned, with slashes on either side of the version. For example, "/1.0/". If no custom version of the web form is present in the resource configuration, a slash "/" is returned. If user versions have not been loaded (with the _LoadUserVersions_ method), a slash is also returned.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| formName | Yes | The web form name to locate in the current resource configuration to determine if there is a custom version used |

**Returns**

One of the two strings detailed above.

**Example**

This example shows the loading of user versions for the current user. It then prints out the resource configuration's custom version (if any) for the "SITE" web form.

**Visual Basic:**

The code in this example is written in Visual Basic.

fc_session.LoadUserVerions

MsgBox fc_session.GetUserVersion("SITE")