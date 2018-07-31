make_pr_detail
----------------

make_pr_detail_list
---------------------

Public Function make_pr_detail(ByVal hdr_num As String, _
                             ByVal queue_name As String, ByVal part_num As String, _
                             ByVal domain_name As String, ByVal mod_level As String, _
                             ByVal serial_no As String, ByVal quantity_num As Integer, _
                             ByVal sp_rec_objid As Long, ByVal sp_rec_recordtype As String, _
                             ByVal dtl_type As String, ByVal priority_str As String, _
                             ByVal ship_via As String, ByVal carrier_name As String, _
                             ByVal user_name As String, ByVal warranty As Integer, _
                             ByVal note_str As String, ByVal status_str As String, _
  ByVal create_date As String, ByVal due_date As String, _
                              ByVal gen_time_bombs As Boolean, _
                             ByVal contr_itm_objid As Long, _
                             ByVal int_fld1 As String, ByVal int_val1 As Long, _
                             ByVal int_fld2 As String, ByVal int_val2 As Long, _
                             ByVal str_fld1 As String, ByVal str_val1 As String, _
                             ByVal str_fld2 As String, ByVal str_val2 As String, _
                             ByVal date_fld1 As String, ByVal date_val1 As String) As Integer

Public Function make_pr_detail_list(ByVal hdr_num As String, _
                             ByVal queue_name As String, ByVal part_num As String, _
                             ByVal domain_name As String, ByVal mod_level As String, _
                             ByVal serial_no As String, ByVal quantity_num As Integer, _
                             ByVal sp_rec_objid As Long, ByVal sp_rec_recordtype As String, _
                             ByVal dtl_type As String, ByVal priority_str As String, _
                             ByVal ship_via As String, ByVal carrier_name As String, _
                             ByVal user_name As String, ByVal warranty As Integer, _
  ByVal note_str As String, _
                             ByVal status_str As String, ByVal create_date As String, _
                             ByVal due_date As String, ByVal gen_time_bombs As Boolean, _
                             ByVal contr_itm_objid As Long, Optional fld_list As Variant, _
                             Optional type_list As Variant, Optional val_list As Variant) _
                             As Integer

**Description**

These APIs are used to create new part request details. The part request header must be specified. So must a part or site_part. There are two mechanisms for achieving this. If the site_part record is already known, it can be passed in the sp_rec variable. If not, the part_num, mod_level, and domain define the part. If it is a site_part (serialized), the serial_num may also be specified. But a part/revision or a site_part MUST be specified.

The quantity of units on the detail must also be specified, as must the detail_type. A number of other optional parameters (user-defined, notes-) may be specified. The user and creation time may be specified, as well as a queue to dispatch to. If a queue is specified, the part request will be dispatched (along with activity log and time_bombs). If not, it will be left in the user's WIPBIN.

An initial status (for condition "RQST OPEN") may be specified. If not, the default status will be used.

You may specify a number of values such as the billing site (defaults to the main site), the payment type and method, and the user who created the part request. You may specify the the creation date You may specify the user who created the part request header, and you may specify additional fields. You may have a creation time bomb generated (for notifications). If a site part is being specified for which to create the Part Request for, then the site part objid id must be passed in the sp_rec_objid parameter, and the keyword "site_part" must be passed in the sp_rec_recordtype parameter.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| hdr_num | Yes | Part request header number |
| queue_name | No | Optional queue to dispatch to
| part_num | No* | Part number for the part (required if Site  |Part not specified)
| mod_level | No* | Revision for the part (required if Site  |Part not specified)
| domain_name | No* | Domain for the part (required if Site Part not  |specified) |
| serial_no | No | Serial number if a serialized site_part |
| quantity_num | Yes | How many units recorded
| sp_rec_objid | No* | Objid of site_part record for the detail.  |Use 0 if no site_part.
| (required if Part Information not specified)
| sp_rec_recordtype | No* | Record Type associated to sp_rec objid field (required if Part Information not specified) |
| dtl_type | No | Part request type. If not specified, default is used |
| priority_str | No | Priority of the detail. If not specified, default is used |
| ship_via | No | How will it be shipped? If not specified, default is used |
| carrier_name | No | Carrier to ship by. If not specified, default is used |
| user_name | No | The user who created the PR detail. If left blank, the current user performs the create. |
| warranty | No | Indicator for part warranty information |
| note_str | No | Optional notes for the part request header |
| status_str | No | Initial PR detail status. If blank, default status of "RQST OPEN" used |
| create_date | No | When was the create performed? If blank, current date/time used |
| due_date | No | When is detail due? If not specified, create_date is used |
| gen_time_bombs | Yes | Should a time_bomb be generated |
| contr_itm_objid | No | Objid of contract line item to link to. Can only be used if new relations are added to the Clarify schema. Otherwise, set to 0 |
| err_element | Yes | Return string if error occurs |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |

