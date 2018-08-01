modify_gl_account
-------------------

```
Public Function modify_gl_account(ByVal old_name As String, _
                                  ByVal new_name As String, ByVal account_type As String, _
                                  ByVal desc_str As String, ByVal account_no As String, _
                                  ByVal is_exp As Boolean, ByVal is_active As Boolean, _
                                  ByVal is_company As Boolean, ByVal site_id As String) _
                                  As Integer
```

#### Description

This API is used to modify existing GL accounts. Any of the attributes of the account can be changed. See the add_gl_account API desciption for more information. To leave any of the information unchanged, simply do not specify a value for it. For example, if you do not wish to change the name of the account, leave _new_name_ blank.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| old_name | Yes | The current ame of the GL account |
| new_name | No | The new name (if changed) of the GL account |
| account_type | No | Type of account from the code list. If blank, the default value is used |
| desc_str | No | The description of the account |
| account_no | No | Optional account number |
| is_exp | Yes | Is this an expense account (True), or capital (False) |
| is_active | Yes | Is the account active (True) or inactive (False) |
| is_company | Yes | Is it company owned (True) or customer owned (False) |
| site_id | Yes | The site for the account |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Missing site id parameter |
| -2 | Missing old_name parameter |
| -3 | Missing new_name parameter |
| -4 | The supplied site was not found |
| -6 | The account name already exists in the database |
| -7 | Location (expense/capital) type value not found |
| -8 | Account type value not valid for the type of account (expense/capital) |

#### Example

Modify "myaccount" to change the name to "youraccount". Make it a customer owned, inactive, capital GL for site 2.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.modify_gl_account("myaccount", "youraccount", "description", _
                                "12345", False, False, False, "2")
```

**JavaScript:**
```
var ret_int = fccl.modify_gl_account("myaccount", "youraccount", "description",
                                "12345", false, false, false, "2");
```