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
                              ByVal trans_id As String, ByVal std_cost As String) As Integer

**Description**

This is the FCFL version of the part transfer API. This API emulates the Clarify part transfer mechanism. The part/revision/domain are specified (the part to be transferred). Also specified are the from location/bin and the to location/bin. The quantity and serial number of the parts to be transferred are specified, as are some additional information (reference ID, transfer date, and notes).

As in Clarify, the transfer can be from good or bad stock and can be to good or bad stock. Also, time bombs (for escalation/notification) can be specified, or not.

The API supports _containers_. If you are transferring into or out of a container, put the container name in the bin name field, and the container number in the cont_num field. If you are not using containers, leave the container number fields blank.

The API supports a _primary bin recommendataion_. If you have set up a primary bin recommendation, you can set the bin name to: PRIM_BIN_REC, and the API will fill in the proper bin.

The FIFO flag has three possible values:

 0 - No FIFO costing used

 1 - FIFO costing is used

 2 - Use the cost specified in the update_cost field

The update cost field is the cost per unit of the transfer, and is used in two cases: 1) if the preceding field is set to 2, this is the cost of the transfer. 2) If the flag is set = 1, then this is the cost of the transfer, and FIFO records will be created. This is only valid for transfers from Expense GL accounts.

The update source is also used only when the flag = 1 and it is a transfer in from an expense GL. In this case, the update source is the source placed in the FIFO costing record.

**Note**: If you are transferring (in from an expense GL) using FIFO costs, and don't wish to create a new FIFO record (but rather wish to increment the most recent FIFO record), just leave the update_cost field blank ("").

The final two arguments are output arguments that return the transaction ID of the part transfer, and the standard cost (total) for the transfer.

The API also checks part authorization levels for auto-replenishment, and will automatically work with that engine.

**Adding to an existing part transfer:**

The part transfer API now has the ability to increase the number of units in a previously transacted part transfer. For example, suppose that a part transfer of 5 units has been made. The transaction ID is '42'. But you realize after the fact that the transfer really was for 8 units. You can create a new part transfer, or, using this feature, you can "fix" the previous part transfer.

To do this, specify (in the trans_id argument), the transaction ID of the previous part transfer. In the quantity field, specify how many units to add to the transfer. The fifo_flag, update_cost, update_source, and gen_time_bomb parameters are also used for the additional units. All other arguments are ignored. The from/to locations and bins, as well as the part number/mod_level are determined from the existing part transfer.

**Note**: This new feature only works with transfers of quantity tracked parts.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| part_num | Yes | The part number transferred |
| mod_level | Yes | Revision of the part |
| domain_name | Yes | The domain of the part |
| quantity_num | Yes | How many to transfer |
| serial_num | No | The serial number (if serial tracked) to transfer |
| from_loc | Yes | The inventory location (or GL account) to transfer from |
| from_bin | No | The inventory bin to transfer from. If from a container, put the container name in this field. If you want the primary bin suggestion, put PRIM_BIN_REC in this field |
| from_cont | No | If transferring from a container, put the container number in this field |
| from_good | Yes | Is the transfer from "good" stock? |
| to_loc | Yes | The inventory location (or GL account) to transfer to |
| to_bin | No | The inventory bin to trans to. If to a container, put the container name in this field. If you want the primary bin suggestion, put PRIM_BIN_REC in this field. |
| to_cont | No | If transferring to a container, put the container number in this field |
| to_good | Yes | Is the transfer to "good" stock? |
| user_name | No | Who performed the transfer. If blank, current user is used |
| trans_date | No | When was transfer performed? If blank, current time is used |
| ref_id | No | Optional reference ID of transfer |
| note_str | No | Optional notes about the transfer |
| gen_time_bombs | Yes | Should time bombs be generated? |
| fifo_flag | Yes | Should we use FIFO costing? 0 = No, 1 = Yes, 2 = Use the cost in the next field. |
| update_cost | No | If the fifo_flag = 2, this is the per-unit cost for the transfer. Not commonly used. If the fifo_flag = 1, it is the FIFO cost of the transfer (only valid for transfer in from expense GL). |
| update_source | No | If the fifo_flag = 1, and this is a transfer in from an expense GL with an update cost specified, this is the source of the FIFO parts. |
| trans_id | Yes | Output argument with the transaction ID of the part transfer |
| std_cost | Yes | Output argument with the standard cost of the part transfer |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             To location/bin and from location/bin cannot be the same

-2                                             Cannot transfer quantities < 1

-3                                             Cannot transfer quantities > 1 if a serial number is specified

-4                                             Cannot locate the specified part number

-5                                             Part is serial-tracked, but no serial number was specified

-6                                             No part revision record found for specified revision

-7                                             Cannot find the "from" location

-8                                             Cannot find the "from" bin

-9                                             Cannot find the "to" location

-10                                           Cannot find the "to" bin

-11                                           Cannot find the specified user

-12                                           The from container is sealed

-13                                           The to container is sealed

-14                                           No primary bin can be found for the from location

-15                                           No primary bin can be found for the to location