**Returns**

**Value**                **Meaning**

0                                      No errors

-1                                             No request header ID was supplied.               

-2                                             The specified request header ID was not found.   

-3                                             The specified request header is already closed.  

-4                                             The specified user was not found.                

-5                                             The specified mod_level record was not found.    

-6                                             The specified site_part record was not found.    

-7                                             The specified queue was not found.               

-8                                             The specified detail type was not found.         

-9                                             The specified priority was not found.            

-10                                           The specified "ship via" value was not found.    

-11                                           The specified carrier was not found.             

-12                                           The default status for RQST_OPEN was not found.  

-13                                           Cannot find activity code for "Create Part Request" with rank of 9900

-14                                           Cannot find activity code for "Dispatch" with rank of 900

-15                                           The specified creation date is invalid.          

-16                                           The specified due date is invalid.               

-17                                           Unable to retrieve next detail sequence number for PR Header

-18                                           The employee record for the specified user cannot be found

-19                                           Specified user default wipbin not found

-20                                           Could not find the specified "Repair Status"

-21                                           Could not find the specified "Retair Type"

-22                                           Could not find the specified "Failure Code"

-23                                           The specified part number domain was not found. |
| ret_id_num | Output | Returns the detail number of the newly created part request detail |
| ret_objid | Output | Returns the objid of the newly created part request detail

**Examples**

 Create a new part request detail for PR header '1'. Make it 1 unit of "Attachments Anywhere, version 2.12"., with serial number 'A456'. Make it a "Return For Credit" type. Generate a time bomb. All other information is defaulted.

**Field version:**

**Visual Basic:**

Dim ret_int   As Integer

ret_int = fccl.make_pr_detail("1", "", "Attachments Anywhere", _
                           "2.12", "First Choice", "A456", 1, 0, "", _
                              "Return For Credit", "", "", _
                              "", "", 0, "", "", "", _
                              "", True, 0, "", 0, "", 0, "", "", _
                              "", "", "", "")

**Javascript:**

var ret_int = fccl.make_pr_detail("1", "", "Attachments Anywhere",

                           "2.12", "First Choice", "A456", 1, 0, "",

                              "Return For Credit", "", "",

                              "", "", 0, "", "", "",

                              "", True, 0, "", 0, "", 0, "", "",

                              "", "", "", "");

**List version:**

**Visual Basic:**

 Dim ret_int     As Integer

Dim fld_list    As New FCFLCompat.FCList

Dim type_list   As New FCFLCompat.FCList

Dim val_list    As New FCFLCompat.FCList

fld_list.ItemType = "String"

type_list.ItemType = "String"

val_list.ItemType = "String"

ret_int = fccl.make_pr_detail_list("1", "", "Attachments Anywhere", _
                                   "2.12", "First Choice", "A456", 1, 0, "", _
                                   "Return For Credit", "", "", "", "", 0,"", _
                                   "", "", "", True, 0, fld_list, _
                                   type_list, val_list)

**Javascript:**

var fld_list  = Server.CreateObject("FCFLCompat.FCList");

var type_list = Server.CreateObject("FCFLCompat.FCList");

var val_list  = Server.CreateObject("FCFLCompat.FCList");

var ret_int = fccl.make_pr_detail_list("1", "", "Attachments Anywhere",

                                   "2.12", "First Choice", "A456", 1, 0, "",

                                   "Return For Credit", "", "", "","", 0, "",

                                   "", "", "", True, 0, fld_list,

                                   type_list, val_list);

 Create a new part request detail for PR header '42'. Make it 22 units of a quantity part. Make it a "Return For Credit" type, dispatch it to a queue (Low), and set some other useful values. Generate a time bomb. All other information is defaulted.

**Field version:**

**Visual Basic:**

Dim ret_int   As Integer

ret_int = fccl.make_pr_detail("42", "Low", "Zipcode Reverse Directory", _
                            "1.00", "First Choice", "", 22, 0, "", _
                               "Return For Credit", "Priority 1", "Overnight", _
                                "Fedex", "sa", 0, "Notes", "Open", "1/1/2001", _
                                "2/1/2001 15:00:00", True, 0, "int_fld1", 30, _
                                "", 0, "str_fld1", "Hello!!", _
                                "", "", "", "")

