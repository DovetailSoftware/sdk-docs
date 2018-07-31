add_inv_location
------------------

Public Function add_inv_location(ByVal loc_name As String, _
                               ByVal account_type As String, ByVal desc_str As String, _
                               ByVal reports_to_loc As String, ByVal cap_gl_acct As String, _
                               ByVal is_active As Boolean, ByVal is_company As Boolean, _
                               ByVal site_id As String, ByVal trans_auth_str As String) _
                               As Integer

**Description**

This API is used to add inventory locations to the system. The location name, capital GL account, and site must be specified. The active and company flags are set to determine the disposition of the account. Optionally, a description and reports to location (which is the location name of another inventory location) can be specified. The account type (for inventory locations) can be specified from the code list.

The trans authority determines part authorization levels, and has three possible values: none, all, auth parts only.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| loc_name | Yes | Name of the inventory location |
| account_type | No | Code list value. If blank, default value is used |
| desc_str | No | Description of the inventory location |
| reports_to_loc | No | The location name of the parent inventory location (if any) |
| cap_gl_acct | Yes | The name of the capital account for this location |
| is_active | Yes | Is the location active (True) or inactive (False) |
| is_company | Yes | Is the location company owned (True) or customer (False) |
| site_id | Yes | The location of the inventory location |
| trans_auth_str | Yes | One of the following values: none, all, auth parts only |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Missing site id parameter

-3                                             Missing loc_name parameter

-4                                             The supplied site was not found

-6                                             The location name already exists in the database

-7                                             Location type is not valid from the code list

-8                                             Missing capital gl account name

-9                                             The specified reports to location is not found in the database

-10                                           Invalid trans_auth string

-11                                           Capital GL account does not exist |
| ret_objid | Output | Returns the objid of the newly created inventory location

**Examples**

 Add a new location named Buda. Assign a capital GL account to it, put it as site "1", and make it active and company owned. Allow only authorized parts.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.add_inv_location("Buda", "", "Rocket parts", "", _
                  "CAPGL", True, True, "1", "auth parts only")

**Javascript:**

var ret_int = fccl.add_inv_location("Buda", "", "Rocket parts", "",

                  "CAPGL", true, true, "1", "auth parts only");

 Add another location that is customer owned, inactive, and reports to Austin. Do not allow parts auths.

**Visual Basic:**

    Dim ret_int As Integer

ret_int = fccl.add_inv_location("Houston", "", "Rocket parts", "Austin", _
                  "CAPGL", False, False, "1", "none")

**Javascript:**

var ret_int = fccl.add_inv_location("Houston", "", "Rocket parts", "Austin",

                  "CAPGL", false, false, "1", "none");