-20                                           Serial number is found in inventory, but not at the "from" location/bin

-21                                         The serialized part cannot be found at the specified from location and the from location is not a GL account that allows a part to be created.

-22                                           Cannot find the activity string for TRANSFER with rank = 12300

-23                                           Supplied update cost is not numeric

-24                                           There are not enough FIFO units available to perform the transfer

-25                                           For transfers into inventory (from expense GL), there are no FIFO records

available to increment the count

-26                                           The serialized transfer is from good/bad stock, but the inventory part is marked as the opposite

(bad/good). For example, the transfer is from bad stock, but the part is marked as good.

-27                                           The employee record for the specified user cannot be found

-28                                           The Part Instance Detail for part '' with serial number '' cannot be found.

-40                                           Invalid value for fifo_flag specified.

-41                                           You are attempting to add units to an existing part transfer, but the part transfer is for a serialized part

-42                                           You are attempting to add units to an existing part transfer, but the supplied

transaction ID is not found |
| ret_string | Output | Returns the transaction id of the part transfer record |
| ret_num | Output | Returns the standard cost of the transferred part |
| ret_objid | Output | Returns the objid of the part transfer record

**Examples**

 Transfer 20 units of Accounting 101 from an expense GL account to the primary bin in Austin. All stock is good. Use FIFO costing.

**Visual Basic:**

    Dim ret_int   As Integer

    Dim trans_id  As String

    Dim std_cost  As String

ret_int = fccl.part_transfer("Accounting", "101", "QuantityDomain", 20, _
                  "", "EXPGL", "", "", True, "Austin", _
                  "PRIM_BIN_REC", "", True, "", "", "", "", _
                  True, 1, "", "", "", "")

trans_id = fccl.ret_string

std_cost = CStr(fccl.ret_num)

**Javascript:**

var ret_int = fccl.part_transfer("Accounting", "101", "QuantityDomain", 20,

                       "", "EXPGL", "", "", True, "Austin",

                       "PRIM_BIN_REC", "", True, "", "", "", "",

                       True, 1, "", "", "", "");

 Transfer MS Word 7.0, serial number 555666 from Austin Bin 2 to San Jose Bin "Receiving". The inventory was good, but is now marked as bad (for Quality Control). Fred did the transfer on July 30th at 5:13 AM. Add notes and a ref ID, and don't generate a time bomb. Don't use FIFO costing.

**Visual Basic:**

Dim ret_int   As Integer

Dim trans_id  As String

Dim std_cost  As String

ret_int = fccl.part_transfer("MS Word", "7.0", "Product", 1, "555666", _
                            "Austin", "Bin 1", "", True, "San Jose", _
                            "Receiving", "", False, "fred", "7/30/2001 5:13:00", _
                            "Ref ID3", "Some notes", False, 0, "", "", "", "")

trans_id = fccl.ret_string

std_cost = CStr(fccl.ret_num)

**Javascript:**

var ret_int = fccl.part_transfer("MS Word", "7.0", "Product", 1, "555666",

                            "Austin", "Bin 1", "", True, "San Jose",

                            "Receiving", "", False, "fred", "7/30/2001 5:13:00",

                            "Ref ID3", "Some notes", False, 0, "", "", "", "");

 Transfer 15 units of the Notebook part from expense GL 'EXPGL' to Austin Container 44 (name of Fred). The inventory was good, but is now marked as bad (for Quality Control). Fred did the transfer on July 30th at 5:13 AM. Add notes and a ref ID, and don't generate a time bomb. Use FIFO costing, and specify the cost and source.

**Visual Basic:**

Dim ret_int   As Integer

Dim trans_id  As String

Dim std_cost  As String

ret_int = fccl.part_transfer("Notebook", "", "Product", 15, "", _
                            "EXPGL", "", "", True, "Austin", "Fred", "44", _
                             False, "fred", "7/30/2001 5:13:00", "Ref ID3", _                        

                            "Some notes", False, 1, ".34", "MySource", "", "")

trans_id = fccl.ret_string

std_cost = CStr(fccl.ret_num)

**Javascript:**

var ret_int = fccl.part_transfer("Notebook", "", "Product", 15, "",

                            "EXPGL", "", "", True, "Austin", "Fred", "44",

                             False, "fred", "7/30/2001 5:13:00", "Ref ID3",                         

                            "Some notes", False, 1, ".34", "MySource", "", "");

  Add 4 units to part transfer '42'. Generate a time bomb, and use FIFO costing.

**Visual Basic:**

Dim ret_int   As Integer

Dim trans_id  As String

Dim std_cost  As String

trans_id = "42"

ret_int = fccl.part_transfer("", "", "", 4, "", "", "", "", True, "", "", "", _
                            True, "", "", "", "", True, 1, "", "", trans_id, "")

trans_id = fccl.ret_string

std_cost = CStr(fccl.ret_num)

**Javascript:**

var ret_int = fccl.part_transfer("", "", "", 4, "", "", "", "", true, "", "", "",

                            true, "", "", "", "", true, 1, "", "", trans_id, "");