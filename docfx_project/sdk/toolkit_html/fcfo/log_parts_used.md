log_parts_used
----------------

Public Function log_parts_used(ByVal dtl_num As String, _

                  ByVal case_id As String, ByVal pu_type As String, _

                  ByVal parent_sp As Long, ByVal install_at_site As Boolean, _

                  ByVal remove_sp As Long, ByVal to_loc As String, _

                  ByVal to_bin As String, ByVal to_cont As String, _

                  ByVal to_good As Boolean, ByVal fail_code As String, _

                  ByVal inst_part As String, ByVal inst_rev As String, _

                  ByVal inst_domain As String, ByVal inst_serial As String, _

                  ByVal inst_qty As Long, ByVal inst_price As String, _

                  ByVal from_loc As String, ByVal from_bin As String, _

                  ByVal from_cont As String, ByVal from_good As Boolean, _

                  ByVal engineer_name As String, ByVal user_name As String, _

                  ByVal allow_move As Boolean, ByVal log_date As String, _

                  ByVal log_objid As Long) As Integer

**Description**

This API allows you to record a log parts used transaction in Clarify. All of the functionality (and there is quite a lot of it!) from the Log Parts Used form is emulated in the API. Each log parts used must be related to either a case or a part request detail. If it is related to both, the part request detail must be linked to the case. The engineer performing the log parts used, as well as the user who is recording the log can be specified, as well as the date/time of the action. The objid of the log parts used record is returned.

Both serialized and quantity-tracked parts can be logged, and the API performs all of the correct operations, based on the serial number/quantity fields.

Each of the five types of log parts used (Exchange, Upgrade, Install, Remove, Consume) are supported. Only the fields needed for the specific PU type being executed are validated. For the various types, four different actions are supported:

1. Install a site_part. If the type requires a site_part to be installed, the part_number, revision (mod_level), and domain must be specified. Also, the quantity and/or serial number should be supplied. Optionally, the installed part's price can be specified, and the "install_at_site" should be specified to determine if it is installed at the top-level of the site, or under another site_part. In the latter case, the objid of the parent site_part must be specified.

2. Remove a site_part. The objid of the part to be removed must be specified, and the failure code (dropdown list) value may be specified.

3. Place removed part in inventory. Optionally, a removed part may be placed back in inventory. If the "to" fields for location, bin, and good/bad are specified, the part will be put back in inventory. It can also be transferred to an Expense GL account.

4. Install a part from inventory. Optionally, the part to be installed can be pulled from inventory (or an Expense GL account) by specifying the "to" fields.

If a part is to be installed (serialized parts only), and already exists in the system as a site_part, it will be moved (not installed). This assumes that the "allow_move" flag is set to _True_. If not, an error code is produced.

When the log parts used action occurs, the API will change the condition of the part request (if one is listed in the arguments) to either the condition of: _Part Used_ or _Update Inv_. If there are no inventory movements, the former condition will be used. If  either the install or remove part are moved to/from inventory, the condition will be set to _Update Inv_. In both cases, the API will set the status of the part request to the default status for the condition, and will validate the ClearLogistics transitions to make sure that the user who is logging the action can perform the state transition.

**Note:** You may set the _log_objid_ argument to the value of -99. If you do, then no config mgr actions will be performed. No installs of parts, de-installs of parts, or moves of parts will be performed. If this option is selected, then only the inventory movements will be recorded (along with the activity log and condition change). THIS OPTION IS NOT RECOMMENDED, as it leaves inventory in a confusing state. If you have a site_part to remove, you may still supply the objid in the argument "remove_sp." If there are no installed site_parts, you may supply a part number, revision, domain, quantity, and serial number to remove (again, only as an inventory operation) by putting the data in the "inst_price" field in the following format (pipe delimited):

Part_num|rev|domain|quantity|serial_num

All five fields must be defined. If one is blank, just put two pipes next to each other with no data. For example, suppose a part of "MS Word" is being removed, with no revision, a domain of "Product", quantity 1 and serial number of "ABC", the price_inst argument would be: "MS Word||Product|1|abc".

Four error codes (-32, -33, -37, -38) are supplied for this option.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

dtl_num                                 No                           The ID number of the related part request detail (if one is related)

