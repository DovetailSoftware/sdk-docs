create_opp
----------

create_opp_list
-----------------

Public Function create_opp(ByVal opp_name As String, _
                           ByVal acct_id As String, _
                           ByVal con_first As String, _
                           ByVal con_last As String, _
                           ByVal con_phone As String, _
                           ByVal terr_name As String, _
                           ByVal amt As Currency, _
                           ByVal close_date As String, _
                           ByVal sales_stage As String, _
                           ByVal lead_source As String, _
                           ByVal the_currency As String, _
                           ByVal prob As String, _
                           ByVal process As String, _
                           ByVal user_name As String, _
                           ByVal create_date As String, _
                           ByVal gen_time_bombs As Boolean, _
                           ByVal int_fld1 As String, _
                           ByVal int_val1 As Long, _
                           ByVal int_fld2 As String, _
                           ByVal int_val2 As Long, _
                           ByVal str_fld1 As String, _
                           ByVal str_val1 As    String, _
                           ByVal str_fld2 As String, _
                           ByVal str_val2 As String, _
                           ByVal date_fld1 As String, _
                           ByVal date_val1 As String) As Integer

Public Function create_opp_list(ByVal opp_name As String, _
                                ByVal acct_id As String, _
                                ByVal con_first As String, _
                                ByVal con_last As String, _
                                ByVal con_phone As String, _
                                ByVal terr_name As String, _
                                ByVal amt As Currency, _
                                ByVal close_date As String, _
                                ByVal sales_stage As String, _
                                ByVal lead_source As String, _
                                ByVal the_currency As String, _
                                ByVal prob As String, _
                                ByVal process As String, _
                                ByVal user_name As String, _
                                ByVal create_date As String, _
                                ByVal gen_time_bombs As Boolean, _
                                Optional fld_list As Variant, _
                                Optional type_list As Variant, _
                                Optional val_list As Variant) As Integer

**Description**

These APIs are used to create opportunities. The opportunity name must be specified. All other data is optional. The account, contact, territory, stage, source, currency, and process may be specified. You may generate time bombs for business rules, or not. Also, an amount and a probability may be specified.

The ID of the newly-created opportunity will be returned in _fcsfa.ret_id_num_. The objid of the opportunity will be returned in _fcsfa.ret_objid_.  
  

#### Parameters
**Parameter Name**                **Required?**             **Description**

opp_name                             Yes                         Name of the opportunity

acct_id                                   No                           ID of the related account

con_first, con_last,              No                           Name and phone number of related contact. If a contact is to be specified, all

con_phone                                                            three must be given

terr_name                              No                           Name of the territory. If blank, the default territory is used

amt                                          No                           Amount of the opportunity. Must be numeric

close_date                             No                           Close date of the opportunity. If  blank, the current date/time are used

sales_stage                           Yes                         Sales stage for the opportunity.

lead_source                          No                           Lead source for the opportunity. If blank, default source is used

the_currency                        No                           Currency for the opportunity. If blank, default currency is used.

prob                                        No                           Probability of opportunity close. Must be numeric, and between 0 and 1

process                                  No                           Process for the opportunity. If blank, default process is used

user_name                             No                           Creator of the opportunity. If blank, the current user is used

create_date                           No                           When was the opportunity created? If blank, current date/time is used

gen_time_bombs                 Yes                         Should time_bombs be built for business rule evaluation

int_fld1, int_fld2                   No                           Names of additional fields to write

str_fld1, str_fld2

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. These values are only used if the

str_val1, str_val2                                                 corresponding field name field is filled with a valid field name

date_val1

fld_list                                    Yes                         List of additional field names to write. List must be present, but does not

                                                                                need to have any items in the list

type_list                                                Yes                         List of additional field data types to write. List must be present, but does not

                                                                                need to have any items in the list

val_list                                   Yes                         List of additional field values to write. List must be present, but does not

                                                                                need to have any items in the list

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             No opportunity name was supplied

-2                                             The supplied account ID could not be found

-3                                             The specified contact could not be found

-4                                             The specified territory could not be found

-5                                             The specified lead source could not be found

-6                                             The sales stage supplied is not valid

-7                                             The currency specified is not valid

-8                                             The specified process/life cycle could not be located

-9                                             The probability supplied is not numeric or is not between 0 and 1

-10                                           Cannot find the specified user

-11                                           The specified cycle stage is not valid

-12                                           Cannot find the Create opportunity activity string

-13                                           Cannot find the Won activity string

-14                                           Cannot find the Lost activity string

**Examples**

 Create a new opportunity. Specify an account, a contact, a territory, an amount (123.33), a close date, the stage, the source, the currency, a probability of .5, a process of 'default'. Use the current user name and time. Generate time bombs. Also, specify a new string field.

**Field version:**

**       JavaScript:**

   var ret_int = fcsfa.create_opp("My opp", "AN_CUST1", "a", "b", "c",

                        "The World", "123.33", "1/1/00", "Lost", "Default",

                        "US Dollar", ".5", "default", "", "", true, "", 0, "", 0,

                        "x_objective", "foobar", "", "", "", "");

**Visual Basic:**

   Dim ret_int    As Integer

Dim opp_id     As String

   ret_int = fcsfa.create_opp("My opp", "AN_CUST1", "a", "b", "c", "The World", _
                        "123.33", "1/1/00", "Lost", "Default", "US Dollar", _
                        ".5", "default", "", "", True, "", 0, "", 0, _
                        "x_objective", "foobar", "", "", "", "")

**List version:**

**       JavaScript:**

var fld_list  = Server.CreateObject("FCFLCOMPAT.FCLIST");

var type_list = Server.CreateObject("FCFLCOMPAT.FCLIST");

var val_list  = Server.CreateObject("FCFLCOMPAT.FCLIST");

fld_list.AppendItem("x_objective");

type_list.AppendItem("String");

val_list.AppendItem("foobar");

   var ret_int = fcsfa.create_opp("My opp", "AN_CUST1", "a", "b", "c",

                        "The World", "123.33", "1/1/00", "Lost", "Default",

                        "US Dollar", ".5", "default", "", "", true, fld_list

                        type_list, val_list);

**Visual Basic:**

   Dim ret_int    As Integer

Dim fld_list   As New FCList

Dim type_list  As New FCList

Dim val_list   As New FCList

fld_list.AppendItem("x_objective")

type_list.AppendItem("String")

val_list.AppendItem("foobar")

   ret_int = fcsfa.create_opp("My opp", "AN_CUST1", "a", "b", "c", "The World", _
                        "123.33", "1/1/00", "Lost", "Default", "US Dollar", _
            ".5", "default", "", "", True, fld_list, _
            type_list, val_list)