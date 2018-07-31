  

update_pr_header
------------------

update_pr_header_list
-----------------------

Public Function update_pr_header(ByVal hdr_num As String, _
                               ByVal first_name As String, ByVal last_name As String, _
                               ByVal phone_num As String, ByVal ship_site_id As String, _
                               ByVal bill_site_id As String, ByVal case_id As String, _
                               ByVal pay_method As String, ByVal pay_terms As String, _
                               ByVal priority_str As String, ByVal note_str As String, _
                               ByVal int_fld1 As String, ByVal int_val1 As Long, _
                               ByVal int_fld2 As String, ByVal int_val2 As Long, _
                               ByVal str_fld1 As String, ByVal str_val1 As String, _
                               ByVal str_fld2 As String, ByVal str_val2 As String, _
                               ByVal date_fld1 As String, ByVal date_val1 As String) _
                               As Integer

Public Function update_pr_header_list(ByVal hdr_num As String, _
                               ByVal first_name As String, ByVal last_name As String, _
                               ByVal phone_num As String, ByVal ship_site_id As String, _
                               ByVal bill_site_id As String, ByVal case_id As String, _
                               ByVal pay_method As String, ByVal pay_terms As String, _
                               ByVal priority_str As String, ByVal note_str As String, _                                                                 

                               Optional fld_list As Variant, Optional type_list As Variant, _
                               Optional val_list As Variant) As Integer

**Description**

These APIs allow for the updating of part request headers. You must supply the header number, and any other attributes you wish to update. If an attribute is left blank, the API will not update the value. Two of the attributes allow you to clear the previous result. To clear the related case number, or to clear the header notes, put the string "CLEAR" for the argument. If you leave an argument blank, the value in the header record is not changed.

If you want to change the contact for the part request, you must supply first name, last name, and phone number for the contact.

#### Parameters
**Parameter Name**                **Required?**             **Description**

hdr_num                                Yes                         The part request to update

first_name                             No                           First name of contact for part request

last_name                              No                           Last name of contact for part request

phone_num                           No                           Phone number of contact for part request

ship_site_id                          No                           Site ID of shipping site for part request

bill_site_id                            No                           Site ID of billing site for part request

case_id                                  No                           ID number of case related to the part request. To clear the case (have no

                                                                                case related to the part request), place "CLEAR" in this argument

pay_method                          No                           Payment method for the part request

pay_terms                             No                           Payment terms for the part request

priority_str                            No                           Priority of the part request

notes_str                               No                           Additional information about the part request. To clear the text, put the string

                                                                                "CLEAR" in this argument

int_fld1, int_fld2                   No                           Names of additional fields to write

str_fld1, str_fld2,date_fld1

int_val1, int_val2                 No                           Values for the additional fields. These values are only used if the

str_val1, str_val2,                                                                additional fields have assignments other than ""

date_val1

**Returns**

**Value**                **Meaning**

 0                                             No errors

-1                                             Cannot find the specified part request header

-2                                             The specified contact could not be found

-3                                             Cannot find the specified shipping site

-4                                             Cannot find the specified billing site

-5                                             The specified case ID is not found

-6                                             The specified payment method is not found

-7                                             The specified payment terms is not found

-8                                             The specified priority is not found

**Examples**

 Update part request header '1'. Change the contact to Sara Grinch, change the billing site ID to 43, the case ID to 14,  the payment terms and method, and one extra field.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.update_pr_header("1", "Sara", "Grinch", "555-1212", "", _
                                "43", "14", "Cash", "Net 10", "", "", "", 0, _
                                "",0, "x_extra_field", "a_value", "", "", "", _
                                "")

**Javascript:**

var ret_int = fccl.update_pr_header("1", "Sara", "Grinch", "555-1212", "",

                                "43", "14", "Cash", "Net 10", "", "", "", 0,

                                "",0, "x_extra_field", "a_value", "", "", "",

                                "");

 Update part request header '33'. Change the shipping site to '55', change the priority, and clear the notes for the header.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.update_pr_header("33", "", "", "", "55", "", _
                                "", "", "", "Priority 1", "CLEAR", "", _
                                0, "", 0, "", "", "", "", "", "")

**Javascript:**

var ret_int = fccl.update_pr_header("33", "", "", "", "55", "",

                                "", "", "", "Priority 1", "CLEAR", "",

                                0, "", 0, "", "", "", "", "", "");