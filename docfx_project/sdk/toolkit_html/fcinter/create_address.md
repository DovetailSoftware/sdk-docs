create_address
--------------

create_address_list
---------------------

Public Function create_address(ByVal addr1 As String, _

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

Public Function create_address_list(ByVal addr1 As String, _

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

These APIs create new addresses in the database. You must specify one of the two address lines, the city, state, country, and time zone.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

addr1                                      No                           Address line 1

addr2                                      No                           Address line 2

city                                         Yes                         City

state                                       Yes                         State

short_state                            Yes                         Is the "state" field the "short state name" (Ex: TX), or the long state name

(Ex: Texas)

zip                                           Yes                         Zipcode

country                                  Yes                         Country

time_zone                              Yes                         Time zone

int_fld1, int_fld2                   No                           Names of additional fields to write

str_fld1, str_fld2

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. These values are only used if the

str_val1, str_val2                                                 corresponding field name field is filled with a valid field name

date_val1

fld_list                                    Yes                         List of additional field names to write. List must be present, but does not

                                                                                need to have any items in the list

type_list                                                Yes                         List of additional field data types to write. List must be present, but does not

                                                                                need to have any items in the list

val_list                                   Yes                         List of additional field values to write. List must be present, but does not

                                                                                need to have any items in the list

**Returns**

**Value                                     Meaning                                                                                                                                               **

1 No errors

-1                                             Either address or address2 must have data

-2                                             City must be specified

-3                                             State must be specified

-4                                             Zipcode must be specified

-5                                             Country must be specified

-6                                             Time zone must be specified

-7                                             The specified country is not found

-8                                             The specified state is not found for the country

-9                                             The specified time zone is not found for the country

ret_objid                                Output                   Returns the objid of the new address

**Examples**

 Create an address.

**Visual Basic:**

Dim ret_int        As Integer

Dim address_objid  As Long

ret_int = fcinter.create_address("101 Main St.", "Suite 100",_

                                 "Austin", "TX", true, "78759", "USA", _

                                 "CST", "", 0, "", 0, "", "", _

                                 "", "", "", "")

 If ret_int = 0 Then

      address_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.create_address("101 Main St.", "Suite 100",

                                 "Austin", "TX", true, "78759", "USA",

                                 "CST", "", 0, "", 0, "", "",

                                 "", "", "", "");

 if (ret_int == 0){ var address_objid = fcinter.ret_objid; }