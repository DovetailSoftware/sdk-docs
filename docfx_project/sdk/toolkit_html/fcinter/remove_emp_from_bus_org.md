remove_emp_from_bus_org
---------------------------

Public Function remove_emp_from_bus_org(ByVal user_name As String, _
                                        ByVal acct_id As String, _
                                        ByVal role_name As String) As Integer

**Description**

This API allows an employee (team member) to be removed from an account. The user name and account ID must be specified, as well as the role the user currently plays. The user may be included in the account with many roles, and only the specified role will be removed.

#### Parameters
**Parameter Name**                **Required?**             **Description**

user_name                             Yes                         The user name to remove from the account as a team member

acct_id                                   Yes                         ID of the account

role_name                              Yes                         Role of the user to be removed from the account

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find specified user

-2                                             The specified user is not on the account team with the specified role

**Examples**

 Remove user 'Michelle' from account 'AN_CUST2' with role 'Manager'

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcinter.remove_emp_from_bus_org("michelle", "AN_CUST2", _
                                          "Manager")

**Javascript:**

var ret_int = fcinter.remove_emp_from_bus_org("michelle", "AN_CUST2",

                                          "Manager");