case_id                                  No                           The ID number of the related case (if one is related)

pu_type                                 Yes                         The type of the log parts used. One of: Exchange, Consume, Install, Remove,

                                                                                Upgrade

parent_sp                              No                           If a part is being installed, and it should be installed underneath a site_part,

                                                                                this field contains the objid of the parent site_part

install_at_site                       Yes                         For installing parts, should the part be installed at the top-level of the site?

remove_sp                            No                           For removing parts, this is the objid of the site_part to remove

to_loc                                     No                           For removing parts, this is the inventory location (or expense GL) to transfer

                                                                                the part to (if it is being transferred to inventory)

to_bin                                    No                           The bin to transfer the removed site_part to

to_cont                                  No                           The id_number of the container. If not using a container, this argument should be

blank. If you are using a container, the to_bin argument should be the container

name.

to_good                                 Yes                         Should the removed site_part be placed as good or bad stock in inventory

fail_code                                No                           For removing parts, what is the failure code (dropdown list). If left blank, the

                                                                                default code is used

inst_part                                                No                           For installing parts, the part_number to install. If a part request is specified,

                                                                                the default part is taken from the part request

inst_rev                                 No                           For installing parts, the revision (mod_level) to install. If a part request is

specified, the default part revision is taken from the part request

inst_domain                          No                           For installing parts, the domain of the part to install. If a part request

is specified, the default part domain is taken from the part request

inst_serial                              No                           If the part to be installed is serialized, this is the serial number

inst_qty                                 No                           For installing parts, the quantity of parts to install

inst_price                              No                           For installing parts, the price (per part) to use. If left blank, the default US

                                                                                List price is used. For inventory-only transactions, this field may contain the

part number, revision, domain, quantity, and serial number of the part (all separated by '|' characters) to remove to inventory. See above for more details

from_loc                                No                           If the installed part is pulled from inventory, this is the inventory location

                                                                                (or expense GL)

from_bin                                No                           The bin that the installed part is pulled from

from_cont                              No                           The id_number of the container. If not using a container, this argument should be

blank. If you are using a container, the to_bin argument should be the container

name

from_good                            No                           Was the installed part pulled from good or bad stock?

engineer_name                     No                           The login_name of the engineer who performed the parts used action. If

                                                                                left blank, the current user is used

user_name                             No                           The name of the user who logged the action. If left blank, the current user is used.

allow_move                           Yes                         If a serialized part is to be installed, and it already exists as an active

site _part, should we allow the move to occur?

log_date                                                No                           When was the action? If left blank, the current time is used

log_objid                               No                           If you wish to perform only the inventory movements for this log_pu, then

set this argument to �99 as input

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             The Part Usage Type specified is invalid

-2                                             Cannot install at top_level and specify a parent part

-3                                             Cannot install under a parent and not specify parent part

-4                                             Cannot find specified user in database

-5                                             The engineer name supplied is not found in the database

-6                                             The specified part request detail is not found

-7                                             The specified case is not found in the database

-8                                             The parent site_part specified is not found in the database

-9                                             The specified parent site_part is not at the case's (or part request's) site

-10                                           The removed site_part is not at the site for the case (or part request)

-11                                           The specified "to_bin" cannot be found

-12                                           Specified Failure Code is not a valid code

-13                                           A Case ID or Part Request Detail must be specified

-14                                           The part request detail is not related to a case

-15                                           The Specified Case and part request ID are not related to each other

-16                                           Cannot install part because part_number/revision/domain specified is not found

-17                                           Quantity specified must be greater than  0

-18                                           The specified "from_bin" cannot be found

-19                                           Cannot find the "Part Used Variance" expense GL account

-20                                           If serial number tracked, the specified serial number is not found at the "from_bin" � it's

                                                at another location

-21                                           Quantity must be 1 if serial number specified

-22                                           Specified price is not numeric

-23                                           Cannot find the "Part Used" activity string with rank = 11300

-24                                           Cannot find specified condition

-25                                           The specified transition (to "Part Used" or "Update Inv") is not defined

-26                                           The specified user is not authorized to make the transition to the new part request condition

-27                                           Removing a site_part, but no site_part is specified, and the part request (if using one) is not on a site_part

-28                                           Upgrade transaction specified, but the part number or serial number for the install and remove

                                                parts do not agree

