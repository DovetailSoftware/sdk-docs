modify_inv_location
---------------------

```
Public Function modify_inv_location(ByVal old_name As String, _
                                 ByVal new_name As String, ByVal account_type As String, _
                                 ByVal desc_str As String, ByVal reports_to_loc As String, _
                                 ByVal cap_gl_acct As String, ByVal is_active As Boolean, _
                                 ByVal is_company As Boolean, ByVal site_id As String, _
                                 ByVal trans_auth_str As String) As Integer
```

#### Description

This API is used to modify inventory locations in the system. The old name must be specified (to look up the record). If a name change is needed, then the new name can be specified. Otherwise it can be left blank. The other data can be modified as needed.

The trans authority determines part authorization levels, and has three possible values: none, all, auth parts only.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| old_name | Yes | Name of the inventory location |
| new_name | No | New name of the location (if it is changing) |
| account_type | No | Code list value to set |
| desc_str | No | Description of the inventory location |
| reports_to_loc | No | The location name of the parent inventory location (if any) |
| cap_gl_acct | No | The name of the capital account for this location |
| is_active | Yes | Is the location active (True) or inactive (False) |
| is_company | Yes | Is the location company owned (True) or customer (False) |
| site_id | No | The location of the inventory location |
| trans_auth_str | No | One of the following: none, all, auth parts only. If blank, no change is made |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Missing site id parameter |
| -2 | Missing old_name parameter |
| -3 | Missing loc_name parameter |
| -4 | The supplied site was not found |
| -5 | The location name (old name) does not exist in the database |
| -7 | Location type is not valid from the code list |
| -8 | Missing capital gl account name |
| -9 | The specified reports to location is not found in the database |
| -10 | Invalid trans_auth string |
| -11 | Capital GL account does not exist |

#### Examples

Change the name of a location from "Austin" to "Round Rock".

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.modify_inv_location("Austin", "Round Rock", "", "", "", _
                     "", True, True, "", "")
```

**JavaScript:**
```
var ret_int = fccl.modify_inv_location("Austin", "Round Rock", "", "", "",
                     "", true, true, "", "");
```

Change most of the information for a location.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.modify_inv_location("Austin", "Round Rock", "", "New desc", _
                            "Dallas", "NewCapGL", True, True, "2", "none")
```

**JavaScript:**
```
var ret_int = fccl.modify_inv_location("Austin", "Round Rock", "", "New desc",
                            "Dallas", "NewCapGL", true, true, "2", "none");
```