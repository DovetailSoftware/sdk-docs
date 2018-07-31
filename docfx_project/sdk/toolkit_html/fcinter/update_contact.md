update_contact
--------------

update_contact_list
---------------------

update_contact_objid_list
---------------------------

Public Function update_contact(ByVal first As String, ByVal last As String, _
       ByVal phone As String, ByVal site_id As String, ByVal role As String, _
       ByVal fax As String, ByVal email As String, ByVal mail_stop As String, _
       ByVal the_title As String, ByVal hours As String, _
       ByVal salutation As String, ByVal new_first As String, _
       ByVal new_last As String, ByVal new_phone As String, _
       ByVal new_prim_site_id As String, ByVal new_prim_role As String, _
       ByVal int_fld1 As String, ByVal int_val1 As Long, ByVal int_fld2 As String, _
       ByVal int_val2 As Long, ByVal str_fld1 As String, ByVal str_val1 As String, _
       ByVal str_fld2 As String, ByVal str_val2 As String, _
       ByVal date_fld1 As String, ByVal date_val1 As String) As Integer

Public Function update_contact_list(ByVal first As String, _
       ByVal last As String, ByVal phone As String, ByVal site_id As String, _
       ByVal role As String, ByVal fax As String, ByVal email As String, _
       ByVal mail_stop As String, ByVal the_title As String, _
       ByVal hours As String, ByVal salutation As String, _
       ByVal new_first As String, ByVal new_last As String, _
       ByVal new_phone As String, ByVal new_prim_site_id As String, _
       ByVal new_prim_role As String, Optional fld_list As Variant, _
       Optional type_list As Variant, Optional val_list As Variant) As Integer

Public Function update_contact_objid_list(ByVal contact_objid As Integer, _
       ByVal site_id As String, ByVal role As String, ByVal fax As String, _
       ByVal email As String, ByVal mail_stop As String, ByVal the_title As String, _
       ByVal hours As String, ByVal salutation As String, _
       ByVal new_first As String, ByVal new_last As String, _
       ByVal new_phone As String, ByVal new_prim_site_id As String, _
       ByVal new_prim_role As String, Optional fld_list As Variant, _
       Optional type_list As Variant, Optional val_list As Variant) As Integer

**Description**

These APIs update a contact in the database. The update_contact and update_contact_list APIs use the first name, last name, and phone are used to look up the contact in the database. The update_contact_objid_list looks up the contact by objid. The other fields for the contact can be set. If they are left blank, then they are not set but are left at their current values.

Three fields are supplied that allow you to change the name or phone number of the contact.

The APIs also create contact roles (if needed). The API can therefore be used to add additional contact roles for a contact. Simply specify the contact name/phone (or objid), the site for the contact and the role. If the role doesn't exist, then it will be created. If the role already exists, a positive return code (+1) will be returned.

The new_prim_site and new_prim_role fields allow the primary contact role to be changed or modified for a contact. If neither field has a value supplied, the contact information is changed as described above. If only the new site is supplied, the current primary role will be updated to be shown at the new site. If only the new role is supplied, the current primary role will be changed, and will remain at the current site. If both are supplied, the current primary role will be updated to reflect both the new site and role.

**Note:** If you wish to create a duplicate contact (same first, last, and phone as another contact in the database), you may use the _allow_duplicate_contact_ property.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| contact_objid | Yes* | Objid of the contact
| first | Yes* | First name of the contact
| last | Yes* | Last name of the contact
| phone | Yes* | Phone number of the contact |
| site_id | Yes | Site ID for the contact role to create |
| role | Yes | The contact role to create |
| fax | No | Fax number for contact |
| email | No | Email address for contact |
| mail_stop | No | Mail stop for contact |
| the_title | No | Job title for contact |
| hours | No | Job hours for contact |
| salutation | No | Salutation for contact |
| new_first | No | New first name for contact (updates) |
| new_last | No | New last name for contact (updates) |
| new_phone | No | New phone number for contact (updates) |
| new_prim_site_id | No | New primary site ID |
| new_prim_role | No | New primary role name |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

\* \- contact_objid is required for update_contact_objid_list. first, last, phone are required for update_contact and update_contact_list. |

**Returns**

**Value**                **Meaning**

0                                              No errors

1                                              Contact role already exists

-1                                             First, Last, Phone not supplied for contact

-2                                             Could not find the specified site

-3                                             Could not find specified contact role in list

-4                                             A contact with the same first name, last name and phone already exists

-5                                             Cannot find the activity string CREATE CONTACT rank equal to 14000                 

-6                                             Cannot find the activity string MODIFY rank equal to 1500

-7                                             The specified role for the contact is already an alternate role for the specified site

-8                                             The specified role for the contact is already the primary role for the specified site

-9                                             The specified new site for the new primary role does not exist

-10                                           Could not find specified new primary contact role in list

-11                                           The specified role for the contact is already an alternate role for the specified site |
| ret_objid | Output | Returns the objid of the contact

**Examples**

 Update Mary Smith. Change her name to "Mary Jones", and her phone number.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcinter.update_contact("Mary", "Smith", "555-1213", _
          "43", "End User", "", "", "", "", "","", "Jones", _
"555-2222", "", "", "", 0, "", 0, "", "", "", "", _
          "", "")

**Javascript:**

var ret_int = fcinter.update_contact("Mary", "Smith",

              "555-1213", "43", "End User", "", "", "", "", "",

              "", "Jones", "555-2222", "", "", "", 0, "", 0, "",

"", "", "", "", "");

 Update Mary Jones. Change her primary contact role to be 'Supervisor' at the current location.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcinter.update_contact("Mary", "Jones", "555-2222", _
          "43", "End User", "", "", "", "", "","", "", _
"","", "Supervisor", "", 0, "", 0, "", "", "", "", _
          "", "")

**Javascript:**

var ret_int = fcinter.update_contact("Mary", "Jones",

              "555-2222", "43", "End User", "", "", "", "", "",

              "", "", "","", "Supervisor", "", 0, "", 0, "",

"", "", "", "", "");