remove_site_from_bus_org
----------------------------

Public Function remove_site_from_bus_org(ByVal site_id As String, _
                                         ByVal acct_id As String, _
                                         ByVal role_name As String) As Integer

**Description**

This API allows a site to be removed from an account. The site and account IDs must be specified, as well as the role the site currently plays. The site may be included in the account with many roles, and only the specified role will be removed.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| site_id | Yes | The site to remove from the account |
| acct_id | Yes | ID of the account |
| role_name | Yes | Role of the site to be removed from the account |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find specified site

-2                                             Cannot find the role for the specified site

-3                                             Cannot find the role for the specified site and account

**Examples**

 Remove site '3' from account 'AN_CUST2' with role 'Development'.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcinter.remove_site_from_bus_org("3", "AN_CUST2", _
                                           "Development")

**Javascript:**

var ret_int = fcinter.remove_site_from_bus_org("3", "AN_CUST2",

  "Development");