link_case_to_workaround
-------------------------

Public Function link_case_to_workaround(ByVal case_id As String, _

                                        ByVal work_objid As Long, _

                                        ByVal link_date As String, _

                                        ByVal user_name As String, _

                                        ByVal create_time_bomb As Boolean) _

                                        As Integer

**Description**

This API allows a case to be linked to a specific workaround. The case cannot already be linked to a workaround. The link date, and user can be specified. Also, a time bomb can be generated for business rules.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

case_id                                  Yes                         Case to link

work_objid                            Yes                         Objid of workaround to link to the case

link_date                                No                           When was the link performed? If blank, current date/time is used

user_name                             No                           Who performed the link? If blank, current user is used

create_time_bomb               Yes                         Should a time bomb be added to the system for business rule firing?

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Cannot find specified case

-2                                             Case is already linked

-3                                             Cannot find specified workaround

-4                                             Cannot find the specified user

-5                                             Cannot find the activity string for "Link" rank equal to 1400

-6                                             Cannot find the specified user's employee record for relating time bomb

**Examples**

 Link case '55' to workaround 268435676 at the current date/time by the current user. Generate time bombs.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcinter.link_case_to_workaround("55", 268435676, _

                                          "", "", true)

**Javascript:**

var ret_int = fcinter.link_case_to_workaround("55", 268435676,

                                          "", "", true);