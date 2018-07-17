add_site_to_bus_org
-----------------------

Public Function add_site_to_bus_org(ByVal site_id As String, _

                                    ByVal acct_id As String, _

                                    ByVal role_name As String) As Integer

**Description**

This API adds a site to an existing account (bus_org). You must specify the account ID and the site id. In addition, you must specify the site's role. In addition, you must specify the role_name. This is either a valid Account Site Role value, or the string "OWNER" for a site that is the owner of the account.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

site_id                                    Yes                         ID of site to be added

acct_id                                   Yes                         ID of account to add site to

role_name                              Yes                         Role name of site in account

**Returns**

**Value                                     Meaning                                                                                                                                               **

0 No errors

+1                                            The site already exists in the account with the specified role name

-1                                             Specified site ID is not found

-2                                             Specified account ID is not found

-3                                             The supplied Account site role is not found

ret_objid                                Output                   Returns the objid of the site

**Examples**

 Add site "2" to account "AN_CUST33" with a role of  "OWNER".

**Visual Basic:**

Dim ret_int    As Integer

Dim site_objid As Long

ret_int = fcinter.add_site_to_bus_org("2", "AN_CUST33", "OWNER")

 If ret_int = 0 Then

      site_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.add_site_to_bus_org("2", "AN_CUST33", "OWNER");

 if (ret_int == 0){ var site_objid = fcinter.ret_objid; }