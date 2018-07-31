link_cr_to_soln
-----------------

Public Function link_cr_to_soln(ByVal cr_id As String, _
                                ByVal soln_id As String, _
                                ByVal link_date As String, _
                                ByVal user_name As String, _
                                ByVal create_time_bomb As Boolean) As Integer

**Description**

This API allows a change request to be linked to a solution. The link date, and user can be specified. Also, a time bomb can be generated for business rules.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| cr_id | Yes | CR to link |
| soln_id | Yes | ID number of solution to link |
| link_date | No | When was the link performed? If blank, current date/time is used |
| user_name | No | Who performed the link? If blank, current user is used |
| create_time_bomb | Yes | Should a time bomb be added to the system for business rule firing? |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find specified CR

-2                                             CR is already linked to the specified solution

-3                                             Cannot find specified solution

-4                                             Cannot find the specified user

-5                                             Cannot find the activity string for LINK CR rank equal to 6700

-6                                             Cannot find the activity string LINK SOLUTION rank equal to 6500

-7                                             Cannot find the specified user's employee record for relating time bomb

**Examples**

 Link CR '14' to solution '66' at the current date/time by the current user. Generate time bombs.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcinter.link_cr_to_soln("14", '66', "", "", true)

**Javascript:**

var ret_int = fcinter.link_cr_to_soln("14", '66', "", "", true);