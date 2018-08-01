add_contact_to_contract
-------------------------

```
Public Function add_contact_to_contract(ByVal contract_id As String, _
                                        ByVal f_name As String, _
                                        ByVal l_name As String, _
                                        ByVal phone_num As String, _
                                        ByVal site_id As String) As Integer
```

#### Description

This API adds a contact to an existing contract. You must specify the contract ID and the site id.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| contract_id | Yes | ID of contract to add site to |
| f_name | Yes | First name of contact to be added |
| l_name | Yes | Last name of contact to be added |
| phone_num | Yes | Phone number of contact to be added |
| site_id | Yes | Site where contact to be added is located |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | No Contract Id Specified |
| -2 | No Contact Information Specified |
| -3 | No Site Id Specified |
| -4 | Specified Contract Not Found |
| -5 | Specified site is not related to this contract |
| -6 | Specified Contact Not Found |
| ret_objid | Output - Returns the objid of the contact |

#### Examples

 Add John Smith at (512)123-4567 from site "2" to contract "AMD 1"

**Visual Basic:**

Dim ret_int       As Integer
```

Dim contact_objid As Long

ret_int = fcinter.add_contact_to_contract("AMD 1", "John", _
                                          "Smith", "5121234567", "2")

 If ret_int = 0 Then

      contact_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.add_contact_to_contract("AMD 1", "John",

                                       "Smith", "5121234567", "2");

 if (ret_int == 0){ var contact_objid = fcinter.ret_objid; }