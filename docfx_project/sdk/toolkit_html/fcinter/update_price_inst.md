update_price_inst
-------------------

Public Function update_price_inst(ByVal part_num As String, _
                ByVal domain As String, _
                ByVal mod_level As String, _
                ByVal price_prog As String, _
                ByVal priced_qty As Long, _
                ByVal price As String, _
                ByVal the_date As String) As Integer   

**Description**

This API updates a price for an existing price instance. You must supply the part, revision, price program and quantity. Also, you must supply a date (any date) that occurs in the price instance. If that price instance is found, the price for it will be updated.

#### Parameters
**Parameter Name**                **Required?**             **Description**

part_num                               Yes                         Part number to update price

domain                                   Yes                         Domain of the part

mod_level                              Yes                         Revision to update price

price_prog                             Yes                         Name of the price program for the price

priced_qty                             Yes                         How many units in the price instance to be updated. Usually, this is = 1

price                                       Yes                         What is the new price of the part?

the_date                                                Yes                         Date in the price range. Any date in the price instance range can be used

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Part number was not found

-2                                             Revision for the part was not found

-3                                             Could not find the price program

-4                                             The price instance cannot be found

-5                                             The quantity supplied is < 1

-6                                             The price instance is found, but not for the supplied quantity

**Examples**

 Update the price for MS Word in the "Spring" price list for March 31 to $5.55.

**Visual Basic:**

Dim ret_int       As Integer

ret_int = fcinter.update_price_inst("MS Word", "Product", "", "Spring", _
                                    1, "5.55", "3/31/2000")

**Javascript:**

var ret_int = fcinter.update_price_inst("MS Word", "Product", "",

                                    "Spring", 1, "5.55", "3/31/2000");