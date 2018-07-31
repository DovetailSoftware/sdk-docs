modify_cr
---------

modify_cr_list
----------------

Public Function modify_cr(ByVal cr_num As String, _
                          ByVal part_num As String, _
        ByVal mod_level As String, _
        ByVal domain As String, _
        ByVal the_title As String, _
        ByVal cr_type As String, _
        ByVal priority As Strings, _
        ByVal frequency As String, _
        ByVal found_on As String, _
        ByVal op_sys As String, _
        ByVal memory As String, _
        ByVal cr_class As String, _
        ByVal intro_phase As String, _
        ByVal test_class As String, _
        ByVal fixed_in As String, _
        ByVal user_name As String, _
        ByVal cr_date As String, _
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

Public Function modify_cr_list(ByVal cr_num As String, _
                               ByVal part_num As String, _
                               ByVal mod_level As String, _
                               ByVal domain As String, _
       ByVal the_title As String, _
       ByVal cr_type As String, _
       ByVal priority As String, _
       ByVal frequency As String, _
       ByVal found_on As String, _
       ByVal op_sys As String, _
                               ByVal memory As String, _
                               ByVal cr_class As String, _
                               ByVal intro_phase As String, _
                               ByVal test_class As String, _
                               ByVal fixed_in As String, _
                               ByVal user_name As String, _
                               ByVal cr_date As String, _
                               ByVal gen_time_bombs As Boolean, _
                               Optional fld_list As Variant, _
       Optional type_list As Variant, _
                               Optional val_list As Variant) As Integer

**Description**

These APIs are used to modify existing CRs. All of the primary fields of the CR can be set. If they are left blank, then the value in the CR is not changed. The modifier and the time of modification may be specified, and you may specify additional fields for the modify_cr object. You may also have a modify time bomb generated (for business rule notifications).

#### Parameters
**Parameter Name**                **Required?**             **Description**

cr_num                                   Yes                         The CR to modify

part_num                               No                           Part number of part for change request

mod_level                              No                           Revision of part for change request

domain                                   No                           Domain of the part for the change request

the_title                                 No                           Title of the change request

cr_type                                  No                           A code list value from list CR TYPE

priority                                   No                           A code list value from list CR PRIORITY

frequency                              No                           A code list value from list CR REPRODUCIBLE

found_on                              No                           Level 1 of the list CR_DESC

os                                            No                           Level 2 of the list CR_DESC. If no sublist is described for this item, you

may specify "" for no list entry

memory                                  No                           Level 3 of the list CR_DESC. If no sublist is described for this item, you

may specify "" for no list entry

cr_class                                 No                           A code list value from list CR_CLASS

intro_phase                           No                           A code list value from list CR DOMAIN

test_class                              No                           A code list value from list CR CLASS

fixed_in                                  No                           A code list value from list FIX RELEASE

user_name                             No                           The user who modified the change request. If left blank, the current user is used

cr_date                                   No                           The date the CR was modified. If blank, the current date/time is used

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

int_fld1, int_fld2                   No                           Names of additional fields to write.  Must use "" if not using

str_fld1, str_fld2                                                   these parameters

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. Must use "" (string) or 0 (long)

str_val1, str_val2                                                 if not using these parameters

date_val1

fld_list                                    No                           List of additional field names to write

type_list                                                No                           List of additional field data types to write

val_list                                   No                           List of additional field values to write

**Returns**

**Value**                **Meaning**

0 No errors

-1                                             Cannot find the specified CR

-2                                             Cannot find the specified user

-3                                             Cannot find the part and revision

-4                                             Cannot find gbst_elm rank 1500 for string MODIFY

-5                                             Cannot find the specified CR Type

-6                                             Cannot find the specified CR Priority

-7                                             Cannot find the specified frequency

-8                                             Cannot find the specified intro phase

-9                                             Cannot find the specified test class

-10                                           Cannot find the specified CR class

-11                                           Cannot find the specified fixed in release

-12                                           Cannot find the specified found_on value (cpu)

-13                                           Cannot find the specified op_sys value (operating system)

-14                                           Cannot find the specified memory value

-15                                           Cannot find the specified user's employee record for relating time bomb

**Examples**

 Modify CR '19'. Change the priority and generate a time bomb (for business rule notification). All other information is defaulted.  The second field version illustrates how to set additional fields.

**Field version 1:**

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fccq.modify_cr("19", "", "", "", "", "", "Low", _
                         "", "", "", "", "", "", _
                         "", "", "", "", _
                         True, "", 0, "", 0, "", "", _
                         "", "", "", "")

**JavaScript:**

var ret_int = fccq.modify_cr("19", "", "", "", "", "", "Low",

                         "", "", "", "", "", "",

                         "", "", "", "",

                         true, "", 0, "", 0, "", "",

                         "", "", "", "");

**Field version 2:**

**Visual Basic:**

   Dim ret_int     As Integer

ret_int = fccq.modify_cr("19", "", "", "", "", "", "Low", _
                         "", "", "", "", "", "", _
                         "", "", "", "", _
          True, "x_create_1", 1, "x_create_2", 2,

          "x_summary2", "More text", "", "", _
          "x_other_date", "1/1/99")

**JavaScript:**

var ret_int = fccq.modify_cr("19", "", "", "", "", "", "Low",

                         "", "", "", "", "", "",

                         "", "", "", "",

          true, "x_create_1", 1, "x_create_2", 2,

          "x_summary2", "More text", "", "",

                         "x_other_date", "1/1/99");

**List version:**

**Visual Basic:**

   Dim ret_int     As Integer

Dim fld_list    As New FCFLCompat.FCList

Dim type_list   As New FCFLCompat.FCList

Dim val_list    As New FCFLCompat.FCList

fld_list.AppendItem "x_fix_int1"

type_list.AppendItem "Long"

val_list.AppendItem Trim(Str$(1))

fld_list.AppendItem "x_fix_int2"

type_list.AppendItem "Long"

val_list.AppendItem Trim(Str$(456))

fld_list.AppendItem "x_summary2"

type_list.AppendItem "String"

val_list.AppendItem "More text"

fld_list.AppendItem "x_other_date"

type_list.AppendItem "Date"

val_list.AppendItem "1/1/99"

ret_int = fccq.modify_cr_list("19", "", "", "", "", "", "Low", _
                              "", "", "", "", "", "", _
                              "", "", "", "", _
               True, fld_list, type_list, val_list)

**JavaScript:**

var fld_list  = Server.CreateObject("FCFLCompat.FCList");

var type_list = Server.CreateObject("FCFLCompat.FCList");

var val_list  = Server.CreateObject("FCFLCompat.FCList");

fld_list.AppendItem("dist");

type_list.AppendItem("Long");

val_list.AppendItem("456");

fld_list.AppendItem("attribute2");

type_list.AppendItem("String");

val_list.AppendItem("More text");

fld_list.AppendItem("date_found");

type_list.AppendItem("Date");

val_list.AppendItem("1/1/99");

var ret_int = fccq.modify_cr_list("19", "", "", "", "", "", "Low",

                              "", "", "", "", "", "",

                              "", "", "", "",

               true, fld_list, type_list, val_list);