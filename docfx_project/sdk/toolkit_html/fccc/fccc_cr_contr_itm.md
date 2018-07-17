cr_contr_itm
---

cr_contr_itm_list
---

Public Function cr_contr_itm(ByVal contract_id As String, _
                ByVal user_name As String, ByVal create_date As String, _
                ByVal start_date As String, ByVal end_date As String, _
                ByVal part_num As String, ByVal domain As String, _
                ByVal rev As String, ByVal quantity As Long, _
                ByVal price_schedule As String, ByVal oride_price As String, _
                ByVal units_used As Double, ByVal serial_num As String, _
                ByVal is_taxable As Boolean, ByVal install_it As Boolean, _
                ByVal comments As String, ByVal quoted_site As String, _
                ByVal serviced_at_site As String, ByVal parent_objid As Long, _
                ByVal po_num As String, ByVal int_fld1 As String, _
                ByVal int_val1 As Long, ByVal int_fld2 As String, _
                ByVal int_val2 As Long, ByVal str_fld1 As String, _
                ByVal str_val1 As String, ByVal str_fld2 As String, _
                ByVal str_val2 As String, ByVal date_fld1 As String, _
                ByVal date_val1 As String, ByVal item_objid As Long) As Integer

Public Function cr_contr_itm_list(ByVal contract_id As String, _
                ByVal user_name As String, ByVal create_date As String, _
                ByVal start_date As String, ByVal end_date As String, _
                ByVal part_num As String, ByVal domain As String, _
                ByVal rev As String, ByVal quantity As Long, _
                ByVal price_schedule As String, ByVal oride_price As String, _
                ByVal units_used As Double, ByVal serial_num As String, _
                ByVal is_taxable As Boolean, ByVal install_it As Boolean, _
                ByVal comments As String, ByVal quoted_site As String, _
                ByVal serviced_at_site As String, ByVal parent_objid As Long, _
                ByVal po_num As String, ByVal item_objid As Long, _
                Optional fld_list As Variant, Optional type_list As Variant, _
                Optional val_list As Variant) As Integer

**Description**

These APIs are used to create quote/contract line items. They require that a valid quote already exist, and that it have at least one valid schedule. In addition, the supplied part/revision must have a price defined for it in the schedule, or you must provide an override.

The API will create a line item, add it to the proper contract/quote, and adjust all of the totals. In addition, the schedule adjustments (if any) for the schedule of the line item will be recalculated, given the new schedule totals.

You must specify a contract id and a price schedule, and a quantity of items in the line. You must also specify the part/revision/domain of the part to quote. All other arguments can be left blank. You may specify the user who created the line item, as well as the create date. You may also specify a start/end date for the line item.

You may specify an override price (per unit price). If this is blank, then the price from the price schedule is used. You may specify how many units are used in the line. The units available is calcularted from this number.

A purchase order number may be specified. If it is, it must be a valid purchase order for the contract schedule specified for this line item.

If it is serialized part (quantity 1), the serial number may be specified. You may also specify the taxable state, and if the part is to be auto-installed. If it is, you must supply the site that it will be installed at. You may also specify the serviced at site, as well as additional fields.

If  you wish to make this a parent line item, put -1 in the parent_objid argument. Else, put the objid of the parent line item in the field. It will be made a child of the parent line item.

The API does not do a few other items in the base GUI function. By and large, they are expected to be supplied with other API calls. For example, line item adjustments are not part of this API. If they are required, the line should be created, and then the adjustment should be applied. Parent/child line items are not provided for in the default API. Also, proration (ClearContracts) is currently hard-coded.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

contract_id                            Yes                         The quote/contract for the line item

user_name                             No                           The user who created the line item. If left blank, the current user performs

the create.

create_date                           No                           Line item creation date. If left blank, current date/time is used

start_date                              No                           Start date/time of the line item. If blank, create_date is used

end_date                               No                           End date/time of the line item. If blank, create_date + 1 year is used

part_num                               Yes                         Part number of part to quote

domain                                   Yes                         Domain of part to quote

rev                                          Yes                         Revision of part to quote

quantity                                 Yes                         Number of units in line

price_schedule                     Yes                         Name of the schedule from the quote to put the line on

oride_price                            No                           If supplied, this is the per-unit price. If blank, price is taken from the price

schedule

units_used                            No                           If supplied, this is the number of units used. If = 0 (default), then all units are

initially available

serial_num                             No                           For serialized parts, the serial number to quote

is_taxable                              Yes                         Is the line taxable?

install_it                                 Yes                         Should the part be marked for auto-install?

comments                              No                           Comments about the line item

quoted_site                           No                           Site ID of the site for auto-install. If auto-install = True, this must be

supplied

serviced_at_site                   No                           The site ID of the site servicing the line

parent_objid                         Yes                         The objid of the parent line item. If set to -1 then this is a parent line item

po_num                                 No                           Purchase order number for this line item. Must be a valid purchase order number for the schedule specified above

int_fld1, int_fld2                   No                           Names of additional fields to write

str_fld1, str_fld2

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. These values are only used if the

str_val1, str_val2                                                 corresponding field name field is filled with a valid field name

date_val1

fld_list                                    Yes                         List of additional field names to write. List must be present, but does not

                                                                                need to have any items in the list

type_list                                                Yes                         List of additional field data types to write. List must be present, but does not need to have any items in the list

val_list                                   Yes                         List of additional field values to write. List must be present, but does not need to have any items in the list

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Quantity supplied is < 1

-2                                             End date is earlier than start date

-3                                             The specified quote/contract was not found

-4                                             Could not find the specified user

-5                                             The revision is not found for the specified part/domain

-6                                             The specified schedule is not found for the contract/quote

