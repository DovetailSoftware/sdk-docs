receive_pr
----------

receive_pr_no_trans
---------------------

```
Public Function receive_pr(pr_num As String, _
                           ByVal from_loc As String, ByVal from_bin As String, _
                           ByVal from_cont As String, ByVal from_good As Boolean, _
                           ByVal to_loc As String, ByVal to_bin As String, _
                           ByVal to_cont As String, ByVal to_good As Boolean, _
                           ByVal quantity_num As Long, ByVal serial_num As String, _
                           ByVal status_str As String, ByVal carrier_name As String, _
                           ByVal waybill_name As String, ByVal poss_damage As Boolean, _
                           ByVal not_prop_pack As Boolean, ByVal route_to_test As Boolean, _
                           ByVal user_name As String, ByVal receive_date As String, _
                           ByVal auto_close As Boolean, ByVal gen_time_bombs As Boolean) _
                           As Integer
```

```
Public Function receive_pr_no_trans(pr_num As String, _
                           ByVal from_loc As String, ByVal from_bin As String, _
                           ByVal from_cont As String, ByVal from_good As Boolean, _
                           ByVal to_loc As String, ByVal to_bin As String, _
                           ByVal to_cont As String, ByVal to_good As Boolean, _
                           ByVal quantity_num As Long, ByVal serial_num As String, _
                           ByVal status_str As String, ByVal carrier_name As String, _
                           ByVal waybill_name As String, ByVal poss_damage As Boolean, _
                           ByVal not_prop_pack As Boolean, ByVal route_to_test As Boolean, _
                           ByVal user_name As String, ByVal receive_date As String, _
                           ByVal auto_close As Boolean, ByVal gen_time_bombs As Boolean) _
                           As Integer
```

#### Description

This API causes the specified part request to have units received against it. The API supports both quantity and serial number receives. It validates the transition from the current condition to the Received condition (for the specified user). The API creates the part transaction (including standard costs), part instance records, receive parts records, and activity logs. The API can also generate a time bomb (for business rule notification).

The "no_trans" version of the API performs exactly the same work as the other version of the API. The only difference is that this version of the API does not check the logistics transitions, and does not change the condition/status of the part request detail. This allows for multiple calls to the API to be performed without extra complex transitions being added to the system.

The API supports _containers_. If you are transferring into or out of a container, put the container name in the bin name field, and the container number in the cont_num field. If you are not using containers, leave the container number fields blank.

The API supports a _primary bin recommendataion_. If you have set up a primary bin recommendation, you can set the bin name to: PRIM_BIN_REC, and the API will fill in the proper bin.

The API supports (as of Clarify 7.0) a partial receive similar to Clarify's. If you receive only part of a part request, the API will create a new part request to handle the rest (unreceived) units of the part request. The objid of the newly created part request detail will be in the ret_objid property. The id number of the newly created part request detail will be in the ret_id_num property.

Good and bad inventory levels are supported, as is all other base features of receive parts. The API will not allow for  an inventory location's bin to have a negative level of any part (although, of course, expense GLs may). The API also checks part authorization levels for auto-replenishment, and will automatically work with that engine.

