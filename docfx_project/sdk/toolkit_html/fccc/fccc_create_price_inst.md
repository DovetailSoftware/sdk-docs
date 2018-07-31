create_price_inst
-------------------

create_price_inst _list
-------------------------

CreatePriceInst
---------------

CreatePriceInstList
-------------------

Public Function create_price_inst(ByVal part_num As String, _
                ByVal mod_level As String, ByVal domain As String, _
                ByVal support_prog As String, ByVal price_prog As String, _
                ByVal price_type As Integer, ByVal priced_qty As Long, _
                ByVal price As Double, ByVal eff_date As String, _
                ByVal exp_date As String, ByVal int_fld1 As String, _
                ByVal int_val1 As Long, ByVal int_fld2 As String, _
                ByVal int_val2 As Long, ByVal str_fld1 As String, _
                ByVal str_val1 As String, ByVal str_fld2 As String, _
                ByVal str_val2 As String, ByVal date_fld1 As String, _
                ByVal date_val1 As String) As Integer

Public Function create_price_inst_list(ByVal part_num As String, _
             ByVal mod_level As String, ByVal domain As String, _
             ByVal support_prog As String, ByVal price_prog As String, _
             ByVal price_type As Long, ByVal price_qty As Long, _
             ByVal price As Double, ByVal eff_date As String, _
             ByVal exp_date As String, Optional fld_list As Variant, _
             Optional type_list As Variant, Optional val_list As Variant) As Integer

**Description**

These APIs are used to create new price instances for support programs. They require a valid support program, price schedule, price type and price quantity. Everything else is optional. You may specify the part for product based support programs, or leave it blank when creating price instances for either site or independent support programs.  If you do specify a part, you must include its domain and revision (mod level).

When pricing quantities, if you leave the price quantity empty, it will default to a zero price quantity.

**NOTE:** _CreatePriceInst_ and _CreatePriceInst_ are the same methods as _create_price_inst_ and _create_price_inst _list_ respectively.  They are alternate entry points to preserve backwards compatibility to **Clear Basic API Toolkit for Clear Contracts** naming.

#### Parameters
**Parameter Name**                **Required?**             **Description**

  part_num                             No                           The part number of the part being priced

mod_level                              No                           The mod level of the part being priced

domain                                  No                           The domain of the part being priced

support_prog                       Yes                         The support program for which this price instance is being created

price_prog                             Yes                         The price schedule for this price instance

price_type                             Yes                         The price type for the price instance

0=fixed

1=percent of product

2=percent of option list (not supported at this time)

priced_qty                             Yes                         The number of units being priced

price                                       No                           The total price for the units of this price instance

eff_date                                 No                           The start date of this price instance

exp_date                                No                           The expiration date of this price instance

fld_list                                    No                           List of fields to set

type_list                                                No                           List of data types for each field in fld_list

val_list                                   No                           List of values to set for each field in fld_list

int_fld1, int_fld2                   No                           Names of additional fields to write

str_fld1, str_fld2

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. These values are only used if the

str_val1, str_val2                                                 corresponding field name field is filled with a valid field name

date_val1

**Returns**

| Value |  Meaning |
|!--- |!--- |
| 0 | No Errors |
| -1 | Support program not found |
| -2 | Price schedule not found |
| -3 | Mod level not found |
| -4 | Price type not found |
| -5 | Mod level not found for support program |
| -6 | Priced quantity required, not supplied |
| -7 | Effective date comes before expiration date |
| -8 | Price instance expiration date comes after the price schedule expiration date |
| -9 | The dates supplied would cause an overlap in price instances |
| -10 | Priced quantity already exists |
| -11 | The category for the support program does not exist |
| -12 | Cannot price since reference part number cannot be found |
| -13 | Price type is not yet supported |
| ret_objid | Output<br/><br/>Returns the objid of the newly created price instance |

**Examples**

Create a new price instance for product 'Kudzu' software under the 'Kudzu Phone Support' support program.  Associate this price instance with the 'US Std Price List'.  Use a fixed price type with 50 units costing 100 dollars.

**Field version:**

**JavaScript:**

var ret_int = fc_cc.create_price_inst( "Kudzu", "2000", "Software Part", _
                                    "Kudzu Phone Support", "US Std Price List", _
                                    0, 50, 100, "","", "", 0, "", 0, "", _
                                    "", "", "", "", "")

**Visual Basic:**

   Dim ret_int         As Integer

   Dim objid           As Long

ret_int = fc_cc.create_price_inst( "Kudzu", "2000", "Software Part", _
                                    "Kudzu Phone Support", "US Std Price List", _
                                    0, 50, 100, "","", "", 0, "", 0, "", _
                                    "", "", "", "", "")

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

ret_int = fc_cc.create_price_inst_list("Kudzu", "2000", "Software Part", _
                                         "Kudzu Phone Support", "US Std Price List", 0, _
                                         50, 100, "", "", fld_list, type_list, val_list)

 **Visual Basic:**

   Dim ret_int         As Integer

   Dim objid           As Long

 Dim fld_list         As New FCFLCOMPAT.FCLIST

 Dim type_list        As New FCFLCOMPAT.FCLIST

 Dim val_list         As New FCFLCOMPAT.FCLIST

 fld_list.ItemType = "String"

 type_list.ItemType = "String"

 val_list.ItemType = "String"

ret_int = fc_cc.create_price_inst_list("Kudzu", "2000", "Software Part", _
                                         "Kudzu Phone Support", "US Std Price List", 0, _
                                         50, 100, "", "", fld_list, type_list, val_list)