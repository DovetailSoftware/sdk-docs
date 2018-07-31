add_site_to_contract
----------------------

Public Function add_site_to_contract(ByVal contract_id As String, _
                                     ByVal site_id As String) As Integer

**Description**

This API adds a site to an existing contract. You must specify the contract ID and the site id.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| contract_id | Yes | ID of contract to add site to |
| site_id | Yes | ID of site to be added |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             No Contract Id Specified

-2                                             No Site Id Specified

-3                                             Specified Contract Not Found

-4                                             Specified Site Not Found |
| ret_objid | Output | Returns the objid of the site

**Examples**

 Add site "2" to contract "AMD 1"

**Visual Basic:**

Dim ret_int    As Integer

Dim site_objid As Long

ret_int = fcinter.add_site_to_contract("AMD 1", "2")

 If ret_int = 0 Then

      site_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.add_site_to_contract("AMD 1", "2");

 if (ret_int == 0){ var site_objid = fcinter.ret_objid; }