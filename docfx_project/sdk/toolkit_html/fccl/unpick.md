unpick
------

unpick_sn
---------

unpick_no_trans
-----------------

unpick_sn_no_trans
--------------------

```
Public Function unpick(ByVal dtl_num As String, _
                       ByVal loc_name As String, ByVal bin_name As String, _
                       ByVal cont_num As String, ByVal use_good As Boolean, _
                       ByVal user_name As String, ByVal unpick_date As String, _
                       ByVal gen_time_bombs As Boolean) As Integer
```

```
Public Function unpick_sn(ByVal dtl_num As String, ByVal loc_name As String, _
                          ByVal bin_name As String, ByVal cont_num As String, _
                          ByVal use_good As Boolean, ByVal user_name As String, _
                          ByVal unpick_date As String, ByVal serial_no As String, _
                          ByVal gen_time_bombs As Boolean) As Integer
```

```
Public Function unpick_no_trans(ByVal dtl_num As String, _
                       ByVal loc_name As String, ByVal bin_name As String, _
                       ByVal cont_num As String, ByVal use_good As Boolean, _
                       ByVal user_name As String, ByVal unpick_date As String, _
                       ByVal gen_time_bombs As Boolean) As Integer
```

```
Public Function unpick_sn_no_trans (ByVal dtl_num As String, ByVal loc_name As String, _
                          ByVal bin_name As String, ByVal cont_num As String, _
                          ByVal use_good As Boolean, ByVal user_name As String, _
                          ByVal unpick_date As String, ByVal serial_no As String, _
                          ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API allows for the _unpicking_ (unreserving) of inventory parts for a part request. The API will search in the specified location and bin (for good or bad inventory), and will unreserve it for the part request, but only if it was previously reserved.

The "no_trans" versions of the APIs perform exactly the same work as the other versions of the APIs. The only difference is that these versions of the APIs do not check the logistics transitions, and do not change the condition/status of the part request detail. This allows for multiple calls to the API to be performed without extra complex transitions being added to the system.

This API does have a loophole (as does base Clarify) that if you (for example) pick parts in multiple bins, and then try to unpick from one bin, it will try to unpick as many units as possible (quantity-tracked only). It may unpick more units in a bin than it originally picked in that bin. This is because Clarify only remembers that a part request picked against a bin (and how many units total are picked in that bin). It does not remember how many units were picked for a particular part request. Note that this is not an issue with serialized parts.

The API supports unpicking from a container object, as well as from a bin. If the part request was _soft picked_, the API will perform a soft unpick.

The API can also unpick a specific unit indicated by a serial number. To do this, specify the serial number  using the **unpick_sn** API. This will pass the serial number along to the unpick API, and the specific part will be released. If the part request was created using a serialized site part, then in order to unpick an inventory part you must use the **unpick_sn** API and specify the specific serial number or use the keyword "inventory" as the serial number. This will force the API to ignore the serial number stored in the part request and allow the unpick to occur against the inventory part.

The unpick API will unpick either quantity or serialized parts, based on the part number/site_part of the part request.

The unpick API will also validate that the part request can be transitioned (for the specified user)

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| dtl_num | Yes | The part request to receive against |
| loc_name | Yes | The inventory location to unpick from |
| bin_name | Yes | The inventory bin to unpick from. If from a container, put  the container name in this field. |
| cont_num | No | If unpicking from a container, put the container number in this field |
| use_good | Yes | Is the unpicked inventory from good stock? |
| user_name | No | The user who unpicked the part request. If left blank, the current user performs the unpick. |
| unpick_date | No | When was the part request unpicked. If this parameter is left blank, the PR is unpicked at the current time |
| gen_time_bombs | Yes | Should a time_bomb be generated |

**Returns**

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| +1 | We unpicked some, but not all units picked for this part request |
| -1 | Cannot find the specified user |
| -2 | Cannot find the specified part request |
| -3 | There are no units that need to be unpicked for the part request |
| -4 | No transition exists between current condition and condition Unpicked |
| -5 | User's privclass does not allow to transition between part request's condition and condition Unpicked |
| -6 | Cannot find the activity string for UNPICK with rank = 12800 |
| -7 | Cannot find the default state for condition Unpicked |
| -8 | For serialized parts, the part is not at the specified location/bin |
| -9 | This part request has not picked against the location/bin |
| -10 | There is no quantity of parts to unpick at the location/bin |
| -11 | The part request is currently dispatched to a queue |
| -12 | The employee record for the specified user cannot be found |

**Part Transfer Error Codes:**

| -120 | Serial number is found in inventory, but not at the specified "from" bin |
| -121 | The serialized part cannot be found at the specified from location and the from location is not a GL account that allows a part to be created. |

#### Examples

Unpick inventory for part request number '1-14' from Austin's Bin 12. The unpick is performed by Dan on January 1, 2001, and is from bad inventory. Generate time bombs.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.unpick("1-14", "Austin", "Bin 12", "", False, "dan", _
     "1/1/2001", True)
```

**JavaScript:**
```
var ret_int = fccl.unpick("1-14", "Austin", "Bin 12", "", false, "dan",
         "1/1/2001", true);
```

Unpick against part request number '2-1'. Unpick from location Austin/Container 44 (name of Fred). Use the default user and time, and use good stock. Don't generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.unpick("2-1", "Austin", "Fred", "44", True, "", "", True)
```

**JavaScript:**
```
var ret_int = fccl.unpick("2-1", "Austin", "Fred", "44", true, "", "", true);
```