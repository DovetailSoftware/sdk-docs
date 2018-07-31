unlink_case_from_workaround
-----------------------------

Public Function unlink_case_from_workaround(ByVal case_id As String, _
                                            ByVal unlink_date As String, _
                                            ByVal user_name As String, _
                                            ByVal create_time_bomb As Boolean)

                                            As Integer

**Description**

This API allows a case to be unlinked from the workaround it is currently linked to. The case must already be linked to a workaround. The unlink date, and user can be specified. Also, a time bomb can be generated for business rules.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| case_id | Yes | Case id to unlink from |
| unlink_date | No | When was the unlink performed? If blank, current date/time is used |
| user_name | No | Who performed the unlink? If blank, current user is used |
| create_time_bomb | Yes | Should a time bomb be added to the system for business rule firing? |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find specified case

-2                                             Case is not linked

-3                                             Cannot find the specified user

-4                                             Cannot find the activity string for "Un-Link" rank equal to 4000

-5                                             Cannot find the specified user's employee record for relating time bomb

**Examples**

 Unlink case '55' from the workaround at the current date/time by the current user. Generate time bombs.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcinter.unlink_case_from_workaround("55", "", "", true)

**Javascript:**

var ret_int = fcinter.unlink_case_from_workaround("55", "", "", true);