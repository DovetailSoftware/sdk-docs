make_pr_header
----------------

make_pr_header_list
---------------------

make_pr_header_case_list
----------------------------

make_pr_header_subcase_list
-------------------------------

Public Function make_pr_header(ByVal first_name As String, _
                               ByVal last_name As String, ByVal phone_num As String, _
                               ByVal ship_site_id As String, ByVal bill_site_id As String, _
                               ByVal case_id As String, ByVal pay_method As String, _
                               ByVal pay_terms As String, ByVal priority_str As String, _
                               ByVal user_name As String, ByVal note_str As String, _
                               ByVal create_date As String, ByVal contract_objid As Long, _
                               ByVal int_fld1 As String, ByVal int_val1 As Long, _
                               ByVal int_fld2 As String, ByVal int_val2 As Long, _
                               ByVal str_fld1 As String, ByVal str_val1 As String, _
                               ByVal str_fld2 As String, ByVal str_val2 As String, _
                               ByVal date_fld1 As String, ByVal date_val1 As String) _
                               As Integer

Public Function make_pr_header_list(ByVal first_name As String, _
                               ByVal last_name As String, ByVal phone_num As String, _
                               ByVal ship_site_id As String, ByVal bill_site_id As String, _
                               ByVal case_id As String, ByVal pay_method As String, _
                               ByVal pay_terms As String, ByVal priority_str As String, _
                               ByVal user_name As String, ByVal note_str As String, _
                               ByVal create_date As String, ByVal contract_objid As Long, _
                               Optional fld_list As Variant, Optional type_list As Variant, _
                               Optional val_list As Variant) As Integer

Public Function make_pr_header_case_list(ByVal first_name As String, _
                               ByVal last_name As String, ByVal phone_num As String, _
                               ByVal ship_site_id As String, ByVal bill_site_id As String, _
                               ByVal case_id As String, ByVal pay_method As String, _
                               ByVal pay_terms As String, ByVal priority_str As String, _
                               ByVal user_name As String, ByVal note_str As String, _
                               ByVal create_date As String, ByVal contract_objid As Long, _
                               Optional fld_list As Variant, Optional type_list As Variant, _
                               Optional val_list As Variant) As Integer

Public Function make_pr_header_subcase_list(ByVal first_name As String, _
                               ByVal last_name As String, ByVal phone_num As String, _
                               ByVal ship_site_id As String, ByVal bill_site_id As String, _
                               ByVal case_id As String, ByVal pay_method As String, _
                               ByVal pay_terms As String, ByVal priority_str As String, _
                               ByVal user_name As String, ByVal note_str As String, _
                               ByVal create_date As String, ByVal contract_objid As Long, _
                               Optional fld_list As Variant, Optional type_list As Variant, _
                               Optional val_list As Variant) As Integer

**Description**

These APIs are used to create new part request headers. The contact and site information must be specified. Everyhing else (related case, user-defined lists, notes, queue, creation date) is optional.

The make_pr_header_case_list API is used when creating a part request header for a case.

The make_pr_header_case_list API is used when creating a part request header for a subcase.

Similar functionality is available in the make_pr_header and make_pr_header_list APIs. These two APIs will try to detemine if the case_id parameter is that of a case or a subcase. If there is a dash ("-") in the case_id, then it will assume that it is a subcase id number. Else, it will assume that it is a case id number. The make_pr_header_case_list and make_pr_header_subcase_list APIs are useful when trying to create a part request for a case and your case id numbering scheme contains dashes.

Unless you are linking the part request header to a contract, and HAVE ADDED the new relations required (see the First Choice Software Call Center Integration Module), you should always specify 0 for the contract_objid field.

The function returns the header number created (and an error string for error conditions).

You may specify a number of values such as the billing site (defaults to the main site), the payment type and method, and the user who created the part request. You may specify the the creation date You may specify the user who created the part request header, and you may specify additional fields. You may have a creation time bomb generated (for notifications).

#### Parameters
**Parameter Name**                **Required?**             **Description**

first_name                             Yes                         Contact's first name

last_name                              Yes                         Contact's last name

phone_num                           Yes                         Contact's phone

ship_site_id                          Yes                         Where to send the part request

bill_site_id                            No                           Where to bill for the part request. If blank, API uses the ship_site_id

case_id                                  No                           If the PR header is related to a case, it may be specified

pay_method                          No                           Payment method for the PR header. If left blank, default value is used

pay_terms                             No                           Payment terms for the PR header. If left blank, default value is used

priority_str                            No                           Priority for the PR header. If left blank, default value is used

user_name                             No                           The user who created the PR header. If left blank, the current user performs

the create.

note_str                                 No                           Optional notes for the part request header

create_date                           No                           When was the create performed? If blank, current date/time used

contract_objid                      No                           Objid of contract to link to. Can only be used if new relations are added to

the Clarify schema. Otherwise, set to 0

int_fld1, int_fld2,                  No                           Names of additional fields to write

str_fld1, str_fld2, date_fld1

 int_val1, int_val2,               No                           Values for the additional fields. These values are only used if the

