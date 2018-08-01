create_contact
--------------

create_contact_list
---------------------

```
Public Function create_contact(ByVal first As String, ByVal last As String, _
       ByVal phone As String, ByVal site_id As String, ByVal role As String, _
       ByVal fax As String, ByVal email As String, ByVal mail_stop As String, _
       ByVal the_title As String, ByVal hours As String, _
       ByVal salutation As String, _
       ByVal int_fld1 As String, ByVal int_val1 As Long, ByVal int_fld2 As String, _
       ByVal int_val2 As Long, ByVal str_fld1 As String, ByVal str_val1 As String, _
       ByVal str_fld2 As String, ByVal str_val2 As String, _
       ByVal date_fld1 As String, ByVal date_val1 As String) As Integer
```

```
Public Function create_contact_list(ByVal first As String, _
       ByVal last As String, ByVal phone As String, ByVal site_id As String, _
       ByVal role As String, ByVal fax As String, ByVal email As String, _
       ByVal mail_stop As String, ByVal the_title As String, _
       ByVal hours As String, ByVal salutation As String, _
       Optional fld_list As Variant, Optional type_list As Variant, _
       Optional val_list As Variant) As Integer
```

#### Description

These APIs create a contact in the database. The APIs also create the contact role record.

**Note:** If you wish to create a duplicate contact (same first, last, and phone as another contact in the database), you may use the _allow_duplicate_contact_ property.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| first | Yes | First name of the contact |
| last | Yes | Last name of the contact |
| phone | Yes | Phone number of the contact |
| site_id | Yes | Site ID for the contact role to create |
| role | Yes | The contact role to create |
| fax | No | Fax number for contact |
| email | No | Email address for contact |
| mail_stop | No | Mail stop for contact |
| the_title | No | Job title for contact |
| hours | No | Job hours for contact |
| salutation | No | Salutation for contact |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | First, Last, Phone not supplied for contact |
| -2 | Could not find the specified site |
| -3 | Could not find specified contact role in list |
| -4 | A contact with the same first name, last name and phone already exists |
| -5 | Cannot find the activity string CREATE CONTACT rank equal to 14000 |
| ret_objid | Output - Returns the objid of the new contact |

#### Examples

 Add a new contact to the database.

**Visual Basic:**

Dim ret_int       As Integer
```

Dim contact_objid As Long

ret_int = fcinter.create_contact("Mary", "Smith", "555-1213", _
          "43", "End User", "555-1314", "mary@com.net", "Stop 33", _    

          "Boss", "", "Ms.", "", 0, "", 0, _
          "", "", "", "", "", "")

 If ret_int = 0 Then

      contact_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.create_contact("Mary", "Smith", "555-1213",

              "43", "End User", "555-1314", "mary@com.net", "Stop 33",

              "Boss", "", "Ms.", "", 0, "", 0,

              "", "", "", "", "", "");

 if (ret_int == 0){ var contact_objid = fcinter.ret_objid; }