-29                                           Trying to install a site_part, but it already exists, and the allow_move flag is set to False

-30                                           The "to" container is sealed

-31                                           The "from" container is sealed

-32                                           Inventory only was selected (log_objid = -99), but no inventory locations were specified

-33                                           For inventory-only removes, the number of variables in the inst_price is not 5

-34                                           Cannot find privilege class for specified user

-35                                           Cannot find old status for part request condition

-36                                           Cannot find new status for part request condition

-37                                           For inventory-only removes, the part number supplied to remove is not found

-38                                           For inventory-only removes, the revision of the part to remove is not found

-39                                           There is no quantity in the "from_bin" to transfer and install the part(s)

-40                                           There is not enough GOOD quantity in the "from_bin" to transfer and install the part(s)

-41                                           There is not enough BAD quantity in the "from_bin" to transfer and install the part(s)

-42                                           Cannot find employee record for specified user in database

-100 -> -199                            Any errors between �100 and �199 are from the call to install site_part. See the documentation

                                                for install_sp in this manual. For example, -101 from this API is the same as �1 from the other

-200 -> -299                            Any errors between �200 and �299 are from deinstall site_part. See the documentation for deinstall_sp in this manual. For example, -201 from this API is the same as �1 from the other

-300 -> -399                            Any errors between �300 and �399 are from the call to part_transfer. See the documentation

                                                for part_transfer in this manual. For example, -301 from this API is the same as �1 from the

other. These codes are for the transfer "to" transaction (remove site_part)

-400 -> -499                            Any errors between �400 and �499 are from the call to part_transfer. See the documentation

                                                for part_transfer in this manual. For example, -401 from this API is the same as �1 from the

other. These codes are for the transfer "from" transaction (install site_part)

-500 -> -599                            Any errors between �500 and �599 are from move_sp. See the documentation for move_sp in this manual. For example, -501 from this API is the same as �1 from the other

-600 -> -699                            Any errors between �600 and �699 are from the call to reinstall_sp. See the documentation

                                                for reinstall_sp in this manual

ret_objid                                The objid of the new part_used object is returned by this parameter.

**Examples**

 Fred performed an exchange of parts. He removed a site_part (related to part request '14-1'), and installed MS Word version 7.0, with a serial number of '1234' (under a site_part). The removed part will be put in the "Restock" bin (as bad inventory), and the installed part was pulled from "San Jose/Bin 4". The action is logged by "sa" on February 20,1998. It is also against case '23'.

**Visual Basic:**

Dim ret_int    As Integer

Dim log_objid  As Long

ret_int = fcfo.log_parts_used("14-1", "23", "Exchange", 268435566, _

    False, 0, "Austin", "Restock", "", False, _

    "Failure code3", "MS Word", "7.0", _

    "Product", "1234", 1, "", "San Jose", _

    "Bin 4", "", True, "Fred", "sa", True, _

    "2/20/98 9:25:00")

   If ret_int = 0 Then

     log_objid = fcfo.ret_objid

   End If

**JavaScript:**

var ret_int = fcfo.log_parts_used("14-1", "23", "Exchange", 268435566,

       false, 0, "Austin", "Restock", "", false,

      "Failure code3", "MS Word", "7.0",

      "Product", "1234", 1, "", "San Jose",

      "Bin 4", "", true, "Fred", "sa", true,

      "2/20/98 9:25:00");

 if (ret_int == 0){ var log_objid = fcfo.ret_objid; }

 Install 5 of a site_part at the top level of a site. Do not do any inventory transfers.

**Visual Basic:**

Dim ret_int    As Integer

Dim log_objid  As Long

ret_int = fcfo.log_parts_used("2-2", "", "Install", 0, True, 0, _

   "", "", "", True, "", "", "", "", _

   "", 5, "", "", "", "", True, _

   "", "",False, "")

   If ret_int = 0 Then

     log_objid = fcfo.ret_objid

   End If

**JavaScript:**

var ret_int = fcfo.log_parts_used("2-2", "", "Install", 0, true, 0,

       "", "", "", true, "", "", "", "",

       "", 5, "", "", "", "", true,

       "", "",false, "");

 if (ret_int == 0){ var log_objid = fcfo.ret_objid; }