str_val1, str_val2, date_val1                              additional fields have assignments other than ""

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             No shipping site ID was supplied.                

-2                                             The specified contact was not found.             

-3                                             The specified shipping site ID was not found.    

-4                                             The specified billing site ID was not found.     

-5                                             The specified user was not found.                

-6                                             The specified case ID was not found.             

-7                                             The specified payment method was not found.      

-8                                             The specified payment terms were not found.      

-9                                             The specified priority was not found.            

-10                                           The specified create date is not valid.          

-11                                           The specified shipping site does not have a related country record.

-12                                           The specified shipping site does not have a related state record.

-13                                           Could not find the address for specified site

-14                                           The first name, last name, and phone number cannot all be blank for the contact

ret_id_num                            Output                   Returns the header id of the newly created part request

**Examples**

 Create a new part request header. Specify the site of 'First Choice', and contact of Jack Lacy. Also, generate a time bomb. All other information is defaulted.

**Field version:**

**Visual Basic:**

Dim ret_int   As Integer

Dim hdr_num   As String

ret_int = fccl.make_pr_header("Jack", "Lacy", "512-418-2905", _
                              "First Choice", "", "", "", "", "", "", _
                              "", "", 0, "", 0, "", 0, "", "", "", "", "", "")

If ret_int = 0 Then

hdr_num = fccl.ret_id_num

End If

**Javascript:**

var ret_int = fccl.make_pr_header("Jack", "Lacy", "512-418-2905",

                              "First Choice", "", "", "", "", "", "",

                              "", "", 0, "", 0, "", 0, "", "", "", "", "", "");

If (ret_int == 0) { var hdr_num =fccl_ret_id_num; }

**List version:**

**Visual Basic:**

Dim ret_int     As Integer

Dim hdr_num     As String

Dim fld_list    As New List

Dim type_list   As New List

Dim val_list    As New List

fld_list.ItemType = "String"

type_list.ItemType = "String"

val_list.ItemType = "String"

ret_int = fccl.make_pr_header_list("Jack", "Lacy", "512-418-2905", _
                                   "First Choice", "", "", "", "", "", "", _
                                   "", "", 0, fld_list, type_list, val_list)

If ret_int = 0 Then

hdr_num = fccl.ret_id_num

End If

**Javascript:**

var fld_list  = Server.CreateObject("FCFLCompat.FCList");

var type_list = Server.CreateObject("FCFLCompat.FCList");

var val_list  = Server.CreateObject("FCFLCompat.FCList");

var ret_int = fccl.make_pr_header_list("Jack", "Lacy", "512-418-2905",

                                   "First Choice", "", "", "", "", "", "",

                                   "", "", 0, fld_list, type_list, val_list);

If (ret_int == 0) { var hdr_num =fccl_ret_id_num; }

 Create a new part request header. Specify the site of 'First Choice', and contact of Jack Lacy. Also, do not generate a time bomb. Specify reasonable values for case ID, and other choices. Add some additional fields.

**Field version:**

**Visual Basic:**

Dim ret_int   As Integer

Dim hdr_num   As String

Dim err       As String

ret_int = fccl.make_pr_header("Jack", "Lacy", "512-418-2905", "First Choice", _
                             "site2", "Case42", "Check", "Net 10", "Priority 1", "sa", _
                             "notes", "11/11/01", 0, "x_int1", 20, "", 0, "x_str1", _
                             "Value 1", "", "", "", "")

If ret_int = 0 Then

hdr_num = fccl.ret_id_num

End If

**Javascript:**

var ret_int = fccl.make_pr_header("Jack", "Lacy", "512-418-2905", "First Choice",

                             "site2", "Case42", "Check", "Net 10", "Priority 1", "sa",

                             "notes", "11/11/01", 0, "x_int1", 20, "", 0, "x_str1",

                              "Value 1", "", "", "", "");

if (ret_int == 0) { var hdr_num = fccl.ret_id_num; }

**List version:**

**Visual Basic:**

Dim ret_int     As Integer

Dim hdr_num     As String

Dim fld_list    As New List

Dim type_list   As New List

Dim val_list    As New List

 ' Assume lists are filled in already

ret_int = fccl.make_pr_header_list("Jack", "Lacy", "512-418-2905", _
                                  "First Choice", "site2", "Case42", "Check", _
                                  "Net 10", "Priority 1", "sa", "notes", _
                                  "11/11/2001", 0, fld_list, type_list, val_list)

If ret_int = 0 Then

hdr_num = fccl.ret_id_num

End If

**Javascript:**

var fld_list  = Server.CreateObject("FCFLCompat.FCList");

var type_list = Server.CreateObject("FCFLCompat.FCList");

var val_list  = Server.CreateObject("FCFLCompat.FCList");

var ret_int = fccl.make_pr_header_list("Jack", "Lacy", "512-418-2905",

                                  "First Choice", "site2", "Case42", "Check",

                                  "Net 10", "Priority 1", "sa", "notes",

                                  "11/11/2001", 0, fld_list, type_list, val_list);

If (ret_int == 0) { var hdr_num = fccl.ret_id_num; }