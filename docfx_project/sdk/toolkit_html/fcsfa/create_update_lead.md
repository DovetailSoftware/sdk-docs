create_update_lead
--------------------

create_update_lead_list
-------------------------

Public Function create_update_lead(ByVal lead_objid As Long, _                                   ByVal first_name As String, _
                                   ByVal last_name As String, _
                                   ByVal phone As String, _
                                   ByVal fax As String, _
                                   ByVal address As String, _
                                   ByVal address_2 As String, _
                                   ByVal city As String, _
                                   ByVal state As String, _
                                   ByVal postal_code As String, _
                                   ByVal country As String, _
                                   ByVal time_zone As String, _
                                   ByVal e_mail As String, _
                                   ByVal the_title As String, _
                                   ByVal company_name As String, _
                                   ByVal site_name As String, _
                                   ByVal site_type As String, _
                                   ByVal rating As String, _
                                   ByVal contact_role As String, _
                                   ByVal lead_source As String, _
                                   ByVal user_name As String, _
                                   ByVal create_date As String, _
                                   ByVal gen_time_bombs As Boolean, _
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

Public Function create_update_lead_list(ByVal lead_objid As Long, _ 
                       ByVal first_name As String, _
                       ByVal last_name As String, _
                       ByVal phone As String, _
                       ByVal fax As String, _
                       ByVal address As String, _
                       ByVal address_2 As String, _
                       ByVal city As String, _
                       ByVal state As String, _
                       ByVal postal_code As String, _
                       ByVal country As String, _
                       ByVal time_zone As String, _
                       ByVal e_mail As String, _
                       ByVal the_title As String, _
                       ByVal company_name As String, _
                       ByVal site_name As String, _
                       ByVal site_type As String, _
                       ByVal rating As String, _
                       ByVal contact_role As String, _
                       ByVal lead_source As String, _
                       ByVal user_name As String, _
                       ByVal create_date As String, _
                       ByVal gen_time_bombs As Boolean, _
                       Optional fld_list As Variant, _
                       Optional type_list As Variant, _
                       Optional val_list As Variant) As Integer

**Description**

These APIs are used to create or update leads in Clarify. You specify if it is a create or update with the objid of the lead. If it is = -1, it's a create. Otherwise it's an update. The objid of the lead (for creates) is returned in that same argument.

For almost all of the data, you can specify it, or not (for creates). For updates, if you specify it it will be set. If you leave it blank (""), the current value is retained. If you use the string "CLEAR", the value is cleared.  A few items (such as lead source and contact role) cannot be cleared.

You may specify the user who created/updated the lead, and the date/time of the create/update). You can also specify if time bombs (for business rules) will be generated, or not. Finally, you may set extra fields.

The objid of the newly-created lead will be returned in _fcsfa.ret_objid_.  
  

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| lead_objid | Yes | A variable set to -1 for creates, and to the objid of the lead to update for updates |
| first_name | No | First name of the lead |
| last_name | No | Last name of the lead |
| phone | No | Phone of the lead |
| fax | No | Fax number of the lead |
| address | No | Address line 1 of the lead |
| address_2 | No | Address line 2 of the lead |
| city | No | City of the lead's address |
| state | No | State of the lead's address |
| postal_code | No | The postal/zip code for the address |
| country | No | Country of the lead's address |
| time_zone | No | Time zone of the lead's address |
| e_mail | No | Email address of the lead |
| the_title | No | Title of the lead |
| company_name | No | Company name/account for lead |
| site_name | No | Name of the site for the lead |
| site_type | No | Type of the site. Must be "Business" or "Individual". If an update, it can be set to "" (do not update) |
| rating | No | Rating of the lead. Must be a value from the code list. If blank (creates), the default code list value is used |
| contact_role | No | Contact role for the lead. Must be a value from the code list. If blank (creates), the default contact role is used |
| lead_source | No | Lead source for the contact role. If blank (creates), the default lead source is used |
| user_name | No | Who created/updated the lead? If empty, current user is used |
| create_date | No | When was the lead created/updated?  If empty, current date/time is used |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules). |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             The specified user could not be found

-2                                             Cannot find the specified country

-3                                             Cannot find the specified state for the country

-4                                             Cannot find the specified time_zone for the country

-5                                             Site type is not Business or Individual

-6                                             The specified contact_role is not found

-7                                             The rating specified is not found in the list

-8                                             The specified lead source is not found

-9                                             The activity code string could not be found

-10                                           The specified lead could not be found to update

**Examples**

 Create a new lead. Set most of the fields. Joe created it on January 1, 1999. Generate time bombs, and set a user-defined field.

**Field version:**

**JavaScript:**

var ret_int = fcsfa.create_update_lead(lead_objid, "First", "Last", "Phone",

          "Fax", "110 Main St", "Suite 701", "Sharon",

          "MA", "02067", "USA", "EST", "email", "Title",

          "Company", "Sitename", "Business", "Warm", "Default",

          "Default Lead Source", "joe", "1/1/99", true,

             "x_col_val", 44, "", 0, "", "", "", "", "", "");

**Visual Basic:**

   Dim ret_int    As Integer

Dim lead_objid As Long

lead_objid = -1

ret_int = fcsfa.create_update_lead(lead_objid, "First", "Last", "Phone", _
          "Fax", "110 Main St", "Suite 701", "Sharon", _
          "MA", "02067", "USA", "EST", "email", "Title", _
          "Company", "Sitename", "Business", "Warm", "Default", _
          "Default Lead Source", "joe", "1/1/99", True, _
          "x_col_val", 44, "", 0, "", "", "", "", "", "")

**List version:**

**JavaScript:**

var fld_list  = Server.CreateObject("FCFLCOMPAT.FCLIST");

var type_list = Server.CreateObject("FCFLCOMPAT.FCLIST");

var val_list  = Server.CreateObject("FCFLCOMPAT.FCLIST");

fld_list.AppendItem("x_col_val");

type_list.AppendItem("Long");

val_list.AppendItem("44");

var ret_int = fcsfa.create_quote("Title", "AN_CUST1", "1", "4",

                       "Test", "Customer", "222-2222", "Need Approval", "4",

                       "6", "", "", "fred", "", "marty", 60, true,

                        type_list, val_list);

**Visual Basic:**

   Dim ret_int    As Integer

Dim lead_objid As Long

Dim fld_list   As New FCList

Dim type_list  As New FCList

Dim val_list   As New FCList

fld_list.AppendItem("x_col_val")

type_list.AppendItem("Long")

val_list.AppendItem("44")

lead_objid = -1

ret_int = fcsfa.create_update_lead(lead_objid, "First", "Last", "Phone", _
          "Fax", "110 Main St", "Suite 701", "Sharon", _
          "MA", "02067", "USA", "EST", "email", "Title", _
          "Company", "Sitename", "Business", "Warm", "Default", _
          "Default Lead Source", "joe", "1/1/99", True, _
          fld_list, type_list, val_list)