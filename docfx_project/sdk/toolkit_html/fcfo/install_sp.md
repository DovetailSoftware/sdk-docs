install_sp
----------

install_sp_list
-----------------

```
Public Function install_sp(ByVal site_id As String, _
		ByVal part_num As String, ByVal mod_level As String, _
		ByVal domain As String, ByVal quantity As Long, _
		ByVal serial_num As String, ByVal parent_bin_objid As Long, _
		ByVal parent_sp_objid As Long, ByVal instance_name As String, _
		ByVal comment As String, ByVal part_status As String, _
		ByVal invoice_no As String, ByVal user_name As String, _
		ByVal install_date As String, ByVal ship_date As String, _
		ByVal add_activity As Boolean) As Integer
```

```
Public Function install_sp_list(ByVal site_id As String, _
		ByVal part_num As String, ByVal mod_level As String, _
		ByVal domain As String, ByVal quantity As Long, _
		ByVal serial_num As String, ByVal parent_bin_objid As Long, _
		ByVal parent_sp_objid As Long, ByVal instance_name As String, _
		ByVal comment As String, ByVal part_status As String, _
		ByVal invoice_no As String, ByVal user_name As String, _
		ByVal install_date As String, ByVal ship_date As String, _
		ByVal add_activity As Boolean, Optional fld_list As Variant, _
		Optional type_list As Variant, Optional val_list As Variant) As Integer
```

#### Description

These APIs install _site_parts_ in Clarify. They are very sophisticated and allow virtually any type of install. You must specify a site where the site_part is to be installed, along with the part number, revision and domain for the part. The quantity must be specified. For serial number parts, the serial number is also specified. The part can be installed at the top level of the site, under another site_part or in a bin. An optional instance_name can be specified, as well as the status of the part, a comment, the invoice number, and the install/ship dates. You may determine if activity logs should be added (to the site and to the site_part), and the objid of the top site_part created will be returned.

If the part revision to be installed has a bill of materials (BOM), that BOM will also be installed at the site under the new site_part. If the sub-parts are serial tracked, the APIs will generate the proper new serial numbers for the sub-parts. If the part to be installed is serialized, and the quantity is > 1, the API will generate individual parts for you (sub-parts only).

Other data (such as the warranty end date) is automatically calculated and filled in by the API.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
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
| part_status | No | Value from the PART_STATUS list. If left blank, the default value is used |
| invoice_no | No | The invoice number |
| user_name | No | Who performed the install? If left blank the current user does the install |
| install_date | No | When was the site_part installed? If blank, current time is used |
| ship_date | No | When was the site_part shipped? If blank, current time is used |
| add_activity | Yes | Should activity log entries be generated? |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | The specified site_id is not found |
| -2 | Part number cannot be found from supplied part_num and domain |
| -3 | The specified part revision (mod_level) does not exist |
| -4 | The specified user cannot be found |
| -5 | Cannot find the 'Install' activity string with rank = 3600 |
| -6 | The parent bin specified does not exist |
| -7 | The parent site_part specified does not exist |
| -8 | The supplied part status is not found |
| -9 | Both a parent bin and a parent site_part were specified. Cannot install under both |
| -10 | Positive quantity to install not supplied |
| -11 | A serial number was supplied, and a quantity > 1 |
| -12 | The part is serialized, and a quantity > 1 was given |
| -13 | This part may only be installed within another part |
| -14 | This part may only be installed at the site or in a bin |
| -15 | The domain rules for this part specify no serial number, but a serial number was supplied |
| -16 | This part has unique serialization (from the domain) that would be violated by the install |
| -17 | This part is not able to be installed at a site or under another part |
| ret_objid | This property will contain the objid of new site_part installed |

#### Examples

Install an MS Word 7.0 at the top-level of site "1234". Install it with serial number "xyzzy", and generate activity logs. Install with status "Installed/Good".

**Visual Basic:**

Dim ret_int    As Integer
```

Dim sp_objid   As Long

ret_int = fcfo.install_sp("1234", "MS Word", "7.0", "Product", 1, _
           "xyzzy", 0, 0, "", "", "Installed/Good", "", _
           "", "", "", True)
  
   If ret_int = 0 Then
  
     sp_objid = fcfo.ret_objid
 End If
 
**JavaScript:**

var ret_int = fcfo.install_sp("1234", "MS Word", "7.0", "Product", 1,
  
   "xyzzy", 0, 0, "", "", "Installed/Good", "",
  
              "", "", "", true);

 if (ret_int == 0){ var sp_objid = fcfo.ret_objid; }

 Joe installs a quantity tracked part (30 of them) in a bin at site "444". It was shipped on February 1, 1998, and installed a month later. Don't add activity logs. Set two other user-defined fields.

**Visual Basic:**

Dim ret_int    As Integer
```

Dim sp_objid   As Long

ret_int = fcfo.install_sp("444", "QuantPart", "", "Quantity", 30, _
           "", 268435457, 0, "", "", "", "", "", _
          "3/1/98", "2/1/98", False, "x_long", 22, "", _
0, "x_string", "Hello!!", "", "", "", "")
  
   If ret_int = 0 Then
  
     sp_objid = fcfo.ret_objid
 End If
 
**JavaScript:**

var ret_int = fcfo.install_sp("444", "QuantPart", "", "Quantity", 30,
  
   "", 268435457, 0, "", "", "", "", "",
  
   "3/1/98", "2/1/98", false, "x_long", 22, "",  
  
0, "x_string", "Hello!!", "", "", "", "");

 if (ret_int == 0){ var sp_objid = fcfo.ret_objid; }