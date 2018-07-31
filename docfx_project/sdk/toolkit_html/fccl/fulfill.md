fulfill
-------

fulfill_no_trans
------------------

Public Function fulfill(ByVal dtl_num As String, _
                        ByVal is_fulfill As Boolean, ByVal quantity_num As Integer, _
                        ByVal from_loc As String, ByVal from_bin As String, _
                        ByVal from_cont As String, ByVal from_good As Boolean, _
                        ByVal to_loc As String, ByVal to_bin As String, _
                        ByVal to_cont As String, ByVal to_good As Boolean, _
                        ByVal serial_num As String, ByVal new_status As String, _
                        ByVal expected_date As String, ByVal user_name As String, _
                        ByVal fulfill_date As String, ByVal gen_time_bombs As Boolean) _
                        As Integer

Public Function fulfill_no_trans(ByVal dtl_num As String, _
                        ByVal is_fulfill As Boolean, ByVal quantity_num As Integer, _
                        ByVal from_loc As String, ByVal from_bin As String, _
                        ByVal from_cont As String, ByVal from_good As Boolean, _
                        ByVal to_loc As String, ByVal to_bin As String, _
                        ByVal to_cont As String, ByVal to_good As Boolean, _
                        ByVal serial_num As String, ByVal new_status As String, _
                        ByVal expected_date As String, ByVal user_name As String, _
                        ByVal fulfill_date As String, ByVal gen_time_bombs As Boolean) _
                        As Integer

**Description**

This API allows for the _fulfilling_ of inventory parts for a part request. The API allow for either the _fulfilling_ of the parts, or the _backordering_ of the parts, whichever is appropriate. The quantity to be fulfilled, as well as the user and date/time of the fulfill can be supplied. A status can be supplied (for the proper condition, Fulfilled or Backordered). If the operation is a fulfill, the from and to locations (and bins) are specified. These can be locations or expense GL accounts as necessary. All of the proper validations against inventory will be performed. Just as in normal Clarify, if a partial fulfill is performed, the part request is broken up into two new part requests. The first is for the fulfill (and the quantities are changed). The new part request will be created to hold the rest of the units that did not get fulfilled.

The API support _containers_. If you are transferring into or out of a container, put the container name in the bin name field, and the container number in the cont_num field. If you are not using containers, leave the container number fields blank.

The API supports a _primary bin recommendataion_. If you have set up a primary bin recommendation, you can set the bin name to: PRIM_BIN_REC, and the API will fill in the proper bin. If a partial fulfilled is performed, then a new part request will be created for the unfulfilled items. The objid of the newly created part request detail will be in the ret_objid property. The id number of the newly created part request detail will be in the ret_id_num property.

The "no_trans" version of the API performs exactly the same work as the other version of the API. The only difference is that this version of the API does not check the logistics transitions, and does not change the condition/status of the part request detail. This allows for multiple calls to the API to be performed. In addition, when calling the no_trans version, a partial fulfill will not create new part requests for the rest of the units that did not get fulfilled. As an example, if you wish to fulfill 10 serialized parts on one part request, you can call fulfill_no_trans 9 times, then finally call the fulfill API once. If the operation is backordering, the expected date of arrival should be supplied.

The fulfill API will work with either quantity or serialized parts, based on the part number/site_part of the part request. The serial number will be taken from the part request, unless the optional serial number is specified. Then that serial number will be used.

The fulfill API will also validate that the part request can be transitioned (for the specified user) to the proper new condition.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| dtl_num | Yes | The part request to fulfill against |
| is_fulfill | Yes | If this = True, it is a fulfill operation. If = False, it is a backorder |
| quantity_num | Yes | How many units to fulfill/backorder |
| from_loc | No | The inventory location to fulfill from |
| from_bin | No | The inventory bin to fulfill from. If from a container, put the container name in this field. If you want the primary bin suggestion, put PRIM_BIN_REC in this field |
| from_cont | No | If transferring from a container, put the container number in this field |
| from_good | No | Is the inventory fulfilled from good (= True) or bad ( = False) |
| to_loc | No | The inventory location to fulfill to |
| to_bin | No | The inventory bin to fulfill to. If to a container, put the container name in this field. If you want the primary bin suggestion, put PRIM_BIN_REC in this field |
| to_cont | No | If transferring to a container, put the container number in this field |
| to_good | No | Is the inventory fulfilled to good (= True) or bad ( = False) |
| serial_num | No | Optional serial number. If specified, it will be used. Otherwise, the serial number is taken from the part request. If you want to specify multiple serialized parts to fulfill at one time, separate the serial numbers with a pipe character |
| new_status | No | The new status of the part request. If blank, default status of the new condition (Fulfilled or Backordered) will be used |
| expected_date | No | For backorders, when is the inventory expected? |
| user_name | No | The user who fulfilled the part request. If left blank, the current user performs the fulfill. |
| fulfill_date | No | When was the part request fulfilled. If this parameter is left blank, the PR is fulfilled at the current time |
| gen_time_bombs | Yes | Should a time_bomb be generated |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Quantity is < 1

