modify_opp
----------

modify_opp_list
-----------------

```
Public Function modify_opp(ByVal opp_id As String, _
                           ByVal opp_name As String, _
                           ByVal acct_id As String, _
                           ByVal con_first As String, _
                           ByVal con_last As String, _
                           ByVal con_phone As String, _
                           ByVal terr_name As String, _
                           ByVal amt As Currency, _
                           ByVal close_date As String, _
                           ByVal lead_source As String, _
                           ByVal the_currency As String, _
                           ByVal prob As String, _
                           ByVal process As String, _
                           ByVal mod_date As String, _
                           ByVal user_name As String, _
                           ByVal gen_time_bombs As Boolean, _
                           ByVal int_fld1 As String, _
                           ByVal int_val1 As Long, _
                           ByVal int_fld2 As String, _
                           ByVal int_val2 As Long, _
                           ByVal str_fld1 As String, _
                           ByVal str_val1 As String, _
                           ByVal str_fld2 As String, _
                           ByVal str_val2 As String, _
                           ByVal date_fld1 As String, _
                           ByVal date_val1 As String) As Integer
```

```
Public Function modify_opp_list( ByVal opp_id As String, _
                           ByVal opp_name As String, _
                           ByVal acct_id As String, _
                           ByVal con_first As String, _
                           ByVal con_last As String, _
                           ByVal con_phone As String, _
                           ByVal terr_name As String, _
                           ByVal amt As Currency, _
                           ByVal close_date As String, _
                           ByVal lead_source As String, _
                           ByVal the_currency As String, _
                           ByVal prob As String, _
                           ByVal process As String, _
                           ByVal mod_date As String, _
                           ByVal user_name As String, _
                           ByVal gen_time_bombs As Boolean, _
                           Optional fld_list As Variant, _
                           Optional type_list As Variant, _
                           Optional val_list As Variant) As Integer
```

#### Description

These APIs are used to modify opportunities. The opportunity ID must be specified. All other data is optional. The opportunity name, account, contact, territory, stage, source, currency, and process may be specified. You may generate time bombs for business rules, or not. Also, an amount and a probability may be specified.

Most of the data items can be left with their current values. To not change an item, simply leave the data blank (for strings), or less than 0 (for numerics). If you wish to clear out the value in an option item, use the keyword "CLEAR".

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| opp_id | Yes | The ID of the opportunity to modify |
| opp_name | No | Name of the opportunity. If blank, no change is made |
| acct_id | No | ID of the related account. If blank, no change is made. To clear the account, use "CLEAR" |
| con_first, con_last, con_phone | No | Name and phone number of related contact. If a contact is to be specified, all three must be given. If all three are blank, no change is made. To clear out the specified contact, put "CLEAR" in con_first, and leave the other two blank |
| terr_name | No | Name of the territory. If blank, no change is made |
| amt | No | Amount of the opportunity. Must be numeric. If < 0, no change is made |
| close_date | No | Close date of the opportunity. If  blank, no change is made |
| lead_source | No | Lead source for the opportunity. If blank, no change is made |
| the_currency | No | Currency for the opportunity. If blank, no change is made |
| prob | No | Probability of opportunity close. Must be numeric, and between 0 and 1. If blank, (""), no change is made |
| process | No | Process for the opportunity. If blank, no change is made |
| user_name | No | Owner of the opportunity. If blank, the current owner is not changed |
| mod_date | No | When was the opportunity modified? If blank, current date/time is used |
| gen_time_bombs | Yes | Should time_bombs be built for business rule evaluation |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | The specified opportunity was not found |
| -2 | The supplied account ID could not be found |
| -3 | The specified contact could not be found |
| -4 | The specified territory could not be found |
| -5 | The specified lead source could not be found |
| -6 | The currency specified is not valid |
| -7 | The specified process/life cycle could not be located |
| -8 | The specified user cannot be found |
| -9 | The supplied close date is not a valid date |
| -10 | The probability supplied is not numeric or is not between 0 and 1 |
| -11 | Cannot find the Modify Opp activity string |

#### Examples

 Modify opportunity 33. Specify an account, clear the contact, and leave all other data alone. Generate time bombs. Also, specify a new string field.

**Field version:**

**JavaScript:**

  ret_int = fcsfa_obj.modify_opp("33", "", "AN_CUST2", "CLEAR", "", "", "",

              -1, "", "", "", "", "", "", "", true, "", 0, "", 0,

              "x_str_fld", "Data value", "", "", "", "");

**Visual Basic:**

   Dim ret_int    As Integer
```

Dim opp_id     As String

  ret_int = fcsfa_obj.modify_opp("33", "", "AN_CUST2", "CLEAR", "", "", "", _
              -1, "", "", "", "", "", "", "", True, "", 0, "", 0, _
              "x_str_fld", "Data value", "", "", "", "")

**List version:**

**JavaScript:**

var fld_list  = Server.CreateObject("FCFLCOMPAT.FCLIST");

var type_list = Server.CreateObject("FCFLCOMPAT.FCLIST");

var val_list  = Server.CreateObject("FCFLCOMPAT.FCLIST");

fld_list.AppendItem("x_str_fld");

type_list.AppendItem("String");

val_list.AppendItem("Data value");

   ret_int = fcsfa_obj.modify_opp("33", "", "AN_CUST2", "CLEAR", "", "", "",

              -1, "", "", "", "", "", "", "", true, fld_list,

              type_list, val_list);

**Visual Basic:**

   Dim ret_int    As Integer
```

Dim fld_list   As New FCList

Dim type_list  As New FCList

Dim val_list   As New FCList

fld_list.AppendItem("x_str_fld")

type_list.AppendItem("String")

val_list.AppendItem("Data value")

   ret_int = fcsfa_obj.modify_opp("33", "", "AN_CUST2", "CLEAR", "", "", "", _
              -1, "", "", "", "", "", "", "", True, fld_list, _
              type_list, val_list)

move_action_item
------------------

move_opportunity
----------------

move_quote
----------

```
Public Function move_action_item(ByVal the_id As String, _
                                 ByVal new_wipbin As String) As Integer
```

```
Public Function move_opportunity(ByVal the_id As String, _
                                 ByVal new_wipbin As String) As Integer
```

```
Public Function move_quote(ByVal the_id As String, _
                           ByVal new_wipbin As String) As Integer
```

#### Description

These APIs cause the specified action item, opportunity, or quote to be moved from one WIPBin to another WIPBin. The new WIPBin must belong to the same user as the first WIPBin. The move operation does not change the ownership of the object, nor is an activity log or time bomb generated for the action.

**Note:** These APIs allow you to move a queueable object from one WIPBin to another, even if the object is currently dispatched. Since WIPBins are internal to a user, there really is no reason that you shouldn't be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| the_id | Yes | The object to move |
| new_wipbin | Yes | The WIPBin to move the object to. If left blank, the object is moved to the |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified object |
| -2 | Object is already closed |
| -3 | New WIPBIN doesn't exist, or isn't for the owner |
| -4 | New WIPBIN is same as old - no move needed |

#### Examples

 Move action item number '154' to the default WIPBin for the current owner.

**JavaScript:**

var ret_int = fcsfa.move_action_item("154", "");

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.move_action_item("154", "")

 Move quote number 'Q2' to WIPBin 'Urgent'.

**JavaScript:**

var ret_int = ret_int = fcsfa.move_quote("Q2", "Urgent");

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.move_quote("Q2", "Urgent")