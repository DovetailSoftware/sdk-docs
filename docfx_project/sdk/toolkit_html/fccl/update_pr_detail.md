update_pr_detail
------------------

update_pr_detail_list
-----------------------

Public Function update_pr_detail(ByVal dtl_num As String, _

                        ByVal part_num As String, ByVal domain_name As String, _

                        ByVal mod_level As String, ByVal serial_no As String, _

                        ByVal quantity_num As Long, ByVal sp_objid As Long, _

                        ByVal dtl_type As String, ByVal priority_str As String, _

                        ByVal ship_via As String, ByVal carrier_name As String, _

                        ByVal warranty As Integer, ByVal note_str As String, _

                        ByVal status_str as String, ByVal int_fld1 As String, _

                        ByVal int_val1 As Long, ByVal int_fld2 As String, _

                        ByVal int_val2 As Long, ByVal str_fld1 As String, _

                        ByVal str_val1 As String, ByVal str_fld2 As String, _

                        ByVal str_val2 As String, ByVal date_fld1 As String, _

                        ByVal date_val1 As String) As Integer

Public Function update_pr_detail_list(ByVal dtl_num As String, _

                        ByVal part_num As String, ByVal domain_name As String, _

                        ByVal mod_level As String, ByVal serial_no As String, _

                        ByVal quantity_num As Long, ByVal sp_objid As Long, _

                        ByVal dtl_type As String, ByVal priority_str As String, _

                        ByVal ship_via As String, ByVal carrier_name As String, _

                        ByVal warranty As Integer, ByVal note_str As String, _

                        ByVal status_str As String, Optional fld_list As Variant, _

                        Optional type_list As Variant, Optional val_list As Variant) _

                        As Integer

**Description**

These APIs allow for the updating of part request details. You must supply the detail number, and any other attributes you wish to update. If an attribute is left blank, the API will not update the value.

If you modify the part/mod_level for the part request, or the site_part, you must supply either a valid site_part record, or you must supply the part_num, mod_leve, **AND** domain. You may optionally specify the serial_no field if it is a site_part (serialized).

#### Parameters
**Parameter Name**                **Required?**             **Description**

dtl_num                                 Yes                         The part request to update

part_num                               No                           Part number to update the part request to. If no new part/revision for part

request, leave this field blank.

mod_level                              No                           Revision to udpate the part request to. If no new part/revision for part

request, leave this field blank.

domain_name                       No                           Domain for the part number. If no new part/revision for part

request, leave this field blank.

serial_no                                No                           Serial number for the new site_part for the part request

quantity_num                       Yes                         New quantity for the part request. Use 0 if no change in this field

sp_objid                                                Yes                         Objid of new site_part for the part request (if known as a record). If no new

                                                                                site_part record to set, use _0_ for this parameter

dtl_type                                 No                           New type of the detail. If blank, no change is made

priority_str                            No                           New priority of the detail. If blank, no change is made

ship_via                                 No                           New ship_via of the detail. If blank, no change is made

carrier_name                         No                           New carrier of the detail. If blank, no change is made

warranty                                                No                           Indicator for part warranty information

note_str                                 No                           New detail notes for the part request. If blank, no change is made. If this field

                                                                                is set to "CLEAR", the notes will be cleared

status_str                              No                           Initial PR detail status. If blank, default status of "RQST OPEN" used

int_fld1, int_fld2                   No                           Names of additional fields to write

str_fld1, str_fld2, date_fld1

int_val1, int_val2                 No                           Values for the additional fields. These values are only used if the

str_val1, str_val2, date_val1                              additional fields have assignments other than ""

**Returns**

**Value**                **Meaning**

 0                                             No errors

-1                                             Specified quantity must be >= 0

-2                                             Cannot find the specified detail

-3                                             The specified detail type is not found

-4                                             The specified detail priority is not found

-5                                             The specified detail ship_via is not found

-6                                             The specified detail carrier is not found

-7                                             The specified status was not found for RQST Open

-8                                             Cannot find the specified part_num/domain/revision

-9                                             Cannot find the specified serial number for the part/revision

-10                                           The site_part record does not have a related part revision

**Examples  **

 Update part request '3-3'. Change the part to 'MS Word, revision 7.0' (no site_part). Change the ship_via, and one extra field.

**Visual Basic:**

Dim ret_int  As Integer

Dim sp_objid As Long

sp_objid = 0

ret_int = fccl.update_pr_detail("3-3", "MS Word", "Product", "7.0", "", _

                   1, sp_objid, "", "", "Fedex","", 0, "","","", _

                   0, "", 0, "detail_notes", "xyzzy", "", "", "", "")

**Javascript:**

var ret_int = fccl.update_pr_detail("3-3", "MS Word", "Product", "7.0", "",

                   1, sp_objid, "", "", "Fedex", "", 0, "","", "",

                   0, "", 0, "detail_notes", "xyzzy", "", "", "", "");

 Update part request '3-3'. Change the part to 'MS Word, revision 7.0', serial number 123. Change the carrier and the notes, and no extra fields.

**Visual Basic:**

Dim ret_int  As Integer

Dim sp_objid As Long

sp_objid = 0

ret_int = fccl.update_pr_detail("3-3", "MS Word", "Product", "7.0", "123", _

                   1, sp_objid, "", "", "", "UPS", 0, "Some notes", _

  "", "", 0, "", 0, "", "", "", "", "", "")

**Javascript:**

var ret_int = fccl.update_pr_detail("3-3", "MS Word", "Product", "7.0", "123",

                   1, sp_objid, "", "", "", "UPS", 0, "Some notes",

  "", "",0, "", 0, "", "", "", "", "", "");