_GetConfigItem_
------------
**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Function GetConfigItem(ByVal ConfigItem As String,
                              ByVal FieldName As String,
                              Optional ByVal LoginName As String = "")
                              As Variant
```

#### Description

This method returns a configuration item from the database. You must specify the name of the configuration item, along with the particular field you wish to retrieve. The field name should be a valid field in the config_itm table. In addition, you can optionally specify the login name of user, thus allowing retrieval of user-defined configuration items. You can also retrieve system wide configuration data using the Item method.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| ConfigItem | Yes | The name of the configuration item |
| FieldName | Yes | A valid field name in the config_itm table |
| LoginName | No | An optional parameter that is a valid login_name in the user table. |

**Returns**

The value of the field for the configuration item. If the configuration item is not found, or not found for the defined user, then an empty string is returned. |

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 11005 | Not logged in to an active session |

#### Examples

The following example retrieves a system-wide and a user configuration item.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

i_value for the config_itm "password specification" =

 <%=FCSession.GetConfigItem("password specification","i_value")%> <BR>

'Win Help File' config_itm for user 'sa' =

 <%=FCSession.GetConfigItem("Win Help File","str_value","sa")%> <BR>