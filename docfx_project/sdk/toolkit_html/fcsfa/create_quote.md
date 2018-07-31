create_quote
------------

create_quote_list
-------------------

Public Function create_quote_list(ByVal quote_title As String, _
                                  ByVal account_id As String, _
                                  ByVal site_id As String, _
                                  ByVal opp_id As String, _
                                  ByVal first As String, _
                                  ByVal last As String, _
                                  ByVal phone As String, _
                                  ByVal status As String, _
                                  ByVal bill_to_site As String, _
                                  ByVal ship_to_site As String, _
                                  ByVal the_curr As String, _
                                  ByVal price_prog As String, _
                                  ByVal queue As String, _
                                  ByVal admin_user As String, _
                                  ByVal create_date As String, _
                                  ByVal user_name As String, _
                                  ByVal quote_len As Integer, _
                                  ByVal gen_time_bombs As Boolean, _
                                  ByVal int_fld1 As String, _
                                  ByVal int_val1 As Long, _
                                  ByVal int_fld2 As String, _
                                  ByVal int_val2 As Long, _
                                  ByVal str_fld1 As String, _
                                  ByVal str_val1 As    String, _
                                  ByVal str_fld2 As String, _
                                  ByVal str_val2 As String,
                                  ByVal date_fld1 As String, _
                                  ByVal date_val1 As String) As Integer

Public Function create_quote_list(ByVal quote_title As String, _
                                  ByVal account_id As String, _
                                  ByVal site_id As String, _
                                  ByVal opp_id As String, _
                                  ByVal first As String, _
                                  ByVal last As String, _
                                  ByVal phone As String, _
                                  ByVal status As String, _
                                  ByVal bill_to_site As String, _
                                  ByVal ship_to_site As String, _
                                  ByVal the_curr As String, _
                                  ByVal price_prog As String, _
                                  ByVal queue As String, _
                                  ByVal admin_user As String, _
                                  ByVal create_date As String, _
                                  ByVal user_name As String, _
                                  ByVal quote_len As Integer, _
                                  ByVal gen_time_bombs As Boolean, _
                                  Optional fld_list As Variant, _
                                  Optional type_list As Variant, _
                                  Optional val_list As Variant) As Integer

**Description**

These APIs are used to create quotes. They require that a valid title be supplied. Most of the other data (including account, site, contact) is optional. These APIs require that a valid opportunity also exist (you can create it in the GUI, or use the FCS API). This differs a little from the Clarify GUI, which creates the opportunity as part of the create quote. You can still do that with the APIs, but there is extra flexibility provided.

You may also specify a queue to dispatch the quote to. If you do, the quote will be created, and then dispatched. If not, the quote will be created, and left in the user's default WIPBIN. The APIs allow for extra fields to be set on the _contract_ table, and you have the option of creating time bombs (for business rules), or not.

As part of creating the contract record for the quote, these APIs also create the default contract schedule and relates the schedule to the contract.

You may set additional fields on either the contract or contr_schedule table. To set a field on table_contract, just use the field name. To set a field on the contr_schedule table, place "sched:" before the name of the field. For example, to set the "x_foo" field on the contr_schedule table, you would use a field name of "sched:x_foo".

The ID of the newly-created quote will be returned in _fcsfa.ret_id_num_. The objid of the quote will be returned in _fcsfa.ret_objid_. The objid of the newly-created contr_schedule will be returned in _fcsfa.ret_objid2_.  
  

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| quote_title | Yes | The title of the quote |
| account_id | No | ID of the related account for "sell-to" |
| site_id | No | ID number of the related site |
| opp_id | No | ID of the related opportunity first,last, phone | No | First name, last name and phone of the related contact. If you are specifying a contact, all are required |
| status | No | Status for the Quote (from SFA Quote condition). If no status is supplied, the default status is used |
| bill_to_site | No | Bill-to site for the default schedule |
| ship_to_site | No | Ship-to site for the default schedule |
| the_curr | No | Currency to use for quote. If blank, the system default currency is used |
| price_prog | No | Price program for the quote. If blank, use "US Std Price List" program |
| queue | No | Queue to dispatch the quote to. If blank, no dispatch takes place |
| admin_user | No | Login name of the administrator. If blank, current user is used |
| create_date | No | When was the quote created? If blank, current date/time is used |
| user_name | No | Creator of the quote. If blank, the current user is used |
| quote_len | Yes | How long is quote good for (in days). If set to 0, the default (30) is used |
| gen_time_bombs | Yes | Should time_bombs be built for business rule evaluation |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             No title was supplied

