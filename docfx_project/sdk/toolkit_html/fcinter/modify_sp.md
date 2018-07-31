modify_sp
---------

modify _sp_list
-----------------

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
        ByVal date_val1 As Long) As Integer

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

This API will modify site_parts in Clarify. They allow many site_part fields to be modified. You must specify the site_part to be modified. The quantity must be specified, either as 1 or more. Most of the other fields can be modified as needed, but the site, part, and mod_level can not be changed. You may determine if activity logs should be added (to the site and to the site_part). If a parameter is left blank, no change is made for that field.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| sp_objid | Yes | The site_part to be modified |
| instance_name | No | The instance name for the site_part. If blank, no change is made. If "#default" is used , the instance_name is generated for you by the API. If  "#clear" is specified, the instance name is cleared |
| serial_num | No | A new serial number. If blank, make no change. If "#clear" is specified, the serial number is cleared |
| invoice_no | No | A new invoice number. If blank, no change is made. If "#clear" is specified, the field is cleared |
| ship_date | No | When was the site_part shipped?  If blank, no change is made |
| install_date | No | When was the site_part installed? If blank, no change is made |
| warranty_date | No | When does the site_part warranty coverage expire? If blank, no change is made |
| quantity | No | A new installed quantity, must be 0 or more. If set to 0, no change is made in the quantity |
| part_status | No | New value from the dropdown list. If blank, no change is made. If "#default", the default value of the list is set |
| comments | No | Comment for the site_part. If blank, no change is made. If set to "#clear", the field is cleared |
| service_end_dt | No | When does the site_part service period end? If blank, no change is made |
| user_name | No | User who performed the install. If blank, current user is used |
| mod_level | No | The new revision of the site_part. This must be a valid mod_level of the part number for the site_part. If blank, no change is made |
| add_activity | Yes | Should activity log entries be generated for modification? |
| fld_list | No | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | No | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | No | List of additional field values to write. List must be present, but does not need to have any items in the list |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             No Site Part Specified                                  

-2                                             Invalid Part Status Specified                           

-3                                             Site Part Specified not in database                     

-4                                             Mod Level for site_part not in database                 

-5                                             Part Number for mod_level not in database               

-6                                             Site for site_part not in database                      

-7                                             User Specified not in database                          

-8                                             "Changed Details" gbst_elm record (3900) not in database

-9                                             Quantity specified can not be < 1                        

-10                                           Serial number specified, so quantity can't be > 1       

-11                                           Part Number is serialized, so quantity can't be > 1      

-12                                           Part Number is not serialized, so serial number is invalid

-13                                           Specified Serial Number is already in use               

-17                                           The new mod_level is not found for the part of the site_part

**Examples**

 Modify site_part 268435460. Change the serial number to "1234.56", and generate activity logs.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcinter.modify_sp(268435460, "", "1234.56", "", _
                            "", "", "", 1, "", _
             "", "", "", "", true)

**Javascript:**

var ret_int = fcinter.modify_sp(268435460, "", "1234.56", "",

                            "", "", "", 1, "",

             "", "", "", "", true);

 Joe Shumaker renewed the service coverage for site_part 268435444. Update the service end date to

       reflect the new coverage. Generate the associated activity logs.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcinter.modify_sp(268435444, "", "", "", "", "", "", 1, "", _
             "", "07/12/2000", "Joe Shumaker", "", true)

**Javascript:**

var ret_int = fcinter.modify_sp(268435444, "", "", "", "", "", "", 1, "",

             "", "07/12/2000", "Joe Shumaker", "", true);