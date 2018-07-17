pick
----

pick_sn
-------

pick_no_trans
---------------

pick_sn_no_trans
------------------

Public Function pick(ByVal dtl_num As String, _

                     ByVal locs_str As String, ByVal use_good As Boolean, _

                     ByVal user_name As String, ByVal pick_date As String, _

                     ByVal gen_time_bombs As Boolean) As Integer

Public Function pick_sn(ByVal dtl_num As String, _

                        ByVal locs_str As String, ByVal use_good As Boolean, _

                        ByVal user_name As String, ByVal pick_date As String, _

                        ByVal serial_no As String, ByVal gen_time_bombs As Boolean) As Integer

Public Function pick_no_trans(ByVal dtl_num As String, _

                     ByVal locs_str As String, ByVal use_good As Boolean, _

                     ByVal user_name As String, ByVal pick_date As String, _

                     ByVal gen_time_bombs As Boolean) As Integer

Public Function pick_sn_no_trans (ByVal dtl_num As String, _

                        ByVal locs_str As String, ByVal use_good As Boolean, _

                        ByVal user_name As String, ByVal pick_date As String, _

                        ByVal serial_no As String, ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API allows for multiple pick actions to occur against a part request. Various inventory parts are _picked_ (reserved) for the part request.  The pick can be by a specified user at a specified time, and can be picked from good or bad stock. Time bombs (for notification/escalation) can also be specified.

The "no_trans" versions of the APIs perform exactly the same work as the other versions of the APIs. The only difference is that these versions of the APIs do not check the logistics transitions, and do not change the condition/status of the part request detail. This allows for multiple calls to the API to be performed without extra complex transitions being added to the system.

The pick API will pick either quantity or serialized parts, based on the part number/site_part of the part request.

The pick API will also validate that the part request can be transitioned (for the specified user).

The API can also perform a _soft_ _pick_. That is a pick (reserve) of a unit in a bin or container, without worrying about the serial number to reserve. The API just pick one general unit. To do this, pick against a part request that does not have a serial number specified (for a serialized part).

The API can also perform a pick of a specific unit indicated by a serial number. To do this, specify the serial number  using the **pick_sn** API. This will pass the serial number along to the pick API, and the specific part will be reserved.

If the part request was created using a serialized site part, then in order to pick an inventory part you must use the **pick_sn** API and specify a new specific serial number or use the keyword "inventory" as the serial number. This will force the API to ignore the serial number stored in the part request and allow the pick to occur from inventory parts.

The locs_str argument can have one of two values in it. If it is blank, the _location_servicing_locations_ for the part request's site will be used. That is, inventory will be checked for the warehouses that are best suited for the shipping site of the part request. If the locs_str argument is not blank, it must be in the following format:

location<:bin><:cont#>|location<:bin>|-|location<:bin>

Where inventory locations to search are specified with a pipe character between each. They will be searched in the order listed. If only one bin at that location should be searched, it can be added to the location (with a colon between them). So, for example, to search all of Austin, and then Bin 4 in San Jose, use the following string:

Austin|San Jose:Bin 4

If you want to pick from a container, put the container name in the bin name, and the container number in the cont# field. If you are not picking from a container, don't even specify the container argument.

The pick API will continue to attempt to pick until they have reserved all of the inventory necessary, or run out of locations to pick from.

**Note**: This API requires one other API (part_transfer) to work correctly.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

dtl_num                                 Yes                         The part request to receive against

locs_str                                  No                           The list of locations to search. If blank, location_servicing_locations

are used. See above for a description of the format of this argument

use_good                              Yes                         Is the picked inventory from good stock?

user_name                             No                           The user who picked the part request. If left blank, the current user

performs the pick.

pick_date                               No                           When was the part request picked. If this parameter is left blank, the PR

is picked at the current time

tot_num_picked                   Yes                         Returns the number of items picked

gen_time_bombs                 Yes                         Should a time_bomb be generated

**Returns**

**Value                                     Meaning                                                                                                                                               **

 0                                             No errors

+1                                            Picked some units, but could not pick all of them (ran out of locations to search)

-1                                             Cannot find the specified user

-2                                             Cannot find the specified part request

-3                                             There are no more units that need to be picked for the part request

-4                                             No transition exists between current condition and

condition Picked

-5                                             User's privclass does not allow to transition between

part request's condition and condition Picked

-6                                             Cannot find the activity string for PICK with rank = 12700

-7                                             Cannot find the default state for condition Picked

-8                                             Part request is currently dispatched to a queue

-9                                             The employee record for the specified user cannot be found

**Part Transfer Error Codes:**

-120                                         Serial number is found in inventory, but not at the

specified "from" bin

-121                                         The serialized part cannot be found at the specified from location and the from location is not a GL account that allows a part to be created.

ret_num                                 Output                   Total number of parts picked for this part request

**Examples  **

 Pick inventory for part request number '1-14'. Use the location_servicing_locations to search. The pick is performed by Dan on January 1, 2001, and is from bad inventory. Generate time bombs.

**Visual Basic:**

Dim ret_int As Integer

Dim tot_num As Integer

ret_int = fccl.pick("1-14", "", False, "Dan", "1/1/2001", True)

tot_num = fccl.ret_num

**Javascript:**

var ret_int = fccl.pick("1-14", "", False, "Dan", "1/1/2001", true);

 Pick against part request number '2-1'. Pick from locations Austin/Bin 1, Austin/Bin 2, and Container 44 (name is Fred) from Austin. Use the default user and time, and use good stock. Don't generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

Dim tot_num As Integer

ret_int = fccl.pick("2-1", "Austin:Bin 1|Austin:Bin 2|Austin:Fred:44", _

                    True, "", "", True)

tot_num = fccl.ret_num

**Javascript:**

var ret_int = fccl.pick("2-1", "Austin:Bin 1|Austin:Bin 2|Austin:Fred:44",

                        true, "", "", true);