**Javascript:**

var ret_int = fccl.make_pr_detail("42", "Low", "Zipcode Reverse Directory",

                            "1.00", "First Choice", "", 22, 0, "",

                               "Return For Credit", "Priority 1", "Overnight",

                                "Fedex", "sa", 0, "Notes", "Open", "1/1/2001",

                                "2/1/2001 15:00:00", True, 0, "int_fld1", 30,

                                "", 0, "str_fld1", "Hello!!",

                                "", "", "", "");

**List version:**

**Visual Basic:**

 Dim ret_int     As Integer

Dim fld_list    As New List

Dim type_list   As New List

Dim val_list    As New List

' Assume lists are filled in already

ret_int = fccl.make_pr_detail_list("42", "Low", "Zipcode Reverse Dir", _
                                   "1.00", "First Choice", "", 22, 0, "", _
                                   "Return For Credit", "Priority 1", "Overnight", _
                                   "Fedex", "sa", 0, "Notes", "Open", "1/1/2001", _
                                   "2/1/2001 15:00:00", True, 0, fld_list, _
                                   type_list, val_list)

**Javascript:**

var fld_list  = Server.CreateObject("FCFLCompat.FCList");

var type_list = Server.CreateObject("FCFLCompat.FCList");

var val_list  = Server.CreateObject("FCFLCompat.FCList");

var ret_int = fccl.make_pr_detail_list("42", "Low", "Zipcode Reverse Dir",

                                   "1.00", "First Choice", "", 22, 0, "",

                                   "Return For Credit", "Priority 1", "Overnight",

                                   "Fedex", "sa", 0, "Notes", "Open", "1/1/2001",

                                   "2/1/2001 15:00:00", True, 0, fld_list,

                                   type_list, val_list);

 Create a new part request detail for PR header '52'. Make it based on a non-serialized site part. Dispatch it to a queue (Low), and set some other useful values. Generate a time bomb. All other information is defaulted. The variable for the site part is hard-coded here for simplicity.

**Field version:**

**Visual Basic:**

Dim ret_int   As Integer

Dim sp_objid  As Long

sp_objid = 268435123

ret_int = fccl.make_pr_detail("42", "Low", "Zipcode Reverse Directory", _
                            "1.00", "First Choice", "", 22, sp_objid, "site_part", _
                               "Return For Credit", "Priority 1", "Overnight", _
                                "Fedex", "sa", 0, "Notes", "Open", "1/1/2001", _
                                "2/1/2001 15:00:00", True, 0, "int_fld1", 30, _
                                "", 0, "str_fld1", "Hello!!", _
                                "", "", "", "")

**Javascript:**

var sp_objid = 268435123;

var ret_int = fccl.make_pr_detail("42", "Low", "Zipcode Reverse Directory",

                            "1.00", "First Choice", "", 22, sp_objid, "site_part",

                               "Return For Credit", "Priority 1", "Overnight",

                                "Fedex", "sa", 0, "Notes", "Open", "1/1/2001",

                                "2/1/2001 15:00:00", True, 0, "int_fld1", 30,

                                "", 0, "str_fld1", "Hello!!",

                                "", "", "", "");

**List version:**

**Visual Basic:**

 Dim ret_int     As Integer

Dim fld_list    As New List

Dim type_list   As New List

Dim val_list    As New List

Dim sp_objid  As Long

sp_objid = 268435123

' Assume lists are filled in already

ret_int = fccl.make_pr_detail_list("42", "Low", "Zipcode Reverse Dir", _
                                   "1.00", "First Choice", "", 22, sp_objid, "site_part", _
                                   "Return For Credit", "Priority 1", "Overnight", _
                                   "Fedex", "sa", 0, "Notes", "Open", "1/1/2001", _
                                   "2/1/2001 15:00:00", True, 0, fld_list, _
                                   type_list, val_list)

**Javascript:**

var fld_list  = Server.CreateObject("FCFLCompat.FCList");

var type_list = Server.CreateObject("FCFLCompat.FCList");

var val_list  = Server.CreateObject("FCFLCompat.FCList");

var sp_objid = 268435123;

var ret_int = fccl.make_pr_detail_list("42", "Low", "Zipcode Reverse Dir",

                                   "1.00", "First Choice", "", 22, sp_objid, "site_part",

                                   "Return For Credit", "Priority 1", "Overnight",

                                   "Fedex", "sa", 0, "Notes", "Open", "1/1/2001",

                                   "2/1/2001 15:00:00", True, 0, fld_list,

                                   type_list, val_list);