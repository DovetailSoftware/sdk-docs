create_cr
---------

create_cr_list
----------------

Public Function create_cr(ByVal part_num As String, _
                          ByVal mod_level As String, _
                          ByVal domain As String, ByVal the_title As String, _
        ByVal status As String, ByVal note_log As String, _
        ByVal cr_type As String, ByVal priority As String, _
                          ByVal frequency As String, _
                          ByVal found_on As String, ByVal op_sys As String, _
                          ByVal memory As String, ByVal cr_class As String, _
                          ByVal intro_phase As String, _
                          ByVal test_class As String, _
                          ByVal fixed_in As String, ByVal test As String, _
                          ByVal queue_name As String, _
                          ByVal user_name As String, ByVal cr_date As String, _
                          ByVal gen_time_bombs As Boolean, _
                          ByVal int_fld1 As String, ByVal int_val1 As Long, _
                          ByVal int_fld2 As String, ByVal int_val2 As Long, _
                          ByVal str_fld1 As String, ByVal str_val1 As String, _
                          ByVal str_fld2 As String, ByVal str_val2 As String, _
                          ByVal date_fld1 As String, ByVal date_val1 As String) _
                          As Integer

Public Function create_cr_list(ByVal part_num As String, _
       ByVal mod_level As String, _
       ByVal domain As String, _
       ByVal the_title As String, _
       ByVal status As String, _
       ByVal note_log As String, _
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
       ByVal test As String, _
       ByVal queue_name As String, _
       ByVal user_name As String, _
       ByVal cr_date As String, _
                               ByVal gen_time_bombs As Boolean, _
       Optional fld_list As Variant, _
                               Optional type_list As Variant, _
       Optional val_list As Variant) As Integer

**Description**

These APIs are used to create new change requests. They require that the part number, domain, and revision be specified (for the part to be associated). You may specify a title for the CR, notes, the status, and a variety of other text and code list values.

If you specify a queue name, the CR will be initially dispatched to the queue. Otherwise, it will be located in the owner's WIPBin. You may also list who created the CR, and when it was created. You may specify additional fields for the CR object, and if a time bomb should be generated (for business rule notification). If you dispatch the CR, a second time bomb will be generated. If you add notes to the CR, another time bomb will be generated.

#### Parameters
**Parameter Name**                **Required?**             **Description**

part_num                               Yes                         Part number of part for change request

mod_level                              Yes                         Revision of part for change request

domain                                   Yes                         Domain of the part for the change request

the_title                                 No                           Title of the change request

status                                     No                           Initial status (in condition CR Open) of the change request. If blank, the default status is used 

note_log                                                No                           Notes about the change request. If blank, no notes are logged

cr_type                                  No                           A code list value from list CR TYPE. If blank, default value is used

priority                                   No                           A code list value from list CR PRIORITY. If blank, default value is used

frequency                              No                           A code list value from list CR REPRODUCIBLE. If blank, default value is used

found_on                              No                           Level 1 of the list CR_DESC. If blank, default value is used

os                                            No                           Level 2 of the list CR_DESC. If blank, default value is used

memory                                  No                           Level 3 of the list CR_DESC. If blank, default value is used

cr_class                                 No                           A code list value from list CR_CLASS. If blank, default value is used

intro_phase                           No                           A code list value from list CR DOMAIN. If blank, default value is used

test_class                              No                           A code list value from list CR CLASS. If blank, default value is used

fixed_in                                  No                           A code list value from list FIX RELEASE. If blank, default value is used

test                                         No                           Lists of tests for this CR

queue_name                         No                           Queue to dispatch the CR to. If blank, no dispatch occurs

user_name                             No                           The user who created the change request. If left blank, the current user is used

cr_date                                   No                           The date the CR was created. If blank, the current date/time is used

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

int_fld1, int_fld2                   No                           Names of additional fields to write.  Must use "" if not using

str_fld1, str_fld2                                                   these parameters

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. Must use "" (string) or 0 (long)

str_val1, str_val2                                                 if not using these parameters

date_val1

fld_list                                    No                           List of additional field names to write

type_list                                                No                           List of additional field data types to write

val_list                                   No                           List of additional field values to write

**Returns**

**Value**                **Meaning**

0                                              No errors; sets objid and id_number of new bug object in ret_objid (Long) and ret_id_num (String) global variables

-2                                             Cannot find the specified user

-3                                             Cannot find the part and revision

-4                                             The specified status could not be found

-5                                             Cannot find gbst_elm rank 4700 for string CREATE CR

-6                                             Cannot find gbst_elm rank 1700 for string NOTES

-7                                             Cannot find gbst_elm rank 900 for string DISPATCH

