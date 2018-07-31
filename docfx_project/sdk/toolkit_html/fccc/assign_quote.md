assign_quote
------------

Public Function assign_quote(ByVal quote_id As String, _

                             ByVal new_user As String, _

                             ByVal wipbin_name As String, _

                             ByVal assign_date As String,

                             ByVal user_name As String, _

                             ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified quote to be assigned to a new user. The quote must be in open condition, and the

user assigning the quote does not have to be the owner of the quote. In base Clarify, the assigner of a quote must be the owner. If either user name is not specified, the "current" user is used. The date/time of the assignment, and the WIPBin to place the quote in can also be specified. Allowing a WIPBin other than the default one is also an augmentation from base Clarify.  The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

quote_id                                                Yes                         The quote to assign

new_user                               No                           The user who the quote is assigned to. If left blank, the quote is assigned

to the current user

wipbin_name                        No                           The WIPBin to place the quote in (for the user who is assigned the quote)

If left blank, the quote is placed in the user's default WIPBin

assign_date                          No                           When was the quote assigned. If this parameter is left blank, the quote

is assigned at the current time

user_name                             No                           The user who assigned the quote. If left blank, the current user performs

the assign.

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified quote

-2                                             The specified quote is not currently open

-3                                             Specified user (to assign to) is not found

-4                                             The specified WIPBIN is not valid for the user

-5                                             Specified user (who performed the assign) is not found

-6                                             Could not find gbst_elm string for ASSIGN with rank = 10500

**Examples  **

 Assign quote number '154' to user 'marty'. The assign is performed by the current user, is placed in the default WIPBin and is assigned at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = fc_cc.assign_quote("154", "marty", "", "", "", True)

**Visual Basic:**

Dim ret_int As Integer

ret_int = fc_cc.assign_quote("154", "marty", "", "", "", True)

 Assign quote number 'Q2' at 10PM on November 23rd of 2001 to marty, and place the quote in marty's

WIPBin named 'Urgent'. Assign should be logged as performed by sam. Don't generate a time bomb

**JavaScript:**

var ret_int = fc_cc.assign_quote("Q2", "marty", "Urgent", _

                            "11/23/2001 22:00:00", "sam", False)

**Visual Basic:**

Dim ret_int As Integer

ret_int = fc_cc.assign_quote("Q2", "marty", "Urgent", _

                            "11/23/2001 22:00:00", "sam", False)