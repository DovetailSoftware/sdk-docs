part_transfer
-------------

Public Function part_transfer(ByVal part_num As String, _
                  ByVal mod_level As String, ByVal domain_name As String, _
                  ByVal quantity_num As Long, ByVal serial_num As String, _
                  ByVal from_loc As String, ByVal from_bin As String, _
                  ByVal from_cont As String, ByVal from_good As Boolean, _
                  ByVal to_loc As String, ByVal to_bin As String, _
                  ByVal to_cont As String, ByVal to_good As Boolean, _
                  ByVal user_name As String, ByVal trans_date As String, _
                  ByVal ref_id As String, ByVal note_str As String, _
                  ByVal gen_time_bombs As Boolean, ByVal fifo_flag As Integer, _
                  ByVal update_cost As String, ByVal update_source As String, _
                  trans_id As String, ByVal std_cost As String) As Integer

**Description**

This API emulates the Clarify part transfer mechanism. The part/revision/domain are specified (the part to be transferred). Also specified are the from location/bin and the to location/bin. The quantity and serial number of the parts to be transferred are specified, as are some additional information (reference ID, transfer date, and notes).

As in Clarify, the transfer can be from good or bad stock and can be to good or bad stock. Also, time bombs (for escalation/notification) can be specified, or not.

The API supports _containers_. If you are transferring into or out of a container, put the container name in the bin name field, and the container number in the cont_num field. If you are not using containers, leave the container number fields blank.

The API supports a _primary bin recommendation_. If you have set up a primary bin recommendation, you can set the bin name to: PRIM_BIN_REC, and the API will fill in the proper bin.

The FIFO flag has three possible values:

 0 - No FIFO costing used

 1 - FIFO costing is used

 2 - Use the cost specified in the update_cost field

The update cost field is the cost per unit of the transfer, and is used in two cases: 1) if the preceding field is set to 2, this is the cost of the transfer. 2) If the flag is set = 1, then this is the cost of the transfer, and FIFO records will be created. This is only valid for transfers from Expense GL accounts.

The update source is also used only when the flag = 1 and it is a transfer in from an expense GL. In this case, the update source is the source placed in the FIFO costing record.

**Note**: If you are transferring (in from an expense GL) using FIFO costs, and don't wish to create a new FIFO record (but rather wish to increment the most recent FIFO record), just leave the update_cost field blank ("").

The final two arguments are output arguments that return the transaction ID of the part transfer, and the standard cost (total) for the transfer.

The API also checks part authorization levels for auto-replenishment, and will automatically work with the Clarify auto-replenishment engine.

**Adding to an existing part transfer:**

The part transfer API now has the ability to increase the number of units in a previously transacted part transfer. For example, suppose that a part transfer of 5 units has been made. The transaction ID is '42'. But you realize after the fact that the transfer really was for 8 units. You can create a new part transfer, or, using this feature, you can "fix" the previous part transfer.

To do this, specify (in the trans_id argument) the transaction ID of the previous part transfer. In the quantity field, specify how many units to add to the transfer. The fifo_flag, update_cost, update_source, and gen_time_bomb parameters are also used for the additional units. All other arguments are ignored. The from/to locations and bins, as well as the part number/mod_level are determined from the existing part transfer.

**Note**: This new feature only works with transfers of quantity-tracked parts.

#### Parameters
**Parameter Name**                **Required?**             **Description**

part_num                               Yes                         The part number transferred

mod_level                              Yes                         Revision of the part

domain                                   Yes                         The domain of the part

quantity                                 Yes                         How many to transfer

serial_num                             No                           The serial number (if serial tracked) to transfer

from_loc                                Yes                         The inventory location (or GL account) to transfer from

from_bin                                No                           The inventory bin to transfer from. If from a container, put the container

name in this field. If you want the primary bin suggestion, put

PRIM_BIN_REC in this field

from_cont                              No                           If transferring from a container, put the container number in this field

from_good                            Yes                         Is the transfer from "good" stock?

to_loc                                     Yes                         The inventory location (or GL account) to transfer to

to_bin                                    No                           The inventory bin to transfer to. If to a container, put the container name

in this field. If you want the primary bin suggestion, put PRIM_BIN_REC in

this field

to_cont                                  No                           If transferring to a container, put the container number in this field

to_good                                 Yes                         Is the transfer to "good" stock?

user_name                             No                           Who performed the transfer? If blank, current user is used

trans_date                             No                           When was transfer performed? If blank, current time is used

ref_id                                      No                           Optional reference ID of transfer

notes                                      No                           Optional notes about the transfer

gen_time_bombs                 Yes                         Should time bombs be generated?

fifo_flag                                 Yes                         Should we use FIFO costing? 0 = No, 1 = Yes, 2 = Use the

cost in the next field

update_cost                          No                           If the fifo_flag = 2, this is the per-unit cost for the transfer

Not commonly used. If the fifo_flag = 1, it is the FIFO cost of the transfer (only valid for transfer in from expense GL)

update_source                     No                           If the fifo_flag = 1, and this is a transfer in from an expense

GL with an update cost specified, this is the source of the FIFO parts

trans_id                                 Yes                         Output argument with the transaction ID of the part transfer

std_cost                                                Yes                         Output argument with the standard cost of the part transfer

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             TO location/bin and FROM location/bin cannot be the same

-2                                             Specified quantity is less than 1

-3                                             Can't transfer serialized part with quantity > 1

-4                                             Specified Part Number was not found

-5                                             Serial Number was not specified for serialized Part Number

-6                                             Mod Level for specified Part Number was not found

-7                                             FROM Location for specified Part Number was not found

-8                                             FROM Bin for specified Part Number was not found