-8                                             Could not find the specified queue

-10                                           Cannot find the CR Type list item

-11                                           Cannot find the specified CR Priority

-12                                           Cannot find the specified frequency

-13                                           Cannot find the specified intro phase

-14                                           Cannot find the specified test class

-15                                           Cannot find the specified CR class

-16                                           Cannot find the specified fixed in release

-17                                           Cannot find the specified found_on value (cpu)

-18                                           Cannot find the specified op_sys value (operation system)

-19                                           Cannot find the specified memory value

-20                                           Cannot find the specified user's employee record for relating time bomb

ret_objid                                Output                   Returns the objid of the change request

ret_id_num                            Output                   Returns the id of the change request

**Examples**

 Create a new change request. Specify the part of MS Word, revision 1.2. Use the default values for the code list, and generate a time bomb. Add notes from the file "note.txt", and dispatch to queue "High".  The second field version illustrates how to set additional fields.

**Field version 1:**

**Visual Basic:**

   Dim ret_int   As Integer

Dim bug_id_num  As String

Dim bug_objid   As Long

ret_int = fccq.create_cr("MS Word"", "1.2", "Product", _
                         "CR Title", _
                "", "note.txt", "", "", "", "", "", "", _
                "", "", "", "", "Some tests to run", _
                "High", _
          "", "", True, "", 0, "", 0, "", "", "", _
          "", "", "")

 If ret_int = 0 Then

      bug_id_num = fccq.ret_id_num

      bug_objid = fccq.ret_objid

   End If

**JavaScript:**

var ret_int = fccq.create_cr("MS Word"", "1.2", "Product",

                         "CR Title",

                "", "note.txt", "", "", "", "", "", "",

                "", "", "", "", "Some tests to run",

                "High",

          "", "", true, "", 0, "", 0, "", "", "",

          "", "", "");

 if (ret_int == 0) {

      var bug_id_num = fccq.ret_id_num;

      var bug_objid = fccq.ret_objid;

   }

**Field version 2:**

 **Visual Basic:**

Dim ret_int     As Integer

Dim bug_id_num  As String

Dim bug_objid   As Long

ret_int = fccq.create_cr("MS Word"", "1.2", "Product", _
                         "CR Title", _
                "", "note.txt", "", "", "", "", "", "", _
                "", "", "", "", "Some tests to run", _
                "High", _
          "", "", True, "x_create_1", 1, "x_create_2", 2,

          "x_summary2", "More text", "", "", _
          "x_other_date", "1/1/99")

 If ret_int = 0 Then

      bug_id_num = fccq.ret_id_num

      bug_objid = fccq.ret_objid

   End If

**JavaScript:**

var ret_int = fccq.create_cr("MS Word"", "1.2", "Product",

                         "CR Title",

                "", "note.txt", "", "", "", "", "", "",

                "", "", "", "", "Some tests to run",

                "High",

          "", "", true, "x_create_1", 1, "x_create_2", 2,

          "x_summary2", "More text", "", "",

          "x_other_date", "1/1/99");

 if (ret_int == 0) {

      var bug_id_num = fccq.ret_id_num;

      var bug_objid = fccq.ret_objid;

   }

**List version:**

**Visual Basic:**

Dim bug_id_num  As String

Dim bug_objid   As Long

   Dim ret_int     As Integer

Dim fld_list    As New FCFLCompat.FCList

Dim type_list   As New FCFLCompat.FCList

Dim val_list    As New FCFLCompat.FCList

fld_list.AppendItem("dist");

type_list.AppendItem("Long");

val_list.AppendItem("456");

fld_list.AppendItem("attribute2");

type_list.AppendItem("String");

val_list.AppendItem("More text");

fld_list.AppendItem("date_found");

type_list.AppendItem("Date");

val_list.AppendItem("1/1/99");

ret_int = fccq.create_cr_list("MS Word", "1.2", "Product", _
                              "CR Title", "", "note.txt", "", _
                              "", "", "", _
                              "", "", "", "", "", "", _
                              "Some tests to run", _
                              "High", "", "", True, _
                              fld_list, type_list, val_list)

 If ret_int = 0 Then

      bug_id_num = fccq.ret_id_num

      bug_objid = fccq.ret_objid

   End If

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

var ret_int = fccq.create_cr_list("MS Word", "1.2", "Product",

                              "CR Title", "", "note.txt", "",

                              "", "", "",

                              "", "", "", "", "", "",

                              "Some tests to run",

                              "High", "", "", true,

                              fld_list, type_list, val_list)

 if (ret_int == 0) {

      var bug_id_num = fccq.ret_id_num;

      var bug_objid = fccq.ret_objid;

   }