-7                                             The specified quoted_at site was not found

-8                                             The specified serviced_at site was not found

-9                                             The specified part/revision is not found on the price schedule

-10                                           Serial number supplied with a quantity > 1

-13                                           The specified part is quantity tracked, and a serial number was supplied

-14                                           The line was marked with auto-install, and no site was supplied

-15                                           The override price given was not numeric

-16                                           Cannot locate the specified site_part

-17                                           The specified parent line item does not exist

-18                                           The specified parent line item is not actually a parent. It is a child line item

-19                                           The specified product is priced as a percentage of parent, but no parent was given

-20                                           The specified product is priced as a percentage of child - not supported for this API

-21                                           The specified purchase order is not found for the contract schedule.

-22                                           The mod_level is not found for the parent contract item.

ret_objid                                Output                   Returns the objid of the newly created contract item

**Examples  **

Create a new line item for quote '2'.  A total of 3 Notebooks are quoted for the default schedule. Add a comment, and relate to purchase order '222'.

**Field version:**

**JavaScript:**

   var ret_int = fc_cc.cr_contr_itm( "2", "", "", "", "", "Notebook", _
                            "Quantity", "",3, "Default Schedule", "", _
                             0, "", True, False, "A Comment", "", "", _
                             -1, "222", "", 0, "", 0, "", "", "", "", _
                             "", "")

**Visual Basic:**

   Dim ret_int    As Integer
   Dim item_objid As Long

   ret_int = fc_cc.cr_contr_itm( "2", "", "", "", "", "Notebook", _
                            "Quantity", "",3, "Default Schedule", "", _
                             0, "", True, False, "A Comment", "", "", _
                             -1, "222", "", 0, "", 0, "", "", "", "", _
                             "", "")

   If ret_int = 0 Then
     item_objid = fc_cc.ret_objid
   End If

**List version:**

**JavaScript:**

var fld_list  = Server.CreateObject("FCFLCompat.FCList");

var type_list = Server.CreateObject("FCFLCompat.FCList");
var val_list  = Server.CreateObject("FCFLCompat.FCList");
var ret_int;

fld_list.AppendItem("x_close_int1");
type_list.AppendItem("Long");
val_list.AppendItem("1");

fld_list.AppendItem("x_close_int2");
type_list.AppendItem("Long");
val_list.AppendItem("456");

fld_list.AppendItem("x_summary2");
type_list.AppendItem("String");
val_list.AppendItem("More text");

fld_list.AppendItem("x_other_date");
type_list.AppendItem("Date");
val_list.AppendItem("1/1/99");

ret_int = fc_cc.cr_contr_itm("2", "", "", "", "", "Notebook", _
                             "Quantity", "", 3, "Default Schedule", "", _
                             0, "", True, False, "A Comment", "", -1, _
                             "222", fld_list, type_list, val_list)

**Visual Basic:**

 Dim ret_int         As Integer
 Dim item_objid      As Long
 Dim fld_list         As New FCFLCOMPAT.FCLIST
 Dim type_list        As New FCFLCOMPAT.FCLIST
 Dim val_list         As New FCFLCOMPAT.FCLIST

 fld_list.ItemType = "String"
 type_list.ItemType = "String"
 val_list.ItemType = "String"

 ret_int = fc_cc.cr_contr_itm("2", "", "", "", "", "Notebook", _
                              "Quantity", "", 3, "Default Schedule", "", _
                              0, "", True, False, "A Comment", "", -1, _
                              "222", fld_list, type_list, val_list)

 If ret_int = 0 Then
   item_objid = fc_cc.ret_objid
 End If

Do the same as above, but have "sa" log it on November 1, 2001. Set a start and end date. Override the price schedule to 1.01 per unit, and use one of the units. Do not have it taxable, but auto-install at site 23. Set site 24 as the serviced at site. Set some other fields, and make this a child line item.

**Field version:**

   Dim ret_int    As Integer
   Dim item_objid As Long

   ret_int = fc_cc.cr_contr_itm( "2", "sa", "11/1/2001", "12/1/2001", _
                            "12/31/2001", "Notebook", "Quantity", "", 3, _
                            "Default Schedule", "1.01", 1, "",  False, _
                             True, "A Comment", "23", "24", 268435458, _
                            "", "x_int1", 434, "", 0, "x_a_string", _
                            "string value!!!", "x_another_string", _
                            "other value!!!", "x_date1", "2/2/2001")

   If ret_int = 0 Then
     item_objid = fc_cc.ret_objid
   End If

**List version:**

Dim ret_int      As Integer
Dim log_objid    As Long
Dim fld_list    As New FCFLCOMPAT.FCLIST
Dim type_list   As New FCFLCOMPAT.FCLIST
Dim val_list    As New FCFLCOMPAT.FCLIST

fld_list.AppendItem "x_int1"
type_list.AppendItem "Long"
val_list.AppendItem Trim(Str$(434))

fld_list.AppendItem "x_a_string"
type_list.AppendItem "String"
val_list.AppendItem "string value!!!"

fld_list.AppendItem "x_another_string"
type_list.AppendItem "String"
val_list.AppendItem "other value!!!"

fld_list.AppendItem "x_date1"
type_list.AppendItem "Date"
val_list.AppendItem "2/2/2001"

ret_int = fc_cc.cr_contr_itm( "2", "sa", "11/1/2001", _
                            "12/1/2001", "12/31/2001", "Notebook", _
                            "Quantity", "", 3, "Default Schedule", _
                            "1.01", 1, "", False, True, "A Comment", _
                            "23", "24", 268435458, "", _
                             fld_list, type_list, val_list)

If ret_int = 0 Then
  item_objid = fc_cc.ret_objid
End If