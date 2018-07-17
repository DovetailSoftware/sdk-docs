reject_contract
---------------

Public Function reject_contract(ByVal contract_id As String, _

                           ByVal status_str As String, ByVal notes_str As String, _

                           ByVal user_name As String, ByVal reject_date As String, _

                           ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API is used to reject quotes (close them) in ClearContracts. The API accepts the contract ID, the new status (in Closed Contract condition), and optional notes. The user performing the reject, and the date/time of the reject can also be specified. The API can also either generate time bombs (for business rule notification) or not, based on the last argument.

#### Parameters
**Parameter Name                Required?             Description                                                                                          **

contract_id                            Yes                         ID number of the contract/quote to reject

status_str                              No                           New status of the closed contract. If blank, the default status

for Closed Contract condition will be used.

Notes_str                              No                           Optional notes to add for the reject

user_name                             No                           The user performing the reject. If blank, the current user is used

reject_date                            No                           When is the reject taking place? If blank, the current date/time is used

gen_time_bomb                   Yes                         Should a time_bomb be added for the action?

**Returns**

**Value                                     Meaning                                                                                                                               **

0                                              No errors

-1                                             Contract specified could not be found

-2                                             The contract is not in the right condition (Quote) to be rejected

-3                                             The contract is currently dispatched - cannot be rejected

-4                                             Cannot find the specified user

-5                                             The specified status is not valid for the Closed Contract condition

-6                                             Cannot find the activity record for "Quote Reject" with rank = 13800

-7                                             Employee record not found for specified user

**Examples  **

 Joe rejected contract '42' on January 1st with some notes, and put it in status 'Customer bankrupt." Generate a time bomb.

**JavaScript:**

Var ret_int = fc_cc.reject_contract("42", "Customer bankrupt", "Some notes", _

                                  "Joe", "1/1/99 8:00:00", True)

**Visual Basic:**

   Dim ret_int    As Integer

   ret_int = fc_cc.reject_contract("42", "Customer bankrupt", "Some notes", _

                                  "Joe", "1/1/99 8:00:00", True)

 The current user rejects contract '33' at the current date and time. Use the default status, and nothing else is added, and don't add a time bomb.

**JavaScript:**

var ret_int = fc_cc.reject_contract("33", "", "", "", "", False)

**Visual Basic:**

    Dim ret_int    As Integer

    ret_int = fc_cc.reject_contract("33", "", "", "", "", False)