-2                                             Cannot find the specified user

-3                                             Cannot find the specified part request

-4                                             There are no units that need to be fulfilled for the part request

-5                                             No transition exists between current condition and condition Fulfilled/Backordered

-6                                             User's privclass does not allow to transition between

part request's condition and condition Fulfilled/Backordered

-7                                             Cannot find the activity string for FULFILL REQUEST/BACKORDER with rank = 12600/12900

-8                                             Cannot find the default state for condition Unpicked

-9                                             Attempt to fulfill too many units

-10                                           Cannot locate the "from" location

-11                                           Cannot locate the "from" bin

-12                                           Cannot locate the "to" location

-13                                           Cannot locate the "to" bin

-14                                           The part request is currently dispatched to a queue

-15                                           A serial number was specified, but it is for a part instance that is a different part or revision than the part for the part request

-16                                           The "from" container is sealed

-17                                           The "to" container is sealed

-18                                           Cannot find the primary bin recommendation for the from bin

-19                                           Cannot find the primary bin recommendation for the to bin

-20                                           No serial number provided for a serialized part

-21                                           Serialized fulfill, but not enough serial numbers provided to fulfill the quantity supplied

-22                                           A serial number was specified, but the part is quantity tracked

-23                                           The employee record for the specified user cannot be found

**Create Part Request Error Codes:**

-101                                         No request header ID was supplied.               

-102                                         The specified request header ID was not found.   

-103                                         The specified request header is already closed.  

-104                                         The specified user was not found.                

-105                                         The specified mod_level record was not found.    

-106                                         The specified site_part record was not found.    

-107                                         The specified queue was not found.               

-108                                         The specified detail type was not found.         

-109                                         The specified priority was not found.            

-110                                         The specified "ship via" value was not found.    

-111                                         The specified carrier was not found.             

-112                                         The default status for RQST_OPEN was not found.  

-113                                         Cannot find activity code for "Create".          

-114                                         Cannot find activity code for "Dispatch".        

-115                                         The specified creation date is invalid.          

-116                                         The specified due date is invalid.                                                     

**Part Transfer Error Codes:**

-220                                         Serial number is found in inventory, but not at the  specified "from" bin

-221                                         The serialized part cannot be found at the specified from location and the from location is not a GL account that allows a part to be created.

**Note:** Any other error codes between -200 and -299 are from part transfer. Add 200 to the error code, and check the error code in the part transfer section of this document.

**Examples**

 Fulfill 3 units of inventory for part request number '1-14' from Austin's Container 44 (name of Fred) to Expense GL "EXPGL. All inventory is good. Go to status "Fulfilled OK!". The fulfill is performed by Dan on January 1, 2001. Generate time bombs.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.fulfill("1-14", True, 3, "Austin", "Fred", "44", True, _
"EXPGL", "", "", True, "", "Fulfilled OK!", "", "dan", _
"1/1/2001", True)

**Javascript:**

var ret_int = fccl.fulfill("1-14", true, 3, "Austin", "Fred", "44", true,

"EXPGL", "", "", true, "", "Fulfilled OK!", "", "dan",

"1/1/2001", true);

 Do the same fulfill, but fulfill to the default bin location in San Jose.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.fulfill("1-14", True, 3, "Austin", "Fred", "44", True, _
                       "San Jose", "PRIM_BIN_LOC", "", True, "", _
                       "Fulfilled OK!", "", "dan", "1/1/2001", True)

**Javascript:**

var ret_int = fccl.fulfill("1-14", true, 3, "Austin", "Fred", "44", true,

                       "San Jose", "PRIM_BIN_LOC", "", true, "",

                       "Fulfilled OK!", "", "dan", "1/1/2001", true);

 Backorder 4 units for part request '2-1'. It is expected on November 15th.  Don't generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.fulfill("2-1", False, 4, "", "", "", True, "", "", _
                       "", True, "", "", "11/15/2001", "", "", False)

**Javascript:**

var ret_int = fccl.fulfill("2-1", false, 4, "", "", "", true, "", "",

                       "", true, "", "", "11/15/2001", "", "", false);