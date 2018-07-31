add_emp_to_bus_org
----------------------

Public Function add_emp_to_bus_org(ByVal user_name As String, _
                                   ByVal acct_id As String, _
                                   ByVal role_name As String) As Integer

**Description**

This API adds an employee as a team member to an account (bus_org) with the specified role. You must specify the user name, account ID, and role name.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| user_name | Yes | User name of account team member |
| site_id | Yes | Account to add team member to |
| role_name | No | Role for team member. If left blank, default role is used |

**Returns**

**Value**                **Meaning**

0 No errors

+1                                            The employee already exists on the account team with the specified role

-1                                             Cannot find the specified user name

-2                                             Cannot find the specified account id

-3                                             The supplied Account Team role is not found |
| ret_objid | Output | Returns the objid of the employee

**Examples**

 Add Jeanne to the account team for account "AN_CUST1" with a role of "Executive Sponsor".

**Visual Basic:**

Dim ret_int    As Integer

Dim emp_objid  As Long

ret_int = fcinter.add_emp_to_bus_org("jeanne", "AN_CUST1", _
                                     "Executive Sponsor")

 If ret_int = 0 Then

     emp_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.add_emp_to_bus_org("jeanne", "AN_CUST1",

                                     "Executive Sponsor");

 if (ret_int == 0){ var emp_objid = fcinter.ret_objid; }