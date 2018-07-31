install_sp
----------

install_sp_list
-----------------

Public Function install_sp(ByVal site_id As String, _
                           ByVal part_num As String, _
         ByVal mod_level As String, _
         ByVal domain As String, _
         ByVal quantity As Long, _
         ByVal serial_num As String, _
         ByVal parent_bin_objid As Long, _
         ByVal parent_sp_objid As Long, _
         ByVal instance_name As String, _
         ByVal comment As String, _
         ByVal part_status As String, _
         ByVal invoice_no As String, _
         ByVal user_name As String, _
         ByVal install_date As String, _
         ByVal ship_date As String, _
         ByVal add_activity As Boolean, _
         ByVal int_fld1 As String, _
         ByVal int_val1 As Long, _
         ByVal int_fld2 As String, _
         ByVal int_val2 As Long, _
         ByVal str_fld1 As String, _
         ByVal str_val1 As String, _
         ByVal str_fld2 As String, _
         ByVal str_val2 As String, _
         ByVal date_fld1 As String, _
         ByVal date_val1 As Long) As Integer

Public Function install_sp_list(ByVal site_id As String, _
                                ByVal part_num As String, _
              ByVal mod_level As String, _
              ByVal domain As String, _
              ByVal quantity As Long, _
              ByVal serial_num As String, _
              ByVal parent_bin_objid As Long, _
              ByVal parent_sp_objid As Long, _
              ByVal instance_name As String, _
              ByVal comment As String, _
              ByVal part_status As String, _
              ByVal invoice_no As String, _
              ByVal user_name As String, _
              ByVal install_date As String, _
              ByVal ship_date As String, _
              ByVal add_activity As Boolean, _
              Optional fld_list As Variant, _
              Optional type_list As Variant, _
              Optional val_list As Variant) As Integer

**Description**

These APIs install site_parts in Clarify. They are very sophisticated and allow virtually any type of install. You must specify a site where the site_part is to be installed, along with the part number, revision and domain for the part. The quantity must be specified. For serial number parts, the serial number is also specified. The part can be installed at the top level of the site, under another site_part or in a bin. An optional instance_name can be specified, as well as the status of the part, a comment, the invoice number, and the install/ship dates. You may determine if activity logs should be added (to the site and to the site_part), and the objid of the top site_part created will be returned.

If the part revision to be installed has a bill of materials (BOM), that BOM will also be installed at the site under the new site_part. If the sub-parts are serial tracked, the APIs will generate the proper new serial numbers for the sub-parts. If the part to be installed is serialized, and the quantity is > 1, the API will generate individual parts for you (sub-parts only).

Other data (such as the warranty end date) is automatically calculated and filled in by the API.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| site_id | Yes | Where to install the site_part |
| part_num | Yes | The part number to install |
| mod_level | Yes | The revision of the part |
| domain | Yes | The domain of the part |
| quantity | Yes | How many to install |
| serial_num | No | The serial number of the part to install |
| parent_bin_objid | No | The objid of the bin to install under. If no bin is to be used, set to 0 |
| parent_sp_objid | No | The objid of the site_part to install under. If this is under a bin, or it is a top-level part, set this argument = 0 |
| instance_name | No | The instance name for the site_part. If this is left blank, the instance_name is generated for you by the API |
| comment | No | Comment for the site_part |
| part_status | No | Value from the dropdown list. If left blank, the default value is used |
| invoice_no | No | The optional invoice number |
| user_name | No | Who performed the install. If left blank the current user does the install |
| install_date | No | When was the site_part installed? If blank, current time is used |
| ship_date | No | When was the site_part shipped? If blank, current time is used |
| add_activity | Yes | Should activity log entries be generated? |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             The specified site_id is not found

-2                                             Part number cannot be found from supplied part_num and domain

-3                                             The specified part revision (mod_level) does not exist

-4                                             The specified user cannot be found

-5                                             Cannot find activity string for "Install" rank equal to 3600

-6                                             The parent bin specified does not exist

-7                                             The parent site_part specified does not exist

-8                                             The part_status supplied is not in the dropdown list

-9                                             Both a parent bin and a parent site_part were specified. Cannot install under both

-10                                           Positive quantity to install not supplied

-11                                           A serial number was supplied, and a quantity > 1

-12                                           The part is serialized, and a quantity > 1 was given

-13                                           This part may only be installed within another part

-14                                           This part may only be installed at the site or in a bin

-15                                           The domain rules for this part specify no serial number, but a serial number was supplied

-16                                           This part has unique serialization (from the domain) that would be violated by the install

-17                                           This part is not able to be installed at a site or under another part

-18                                           This part may only be installed within another part of specific domain |
| ret_objid | Output | Returns the objid of the site part

**Examples**

 Install an MS Word 7.0 at the top-level of site "1234". Install it with serial number "xyzzy", and generate activity logs. Install with status "Installed/Good".

**Visual Basic:**

Dim ret_int    As Integer

Dim sp_objid   As Long

ret_int = fcinter.install_sp("1234", "MS Word", "7.0", _
                             "Product", 1, "xyzzy", _      

              0, 0, "", "", "Installed/Good", _
              "", "", "", "", true)

 If ret_int = 0 Then

      sp_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.install_sp("1234", "MS Word", "7.0",

                             "Product", 1, "xyzzy",       

              0, 0, "", "", "Installed/Good",

              "", "", "", "", true);

 if (ret_int == 0){ var sp_objid = fcinter.ret_objid; }

 Joe installs a quantity tracked part (30 of them) in a bin at site "444". It was shipped on February 1, and installed a month later. Don't add activity logs. Set two other fields.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcinter.install_sp("444", "QuantPart", "", "Quantity", _
 30, "", 268435457, 0, "", "", "", "",_
              "", "3/1/98", _
              "2/1/98", true, "x_my_long", 22, "", 0, _
              "x_my_str_field", "Hello!!", "", _
 "", "","")

**Javascript:**

var ret_int = fcinter.install_sp("444", "QuantPart", "", "Quantity",

 30, "", 268435457, 0, "", "", "", "",

              "", "3/1/98",

              "2/1/98", true, "x_my_long", 22, "", 0,

              "x_my_str_field", "Hello!!", "",

              "", "","");