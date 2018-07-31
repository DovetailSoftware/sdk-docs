create_price_inst
-------------------

Public Function create_price_inst(ByVal part_num As String, _
                                  ByVal domain As String, _
                                  ByVal mod_level As String, _
                                  ByVal price_prog As String, _
                                  ByVal price_type As Integer, _
                                  ByVal priced_qty As Long, _
                                  ByVal price As String, _
                                  ByVal start_date As String, _
                                  ByVal end_date As String) As Integer

**Description**

This API creates a price instance object in Clarify. They are currently only enabled for simple price instances (not child/parent pricing, only fixed pricing). You must specify the part/domain/revision of the part to price, and the price program (schedule). You must also specify the quantity to be priced, as well as the start and end date of the price.

Note that standard Clarify checks for dates apply for these price schedules - you may not have two prices (in the same schedule for the same part and quantity) overlap. And, you cannot have the price's dates extend before or after the dates for the price program.

This API can also be used to create price instances for standard costs. Just use the predefined standard cost price program.

The non-business rule version of the API returns the objid of the created price instance record.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| part_num | Yes | Part number to price |
| domain | Yes | Domain of the part |
| mod_level | Yes | Revision to price |
| price_prog | Yes | Name of the price program |
| price_type | Yes | What kind of price. 0 = Fixed price, 1 = Percent of product list, 2 = Option price. Currently, only 0, 1 supported |
| priced_qty | Yes | How many units in the price instance. Usually, this is = 1 |
| price | Yes | What is the price of the part? |
| start_date | No | Start date of the price. If blank, start date of the program is used |
| end_date | No | End date of the price. If blank, end date of the program is used |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Part number was not found

-2                                             Revision for the part was not found

-3                                             Could not find the price program

-4                                             The price type is not valid

-5                                             The quantity supplied is < 1

-6                                             The price start date is earlier than the program start date

-7                                             The price end date is after the program end date

-8                                             The price start date is later than the price end date

-9                                             This price instance has dates that overlap another price instance for this part in this price

program

-10                                           The supplied price type is not yet supported

-11                                           Could not open database for SQL query |
| ret_objid | Output | Returns the objid of the new price instance

**Examples**

 Add a price for quantity 1 of  "MS Word" to the "Spring" price list. Give dates and a price.

**Visual Basic:**

Dim ret_int          As Integer

Dim price_inst_objid As Long

ret_int = fcinter.create_price_inst("MS Word", "Product",_
                                    "","Spring", _
                                    0, 1, "45.54","3/2/2000", _
                                   "6/1/2000")

 If ret_int = 0 Then

      price_inst_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.create_price_inst("MS Word", "Product",

                                    "","Spring", 0, 1,

                                    "45.54","3/2/2000", "6/1/2000");

 if (ret_int == 0){ var price_inst_objid = fcinter.ret_objid; }

 Price a part for quantity 2 in the standard price list, using the dates of the price program.

**Visual Basic:**

Dim ret_int          As Integer

Dim price_inst_objid As Long

ret_int = fcinter.create_price_inst("MS Word", "Product", "",_
                                    "US Std Price List", _
                                    0, 2, "99.99", "", "")

 If ret_int = 0 Then

      price_inst_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.create_price_inst("MS Word", "Product", "",

                                    "US Std Price List",

                                    0, 2, "99.99", "", "");

 if (ret_int == 0){ var price_inst_objid = fcinter.ret_objid; }