-2                                             Could not locate the supplied account

-3                                             The specified site could not be found

-4                                             The specified contact could not be found

-5                                             The bill-to site could not be found

-6                                             The ship-to site could not be found

-7                                             The currency specified is not valid

-8                                             The specified queue could not be located

-9                                             The queue specified does not allow quotes to be dispatched to it

-10                                           Cannot find the specified administrator

-11                                           Cannot find the specified user

-12                                           The status provided is not valid for the Quote's condition

-13                                           The specified opportunity was not found

-14                                           The default price program (US Standard Prices) could not be found

-15                                           Cannot find the Create ClearContracts Quote Activity string

-16                                           Cannot find the Create SFA Quote Activity string

-17                                           Cannot find the Dispatch Activity string

**Examples**

 Create a new quote good for 60 days. Relate it to account "AN_CUST1", site "1", and opportunity "4". Relate it to a contact, and set the status to "Need Approval". Relate the bill-to and ship-to sites to "4" and "6". Use the default currency and do not dispatch to a queue. Set the administrator to "Fred", and the user to "Marty". Set an extra string field on the contract, and one on the contr_schedule.

**Field version:**

**JavaScript:**

var ret_int = fcsfa.create_quote("Title", "AN_CUST1", "1", "4",

                       "Test", "Customer", "222-2222", "Need Approval", "4",

                       "6", "", "", "fred", "", "marty", 60, true,

                       "", 0, "", 0, "x_fld", "The value", "sched:x_sched_field",

                       "Field on contract schedule", "", "");

**Visual Basic:**

   Dim ret_int    As Integer

ret_int = fcsfa.create_quote("Title", "AN_CUST1", "1", "4", _
                   "Test", "Customer", "222-2222", "Need Approval", "4", _
                   "6", "", "", "fred", "", "marty", 60, True, _
                   "", 0, "", 0, "x_fld", "The value", "sched:x_sched_field",

                   "Field on contract schedule", "", "")

**List version:**

**JavaScript:**

var fld_list  = Server.CreateObject("FCFLCOMPAT.FCLIST");

var type_list = Server.CreateObject("FCFLCOMPAT.FCLIST");

var val_list  = Server.CreateObject("FCFLCOMPAT.FCLIST");

fld_list.AppendItem("x_fld");

type_list.AppendItem("String");

val_list.AppendItem("The value");

fld_list.AppendItem("sched:x_sched_field");

type_list.AppendItem("String");

val_list.AppendItem("Field on contract schedule");

var ret_int = fcsfa.create_quote("Title", "AN_CUST1", "1", "4",

                       "Test", "Customer", "222-2222", "Need Approval", "4",

                       "6", "", "", "fred", "", "marty", 60, true,

                        type_list, val_list);

**Visual Basic:**

   Dim ret_int    As Integer

Dim fld_list   As New FCList

Dim type_list  As New FCList

Dim val_list   As New FCList

fld_list.AppendItem("x_objective")

type_list.AppendItem("String")

val_list.AppendItem("foobar")

fld_list.AppendItem("sched:x_sched_field")

type_list.AppendItem("String")

val_list.AppendItem("Field on contract schedule")

ret_int = fcsfa.create_quote("Title", "AN_CUST1", "1", "4", _
                   "Test", "Customer", "222-2222", "Need Approval", "4", _
                   "6", "", "", "fred", "", "marty", 60, True, _
       type_list, val_list)