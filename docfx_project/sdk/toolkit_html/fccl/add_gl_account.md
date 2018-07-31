add_gl_account
----------------

Public Function add_gl_account(ByVal acct_name As String, _
                               ByVal account_type As String, ByVal desc_str As String, _
                               ByVal account_no As String, ByVal is_exp As Boolean, _
                               ByVal is_active As Boolean, ByVal is_company As Boolean, _
                               ByVal site_id As String) As Integer

**Description**

This API is used to add expense and capital GL accounts to Clarify. The account name, description and account number are specified. Using the boolean flags the account can be made into capital or expense, active or inactive, company or customer owned. The site for the account must be specified, and the account type can be set from the code list.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| acct_name | Yes | Name of the GL account |
| account_type | No | Type of account from the code list. If blank, the default value is used |
| desc_str | No | The description of the account |
| account_no | No | Optional account number |
| is_exp | Yes | Is this an expense account (True), or capital (False) |
| is_active | Yes | Is the account active (True) or inactive (False) |
| is_company | Yes | Is it company owned (True) or customer owned (False) |
| site_id | Yes | The site for the account |

**Returns**

**Value | Meaning | **

0                                              No errors

-1                                             Missing site id parameter

-2                                             Missing acct_name parameter

-4                                             The supplied site was not found

-6                                             The account name already exists in the database

-7                                             Location (expense/capital) type value not found

-8                                             Account type value not valid for the type of account (expense/capital)

-9                                             The 'From' account name already exists in the database

**Examples**

 Add an expense GL account with no account type, a description, an account number. It is active and company owned, and for site 1.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.add_gl_account("myaccount", "", "A description", "1234", _
                              True, True, True, "1")

**Javascript:**

var ret_int = fccl.add_gl_account("myaccount", "", "A description", "1234",

                              true, true, true, "1");

 Add a capital GL account with no account type, a description, an account number. It is inactive and customer owned, and for site 1.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.add_gl_account("myaccount1", "", "A description", "1234", _
                              False, False, False, "1")

**Javascript:**

var ret_int = fccl.add_gl_account("myaccount1", "", "A description", "1234",

                              false, false, false, "1");