create_update_account
-----------------------

create_update_account_list
----------------------------

Public Function create_update_account(ByVal acct_name As String, _

                                      ByVal desc As String, _

                                      ByVal territory As String, _

                                      ByVal stock As String, _

                                      ByVal fiscal_yr As String, _

                                      ByVal the_type As String, _

                                      ByVal size As String, _

                                      ByVal revenue As String, _

                                      ByVal ownership As String, _

                                      ByVal phone As String, _

                                      ByVal fax As String, _

                                      ByVal web_site As String, _

                                      ByVal user_name As String, _

                                      ByVal create_date As String, _

                                      ByVal gen_time_bombs As Boolean, _

                                      ByVal acct_id As String, _

                                      ByVal int_fld1 As String, _

                                      ByVal int_val1 As Long, -_

                                      ByVal int_fld2 As String, _

                                      ByVal int_val2 As Long, _

                                      ByVal str_fld1 As String, _

                                      ByVal str_val1 As String, _

                                      ByVal str_fld2 As String, _

                                      ByVal str_val2 As String, �_

                                      ByVal date_fld1 As String, _

                                      ByVal date_val1 As String As Integer

Public Function create_update_account_list(ByVal acct_name As String, _

                                           ByVal desc As String, _

                                           ByVal territory As String, _

                                           ByVal stock As String, _

                                           ByVal fiscal_yr As String, _

                                           ByVal the_type As String, _

                                           ByVal size As String, _

                                           ByVal revenue As String, _

                                           ByVal ownership As String, _

                                           ByVal phone As String, _

                                           ByVal fax As String, _

                                           ByVal web_site As String, _

                                           ByVal user_name As String, _

                                           ByVal create_date As String, _

                                           ByVal gen_time_bombs As Boolean, _

                                           ByVal acct_id As String, _

                                           Optional fld_list As Variant, _

                                           Optional type_list As Variant, _

                                           Optional val_list As Variant) _

                                           As Integer

**Description**

These APIs create or update accounts (business orgs). An existing account can be updated by setting the _acct_id_ field. When updating an existing account, setting an argument (for example, fiscal_yr) will cause the field to be updated. To leave the current value in the field, leave the argument blank (""). To clear the value in an argument, use the string "CLEAR".

To create a new account, leave the account field blank. A variety of fields in the account can be optionally set. Four of them, type, size, revenue, and ownership are values from code lists. If the code list values are blank, the default value of the list is used.

#### Parameters
**Parameter Name**                **Required?**             **Description**

acct_name                             No                           Account's name

desc                                        No                           Description

territory                                  No                           Territory of the account

stock                                      No                           Stock symbol for the account

fiscal_yr                                 No                           Fiscal year for the account

the_type                                                No                           Account type list

size                                         No                           Account size list

revenue                                  No                           Account revenue list

ownership                             No                           Account's ownership list

phone                                     No                           Phone number

fax                                           No                           Fax number

web_site                                                No                           URL for the account

user_name                             No                           User name for the account "created by" employee role. If blank, the current

                                                                                user performs the create

create_date                           No                           When the account is created.  If blank, current time is used. Argument is

                                                                                ignored for updates

gen_time_bombs                 Yes                         Should a time bomb record be created for business rule notification?

acct_id                                   Yes                         The account ID (updates only)

int_fld1, int_fld2                   No                           Names of additional fields to write

str_fld1, str_fld2

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. These values are only used if the

str_val1, str_val2                                                 corresponding field name field is filled with a valid field name

date_val1

fld_list                                    Yes                         List of additional field names to write. List must be present, but does not

                                                                                need to have any items in the list

type_list                                                Yes                         List of additional field data types to write. List must be present, but does not

                                                                                need to have any items in the list

val_list                                   Yes                         List of additional field values to write. List must be present, but does not

                                                                                need to have any items in the list

**Returns**

**Value**                **Meaning**

0 No errors

-1                                             Specified User Not Found

-2                                             Specified Territory Not Found

-3                                             Specified Account Type Not Found

-4                                             Specified Account Size Not Found

-5                                             Specified Account Revenue Not Found

-6                                             Specified Account Ownership Not Found

-7                                             Cannot find the activity string for "Create" rank equal to 600

-8                                             Cannot find the specified user's employee record for relating time bomb

-9                                             Cannot find the specified account to update

ret_objid                                Output                   Returns the objid of the account

**Examples**

 Create a new account with a name, description, stock symbol, and year. Put it in the default territory (The World), and set the code lists to interesting values. Set a phone and fax number, and a URL. Have it created by the default user, and set no extra fields.

**Visual Basic:**

Dim ret_int         As Integer

Dim account_objid   As Long

   ret_int = fcinter.create_update_account("New account", _

                                           "Description", "The World", _

                                           "ACCT", "YEAR", "Customer",_

 "10 - 99", _

                                           "$1M - 5M", "Private", _

                                           "333-333-3333", "333-333-3334", _

                                           "www.acct.com",  _

 "", "", true, "", "", 0, "", 0, _

                   "", "", "", "", "", "")

 If ret_int = 0 Then

      account_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.create_update_account("New account",

                                           "Description", "The World",

                                           "ACCT", "YEAR", "Customer",

"10 - 99", "$1M - 5M", "Private",

                                           "333-333-3333", "333-333-3334",

                                           "www.acct.com",

 "", "", true, "", "", 0, "", 0,

                   "", "", "", "", "", "");

 if (ret_int == 0){ var account_objid = fcinter.ret_objid; }

 Do the same with the list version:

**Visual Basic:**

Dim ret_int       As Integer

Dim account_objid As Long

   Dim fld_list      As List

Dim type_list     As List

Dim val_list      As List

   ret_int = fcinter.create_update_account_list("New account", _

                                               "Description", _

                                               "The World", "ACCT", "YEAR", _

                                               "Customer", "10 - 99", _

                                               "$1M - 5M", "Private", _

                                               "333-333-3333", _

                                               "333-333-3334", "www.acct.com", _

                                               "", "", true, "", _

                                               fld_list, type_list, val_list)

 If ret_int = 0 Then

      account_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.create_update_account_list("New account",

                                               "Description",

                                               "The World", "ACCT", "YEAR",

                                               "Customer", "10 - 99",

                                               "$1M - 5M", "Private",

                                               "333-333-3333",

                                               "333-333-3334", "www.acct.com",

                                               "", "", true, "", 

                                               fld_list, type_list, val_list);

 if (ret_int == 0){ var account_objid = fcinter.ret_objid; }

 Modify account "AN_CUST44". Set a few fields. Leave most of them blank, and clear the territory.

**Visual Basic:**

Dim ret_int   As Integer

Dim acct_id   As String

   acct_id = "AN_CUST44"

   ret_int = fcinter.create_update_account("", "", "CLEAR", "IBM", "", _

                                           "", "", "", "", _

                                           "", "", "", "", "", true, acct_id, _

                                           "", 0, "", 0, "", "", _

                                                                                               "", "", "", "")

**Javascript:**

var acct_id = "AN_CUST44";

var ret_int = fcinter.create_update_account("", "", "CLEAR", "IBM", "",

                                           "", "", "", "",

                                           "", "", "", "", "", true, acct_id,

                                           "", 0, "", 0, "", "",

                                                                                               "", "", "", "");