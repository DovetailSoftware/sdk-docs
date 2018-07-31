create_case_objid
-------------------

create_case_objid_list
------------------------

Public Function create_case_objid(ByVal site_id As String, _
                ByVal f_name As String, ByVal l_name As String, _
                ByVal phone_num As String, ByVal part_num As String, _
                ByVal mod_level As String, ByVal domain_name As String, _
                ByVal serial_no As String, ByVal sp_objid As Long, _
                ByVal contract_id As String, ByVal the_title As String, _
                ByVal case_type As String, ByVal priority_str As String, _
                ByVal severity_str As String, ByVal status_str As String, _
                ByVal phone_log As String, ByVal queue_name As String, _
                ByVal cr_date As String, ByVal phone_end_date As String, _
                ByVal user_name As String, ByVal gen_time_bombs As Boolean, _
                ByVal contact_objid As Integer, ByVal site_objid As Integer,_
                ByVal ml_objid As Integer, ByVal contract_objid As Integer, ByVal addr_objid As Integer,_
                ByVal int_fld1 As String, ByVal int_val1 As Long, _
                ByVal int_fld2 As String, ByVal int_val2 As Long, _
                Byval str_fld1 As String, ByVal str_val1 As String, _
                ByVal str_fld2 As String, ByVal str_val2 As String, _
                ByVal date_fld1 As String, ByVal date_val1 As String) As Integer

Public Function create_case_objid_list(ByVal site_id As String, _
                ByVal f_name As String, ByVal l_name As String, _
                ByVal phone_num As String, ByVal part_num As String, _
                ByVal mod_level As String, ByVal domain_name As String, _
                ByVal serial_no As String, ByVal sp_objid As Long, _
                ByVal contract_id As String, ByVal the_title As String, _
                ByVal case_type As String, ByVal priority_str As String, _
                ByVal severity_str As String, ByVal status_str As String, _
                ByVal phone_log As String, ByVal queue_name As String, _
                ByVal cr_date As String, ByVal phone_end_date As String, _
                ByVal user_name As String, ByVal gen_time_bombs As Boolean, _
                ByVal contact_objid As Integer, ByVal site_objid As Integer,_
                ByVal ml_objid As Integer, ByVal contract_objid As Integer, ByVal addr_objid As Integer,_
                Optional fld_list As Variant, Optional type_list As Variant, _
                Optional val_list As Variant) As Integer

**Description**

These APIs are used to create new cases. These _objid versions of the create_case APIs allow the objids for contact, site, address, mod_level, and contract to be specified. This allows for improved performance, as the API does have to query to verify this data. However, because the API doesn't validate these objids, it assumes they are correct, so it is important that the caller be sure they are passing in valid objids. Other than that, these APIs function the same was as the create_case APIs.

If successful, these APIs return both the _objid_ and the _id_number_ of the newly-created case. They are returned in the FCCS object variables _ret_objid_  and _ret_id_num_.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| site_id | Yes | Which site reported the case |
| first | Yes | First name of contact calling in the case |
| last | Yes | Last name of contact calling in the case |
| phone | Yes | Phone number of contact calling in the case |
| part_num | No | Part number of case part or site_part |
| mod_level | No | Revision of case part or site_part. If the revision is NULL (Oracle only), still use the empty string ("") to query |
| domain | No | Domain of case part or site_part |
| serial_no | No | Serial number of the site_part for the case (if there is one) |
| sp_objid | No | Objid of site_part for the case (if externally queried) |
| contract | No | ID of the contract for the case. If left blank, there is no contract |
| the_title | No | Title for the case. It is suggested that you always have a title |
| case_type | No | Case type for the case. If left blank, default value is used |
| priority | No | Priority for the case. If left blank, default value is used |
| severity | No | Severity for the case. If left blank, default value is used |
| status | No | Initial status for the case. If left blank, default status is used |
| phone_log | No | Phone notes for the case |
| queue_name | No | Name of the queue to dispatch the case to. If left blank, the case is not initially dispatched |
| cr_date | No | Case creation date. If left blank, current date/time is used |
| phone_end_date | No | If there is a phone log, this is the date/time that the call ended. If left blank, the case creation time is used |
| user_name | No | The user who created the case. If left blank, the current user performs the create |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules). and prior warning time? |
| contact_objid | No | Objid for the contact |
| site_objid | No | Objid for the site |
| ml_objid | No | Objid for the mod_level (part revision) |
| contract_objid | No | Objid for the contract |
| addr_objid | No | Objid for the address |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified site

-2                                             Cannot find the specified contact

-3                                             Cannot find the specified part number

-4                                             The mod_level is not valid for the specified part

-5                                             The serial number specified is not valid for the part/mod_level

-6                                             The specified site_part is at another site

-7                                             The specified site_part is not found

-10                                           The phone log end time is prior to the case creation time

-11                                           The phone log text file is not found

-12                                           The specified user is not found

-13                                           The specified case type is not found

-14                                           The specified priority is not found

-15                                           The specified severity is not found

-16                                           The specified status is not found

-17                                           The CREATE activity string is not found

-18                                           The PHONE LOG activity string is not found

-19                                           The DISPATCH activity string is not found

-20                                           The specified Phone Log action type string is not found

-21                                           Cannot find a primary address for the specified site

-22                                           The specified contract is not found

-23                                           The specified queue is not found

-25                                           Could not locate an employee record for the specified user

**JavaScript Example  **

Create a new case, specifying the contact and site objid.

  
var site_id = '';  
var first = '';  
var last = '';  
var phone = '';  
var part_num = '';  
var mod_level = '';  
var domain = '';  
var serial_no = '';  
var sp_objid = 0;  
var contract_id = '';  
var title = 'Something interesting goes here';  
var case_type = '';  
var priority = '';  
var severity = '';  
var status = '';  
var phone_log = '';  
var queue = '';  
var create_date = '';  
var phone_end_date = '';  
var user_name = '';  
var gen_time_bombs = true;  
var contact_objid = 268435499;  
var site_objid = 269657432;  
var ml_objid = 0;  
var contract_objid = 0;  
var addr_objid = 0;  
  
var ret_int = fccs.create_case_objid_list(first,last,phone,sp_objid,title,  
case_type,priority,severity,status,phone_log,  
queue,create_date,phone_end_date,user_name,gen_time_bombs,  
contact_objid,site_objid,ml_objid,contract_objid,addr_objid,  
fld_list,type_list,val_list);