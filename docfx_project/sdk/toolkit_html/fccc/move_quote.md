  
**move_quote**

Public Function move_quote(ByVal quote_id As String, _

                           ByVal new_wipbin As String) As Integer

**Description**

This API causes the specified quote to be moved from one WIPBin to another WIPBin. The new WIPBin must belong to the same user as the first WIPBin. The move operation does not change the ownership of the quote, nor is an activity log or time bomb generated for the action.

**Note:** This API allows you to move a queueable quote from one WIPBin to another, even if the quote is currently dispatched. Since WIPBins are internal to a user, there really is no reason that you shouldn't be able to move the interal (to a user) location of the quote. This is an enhancement to base Clarify function, which requires that the quote not be dispatched to be moved.

#### Parameters
**Parameter Name**                **Required?**             **Description**

quote_id                                                Yes                         The quote to move

new_wipbin                          Yes                         The WIPBin to move the quote to. If left blank, the quote is moved to the                                                                               user's default WIPBin

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified quote

-2                                             Quote is already closed

-3                                             New WIPBIN doesn't exist, or isn't for the owner

-4                                             New WIPBIN is same as old - no move needed

**Examples  **

 Move quote number '154' to the default WIPBin for the current owner.

**JavaScript:**

var ret_int = fc_cc.move_quote("154", "")

**Visual Basic:**

Dim ret_int As Integer

ret_int = fc_cc.move_quote("154", "")

 Move quote number 'Q2' to WIPBin 'Urgent'.

**JavaScript:**

var ret_int = fc_cc.move_quote("Q2", "Urgent")

**Visual Basic:**

Dim ret_int As Integer

ret_int = fc_cc.move_quote("Q2", "Urgent")