-9                                             TO Location for Specified Part Number was not found

-10                                           TO Bin for Specified Part Number was not found

-11                                           Specified User not found in database

-12                                           FROM Bin for Part Number is sealed

-13                                           TO Bin for Part Number is sealed

-14                                           FROM Loc/Bin for Part Number was not found

-15                                           TO Loc/Bin for Part Number was not found

-20                                           Serial number is found in inventory, but not at the "from" location/bin

-21                                         The serialized part cannot be found at the specified from location and the from location is not a GL account that allows a part to be created.

-22                                           Cannot find the activity string for "Transfer" with rank = 12300

-23                                           Supplied update cost is not numeric

-26                                           Invalid part transfer.  Attempting to transfer a good part that was marked bad, or vice versa

-27                                           The Part Instance was not found in the FROM location/bin

-28                                           There is not enough quantity of the  Part Instance in the FROM location/bin

-40                                           Invalid value for fifo_flag specified

-41                                           Cannot add units to an existing part transfer, because the part transfer is for a serialized part

-42                                           Specified Part Transfer for augmentation was not found

ret_string                               The transaction record ID number

ret_num                                 The standard cost of the transaction

**Examples**

 Transfer 20 units of Accounting 101 from an expense GL account to the primary bin in Austin. All stock is good. Use FIFO costing.

**Visual Basic:**

   Dim ret_int   As Integer

   Dim trans_id  As String

   Dim std_cost  As String

ret_int = fcfo.part_transfer("Accounting", "101", "QuantityDomain", _
  20, "", "EXPGL", "", "", True, "Austin", _
  "PRIM_BIN_REC", "", True, "", "", "", _
  "", True, 1, "", "", trans_id, std_cost)

   If ret_int = 0 Then

     trans_id = fcfo.ret_string

     std_cost = fcfo.ret_num

   End If

**JavaScript:**

var ret_int = fcfo.part_transfer("Accounting", "101", "QuantityDomain",

      20, "", "EXPGL", "", "", true, "Austin",

      "PRIM_BIN_REC", "", true, "", "", "",

      "", true, 1, "", "", trans_id, std_cost);

 if (ret_int == 0){ var trans_id = fcfo.ret_objid; }

 Transfer MS Word 7.0, serial number 555666 from Austin Bin 2 to San Jose Bin "Receiving". The inventory was good, but is now marked as bad (for Quality Control). Fred did the transfer on July 30, 1998, at 5:13 AM. Add notes and a ref ID, and don't generate a time bomb. Don't use FIFO costing.

**Visual Basic:**

   Dim ret_int   As Integer

   Dim trans_id  As String

   Dim std_cost  As String

ret_int = fcfo.part_transfer("MS Word", "7.0", "Product", 1, _
  "555666", "Austin", "Bin 1", "", True, _
  "San Jose", "Receiving", "", False, _
  "fred", "7/30/98 5:13:00", "Ref ID3", _
  "Some notes", False, 0, "", "", _
  trans_id, std_cost)

   If ret_int = 0 Then

     trans_id = fcfo.ret_string

     std_cost = fcfo.ret_num

   End If

**JavaScript:**

var ret_int = fcfo.part_transfer("MS Word", "7.0", "Product", 1,

      "555666", "Austin", "Bin 1", "", true,

      "San Jose", "Receiving", "", false,

      "fred", "7/30/98 5:13:00", "Ref ID3",

      "Some notes", false, 0, "", "",

      trans_id, std_cost);

if (ret_int == 0){ var trans_id = fcfo.ret_objid; }

 Transfer 15 units of the Notebook part from expense GL 'EXPGL' to Austin Container 44 (name of Fred). The inventory was good, but is now marked as bad (for Quality Control). Fred did the transfer on July 30, 1998 at 5:13 AM. Add notes and a ref ID, and don't generate a time bomb. Use FIFO costing, and specify the cost and source.

**Visual Basic:**

   Dim ret_int   As Integer

   Dim trans_id  As String

   Dim std_cost  As String

ret_int = fcfo.part_transfer("Notebook", "", "Product", 15, "", _
                              "EXPGL", "", "", True, "Austin", _
                              "Fred", "44", False, "fred", _
                              "7/30/98 5:13:00", "Ref ID3", _
                              "Some notes", False, 1, ".34", "MySource", _
      trans_id, std_cost)

   If ret_int = 0 Then

     trans_id = fcfo.ret_string

     std_cost = fcfo.ret_num

   End If

**JavaScript:**

var ret_int = fcfo.part_transfer("Notebook", "", "Product", 15, "",

                                 "EXPGL", "", "", true, "Austin",

                                 "Fred", "44", false, "fred",

                                 "7/30/98 5:13:00", "Ref ID3",

                                 "Some notes", false, 1, ".34", "MySource",

         trans_id, std_cost);

 if (ret_int == 0){ var trans_id = fcfo.ret_objid; }

 Add 4 units to part transfer '42'. Generate a time bomb, and use FIFO costing.

**Visual Basic:**

Dim ret_int   As Integer

   Dim trans_id  As String

   Dim std_cost  As String

trans_id = "42"

ret_int = fcfo.part_transfer("", "", "", 4, "","", "", _
                              "", True, "", "", "", True, "", _
                              "", "", "", True, 1, "", "", _
      trans_id, std_cost)

   If ret_int = 0 Then

     std_cost = fcfo.ret_num

   End If

**JavaScript:**

trans_id = "42"

var ret_int = fcfo.part_transfer("", "", "", 4, "","", "",

                                 "", true, "", "", "", true, "",

                                 "", "", "", true, 1, "", "",

         trans_id, std_cost);

 if (ret_int == 0){ var trans_id = fcfo.ret_objid; }