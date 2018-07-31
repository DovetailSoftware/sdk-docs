update_address
--------------

update_address_list
---------------------

Public Function update_address(ByVal addr_objid As Long, _
                               ByVal addr1 As String, _
                               ByVal addr2 As String, _
                               ByVal city As String, _
                               ByVal state As String, _
                               ByVal short_state As Boolean, _
                               ByVal zip As String, _
                               ByVal country As String, _
                               ByVal time_zone As String, _
                               ByVal int_fld1 As String, _
                               ByVal int_val1 As Long, _
                               ByVal int_fld2 As String, _
                               ByVal int_val2 As Long, _
                               ByVal str_fld1 As String, _
                               ByVal str_val1 As String, _
                               ByVal str_fld2 As String, _
                               ByVal str_val2 As String, _
                               ByVal date_fld1 As String, _
                               ByVal date_val1 As String) As Integer

Public Function update_address_list(ByVal addr_objid As Long, _
                                    ByVal addr1 As String, _
                                    ByVal addr2 As String, _
                                    ByVal city As String, _
                                    ByVal state As String, _
                                    ByVal short_state As Boolean, _
                                    ByVal zip As String, _
                                    ByVal country As String, _
                                    ByVal time_zone As String, _
                                    Optional fld_list As Variant, _
                                    Optional type_list As Variant, _
                                    Optional val_list As Variant) As Integer

**Description**

These APIs update addresses in the database. You must supply the objid of the address to update, and the fields to modify. If you don't wish to modify a specific field, you should leave it blank ("").

If you wish to change address line 1 or line 2 to be blank, you may use the additional fields (str_fld1, str_fld2) to set

it.

#### Parameters
**Parameter Name**                **Required?**             **Description**

addr_objid                             Yes                         Objid of address to update

addr1                                      No                           Address line 1

addr2                                      No                           Address line 2

city                                         No                           City

state                                       No                           State

short_state                            Yes                         Is the "state" field the "short state name" (Ex: TX), or the long state name

(Ex: Texas)

zip                                           No                           Zipcode

country                                  No                           Country

time_zone                              No                           Time zone

int_fld1, int_fld2                   No                           Names of additional fields to write

str_fld1, str_fld2

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. These values are only used if the

str_val1, str_val2                                                 corresponding field name field is filled with a valid field name

date_val1

fld_list                                    Yes                         List of additional field names to write. List must be present, but does not

                                                                                need to have any items in the list

type_list                                                Yes                         List of additional field data types to write. List must be present, but does not

                                                                                need to have any items in the list

val_list                                   Yes                         List of additional field values to write. List must be present, but does not

                                                                                need to have any items in the list

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified address

-2                                             Cannot find the specified country

-3                                             Cannot find the specified state

-4                                             Cannot find the specified time zone

**Examples**

 Update an address. Only update the address line 1 and the state.

**Visual Basic:**

Dim ret_int  As Integer

ret_int = fcinter.update_address(268435012, "101 Main St.", "", _
 "", "LA", true, "", _
                                 "USA", "", "", 0, "", 0, _
 "", "", "", "", "", "")

**Javascript:**

var ret_int = fcinter.update_address(268435012, "101 Main St.", "",

 "", "LA", true, "",

                                 "USA", "", "", 0, "", 0,

 "", "", "", "", "", "");