**Note**: This API requires one other API (part_transfer) to work correctly.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| pr_num | Yes | The part request to receive against |
| from_loc | No | Inventory location (or expense GL) to receive from. If this field (and the from_bin) is left empty (""), the API will search for the received part in inventory. If it finds it, it will use that location as the from location. |
| from_bin | No | The inventory bin to receive from. If from a container, put the container name in this field. If you want the primary bin suggestion, put PRIM_BIN_REC in this field. |
| from_cont | No | If receiving from a container, put the container number in this field |
| from_good | Yes | Is the received inventory from good stock? |
| to_loc | Yes | Inventory location (or expense GL) to receive to |
| to_bin | No | The inventory bin to receive to. If to a container, put the container name in this field. If you want the primary bin suggestion, put PRIM_BIN_REC in this field |
| to_cont | No | If receiving to a container, put the container number in this field |
| to_good | Yes | Is the received inventory put in good stock? |
| Quantity_num | Yes | How many units to receive (must = 1 for serialized parts) |
| serial_num | Yes | Serial number to receive (must be blank for quantity parts) |
| status_str | No | New status of part request. Must be a valid status for Received condition. If no status supplied, default status is used |
| carrier_name | No | Site name of the carrier. Left blank if not supplied |
| waybill_name | No | Waybill of receipt |
| poss_damage | Yes | Is the receipt possibly damaged? |
| not_prop_pack | Yes | Is the receipt not properly packed? |
| route_to_test | Yes | Should the receipt be routed to test? |
| user_name | No | The user who received the part request. If left blank, the current user performs the receive. |
| receive_date | No | When was the part request received. If this parameter is left blank, the PR is received at the current time |
| auto_close | Yes | If all of the inventory for this part request is received (or an overrage), should the part request be closed as well? And if it is closed, and no other details exist for the header, should the header be closed as well? |
| gen_time_bombs | Yes | Should a time_bomb be generated |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| +1 | No errors, but received overage |
| -1 | From bin and to bin may not be the same bin |
| -2 | Cannot receive 0 (or fewer) units |
| -3 | Cannot receive > 1 unit for serialized parts |
| -4 | Specified user is not found |
| -5 | Cannot find specified part request (demand_dtl) |
| -6 | Cannot find the specified from location/bin |
| -7 | Cannot find the specified to location/bin |
| -8 | Carrier site cannot be found |
| -9 | Cannot find the specified status |
| -10 | Cannot find the part number for the part request |
| -11 | Serial number specified for quantity tracked part |
| -12 | No serial number specified for serial tracked part |
| -13 | No transition exists between current condition and condition Received |
| -14 | User's privclass does not allow to transition between part request's condition and condition Received |
| -15 | Cannot find the activity string for RECEIVE with rank = 12200 |
| -16 | The transition (to CLOSED) for auto-close is not found or allowed |
| -17 | The part request is currently dispatched to a queue |
| -18 | Cannot find the activity string for CREATE PART REQUEST with rank = 9900 |
| -19 | Attempted to receive inventory from a sealed container |
| -20 | Attempted to receive inventory into a sealed container |
| -21 | Could not locate "From" primary bin recommendation |
| -22 | Could not locate "To" primary bin recommendation |
| -23 | Part request is closed. You may not receive against it. |
| -24 | The employee record for the specified user cannot be found |
| -25 | Can't locate Part with serial number |
| -26 | Unable to retrieve next detail sequence number for PR Header |
| -27 | Part Request Header is not related to a Site |

**Part Transfer Error Codes:**

| Value | Meaning |
|:--- |:--- |
| -120 | Serial number is found in inventory, but not at the specified "from" bin |
| -121 | The serialized part cannot be found at the specified from location and the from location is not a GL account that allows a part to be created. |

**Note:** Any other error codes between -100 and -199 are from part transfer. Add 100 to the error code, and check the error code in the part transfer section of this document.

#### Examples

Receive against part request number '1-14'. Receive from expense GL 'EXPGL' and to the primary bin at the Austin location. All inventory is good. Receive 12 units. Auto-close. Generate time bombs.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.receive_pr("1-14", "EXPGL", "", "", True, "Austin", _
                           "PRIM_BIN_REC", "", True, 12, "", "", "", "", _
                           False, False, False, "", "",True, True)
```

**JavaScript:**
```
var ret_int = fccl.receive_pr("1-14", "EXPGL", "", "", True, "Austin",
                           "PRIM_BIN_REC", "", True, 12, "", "", "", "",
                           false, false, false, "", "",true, true);
```

Receive against part request number '2-1'. Receive from location Austin/Bin 1 to container 44 (name Fred)  in Austin. The inventory was good, but is received as bad. It is serialized with serial number 'A123'. Set up a carrier site, and a waybill. Sam does the reeceive at 10PM on November 23rd of 2001. Mark the shipment as possibly damaged, and to be routed to test. Change the status to 'Received QA'. Don't generate a time bomb or auto-close.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.receive_pr("2-1", "Austin", "Bin 1", "", True, "Austin", _
                         "Fred", "44", False, 1, "A123", "Received QA", _
                         "Site 1", "Waybil 34843834", True, False, True, _
                         "sam", "11/23/01 22:00:00", False, False)
```

**JavaScript:**
```
var ret_int = fccl.receive_pr("2-1", "Austin", "Bin 1", "", True, "Austin",
                         "Fred", "44", False, 1, "A123", "Received QA",
                         "Site 1", "Waybil 34843834", True, False, True,
                         "sam", "11/23/01 22:00:00", False, False);
```