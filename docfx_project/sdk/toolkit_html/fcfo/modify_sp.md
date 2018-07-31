modify_sp
---------

modify_sp_list
----------------

Public Function modify_sp(ByVal sp_objid As Long, _
                          ByVal instance_name As String, _
                          ByVal serial_num As String, _
                          ByVal invoice_no As String, _
                          ByVal ship_date As String, _
                          ByVal install_date As String, _
                          ByVal warranty_date As String, _
                          ByVal quantity As Long, _
                          ByVal part_status As String, _
                          ByVal comments As String, _
                          ByVal service_end_dt As String, _
                          ByVal user_name As String, _
                          ByVal mod_level As String, _
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
                          ByVal date_val1 As String) As Integer

Public Function modify_sp_list(ByVal sp_objid As Long, _
                               ByVal instance_name As String, _
                               ByVal serial_num As String, _
                               ByVal invoice_no As String, _
                               ByVal ship_date As String, _
                               ByVal install_date As String, _
                               ByVal warranty_date As String, _
                               ByVal quantity As Long, _
                               ByVal part_status As String, _
                               ByVal comments As String, _
                               ByVal service_end_dt As String, _
                               ByVal user_name As String, _
                               ByVal mod_level As String, _
                               ByVal add_activity As Boolean, _
                               Optional fld_list As Variant, _
                               Optional type_list As Variant, _
                               Optional val_list As Variant) As Integer

**Description**

These APIs allow you to modify an existing site part in the Clarify database. You must pass in a valid site part objid. You can then specify other data to modify the existing site_part record with. You also have the option of adding an activity log for this operation, or not. Finally, you may specify additional fields on the activity log, if desired.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| site_part_objid | Yes | The OBJID of the site_part to modify |
| instance_name | No | Instance name of the site_part. If blank, no change is made. If set to "#default", the instance name is set to the part number and mod_level of the site_part |
| serial_num | No | Serial number for the site_part. If blank, no change is made. |
| invoice_no | No | Invoice number for the site_part. If blank, no change is made. |
| ship_date | No | Ship date of the site_part.  If blank, no change is made. |
| install_date | No | Install date of the site_part. If blank, no change is made. |
| warranty_date | No | Warranty date of the site_part. If blank, no change is made. |
| quantity | No | Quantity of the site_part. |
| part_status | No | Part status of the site_part. If blank, no change is made. |
| comments | No | Comments for the site_part. If blank, no change is made. |
| service_end_dt | No | Service end date for site_part. If blank, no change is made. |
| user_name | No | Who modified the site_part. If blank, current user is used. |
| mod_level | No | Revision for the site_part. Used for instance name if default instance name is set. |
| add_activity | Yes | Do we add an activity log for the site_part, or not. |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Site part objid of 0 supplied

-2                                             Invalid PART_STATUS supplied

-3                                             Could not find specified site_part

-4                                             Could not locate the mod_level for the site_part

-5                                             Could not locate the part for the site_part

-6                                             Site for the site_part could not be found

-7                                             The specified user is not found in the database

-8                                             Cannot locate activity string for "CHANGED DETAILS"

-9                                             Quantity specified is < 1

-10                                           A serial number and a quantity > 1 were both specified

-11                                           Serialized site_part with quantity > 1

-12                                           The site_part is not serialized, but a serial number was provided

-13                                           The serial number provided is already in use

-17                                           New mod_level is not found for the part for the site_part

**Example**

 Update an existing site part (268435460). Set the instance_name only. Generate an activity log.

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fcfo.modify_sp(268435460, "New instance name", "", "", "", "", "", _
            1, "", "", "", "", "", True, "", 0, "", 0, "", "", "", "", "", "")

**JavaScript:**

Var ret_int = fcfo.modify_sp(268435460, "New instance name", "", "", "", "", "",

            1, "", "", "", "", "", true, "", 0, "", 0, "", "", "", "", "", "");

 Update an existing site part (268435461). Modify the serial number and ship date. Do not add an activity log

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fcfo.modify_sp(268435461, "", "ABCD", "", "1/1/2005", "", "", _
            1, "", "", "", "", "", False, "", 0, "", 0, "", "", "", "", "", "")

**JavaScript:**

Var ret_int = fcfo.modify_sp(268435461, "", "ABCD", "", "1/1/2005", "", "",

            1, "", "", "", "", "", false, "", 0, "", 0, "", "", "", "", "", "");