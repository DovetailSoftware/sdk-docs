add_site_part_to_contract
-----------------------------

```
Public Function add_site_part_to_contract(ByVal contract_id As String, _
                                          ByVal site_id As String, _
                                          ByVal sp_objid As Long) As Integer
```

#### Description

This API adds a site_part to an existing contract. You must specify the contract ID, site id, and site_part instance name.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| contract_id | Yes | ID of contract to add site to |
| site_id | Yes | ID of site to be added |
| sp_objid | Yes | objid of site_part to be added |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | No Contract Id specified |
| -2 | Specified Contract Not Found |
| -3 | Specified Site Not Found |
| -4 | Specified Site Part Not Found |
| ret_objid | Output - Returns the objid of the site part |

#### Examples

 Add "MS Word 97" to site "2" to contract "AMD 1"

**Visual Basic:**

Dim ret_int    As Integer
```

Dim sp_objid   As Long

ret_int = fcinter.add_site_part_to_contract("AMD 1", "2", 268435414)

 If ret_int = 0 Then

      sp_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.add_site_part_to_contract("AMD 1", "2", 268435414);

 if (ret_int == 0){ var sp_objid = fcinter.ret_objid; }