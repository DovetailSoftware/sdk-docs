create_case
-----------

create_case_list
------------------

Public Function create_case(ByVal site_id As String, _

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

                ByVal int_fld1 As String, ByVal int_val1 As Long, _

                ByVal int_fld2 As String, ByVal int_val2 As Long, _

                Byval str_fld1 As String, ByVal str_val1 As String, _

                ByVal str_fld2 As String, ByVal str_val2 As String, _

                ByVal date_fld1 As String, ByVal date_val1 As String) As Integer

Public Function create_case_list(ByVal site_id As String, _

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

                Optional fld_list As Variant, Optional type_list As Variant, _

                Optional val_list As Variant) As Integer

**Description**

These APIs are used to create new cases. They require that a valid site and contact be specified. Everything else is optional. You may specify either a part/mod_level or a site part for a case (or neither), you may specify a contract, a title, a case type, priority, severity, and status (base Clarify does not allow you to specify a status). You may add a phone, log (or not), and you may have the case initially dispatched to a queue. You may specify the the case creation date, and the end of the phone log (for phone call length). You may specify the user who created the case, and you may specify additional fields. You may have a creation time bomb generated (for notifications). The objid of the case created is returned. The business rule version of this API does not return the objid of the new case object.

If you do not wish to associate a part/revision or site_part against the case, leave the _part_num_ field empty. If you wish to have a case part (and revision), you must fill in the part_num, mod_level, and domain  fields. If you also specify a serial_no, the system will associate the site_part against the case. If you have site_parts that are not serialized, you can query for the site_part before calling this API, and pass in the objid of the site_part in the sp_objid field. If you do this, then the other fields (part_num, mod_level, domain, serial_no) are ignored.

If you want to have a phone log for the case, place the text in the _phone_log_ field. Note that this is different than the ClearBasic version of this API, which required an external file. If you have a phone log the API will also generate a phone log activity log and a phone log time bomb (if time bombs are enabled).

You may also initially dispatch the case. If you specify a queue name, the case will be dispatched to that queue. In addition, an activity log entry will be added, and a time_bomb will be generated (if time bombs are enabled).

If successful, these APIs return both the _objid_ and the _id_number_ of the newly-created case. They are returned in the FCCS object variables _ret_objid_  and _ret_id_num_.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

site_id                                    Yes                         Which site reported the case

first                                         Yes                         First name of contact calling in the case

last                                          Yes                         Last name of contact calling in the case

phone                                     Yes                         Phone number of contact calling in the case

part_num                               No                           Part number of case part or site_part

mod_level                              No                           Revision of case part or site_part. If the revision is NULL (Oracle only), still

use the empty string ("") to query

domain                                   No                           Domain of case part or site_part

serial_no                                No                           Serial number of the site_part for the case (if there is one)

sp_objid                                                No                           Objid of site_part for the case (if externally queried)

contract                                 No                           ID of the contract for the case. If left blank, there is no contract

the_title                                 No                           Title for the case. It is suggested that you always have a title

case_type                              No                           Case type for the case. If left blank, default value is used

priority                                   No                           Priority for the case. If left blank, default value is used

severity                                  No                           Severity for the case. If left blank, default value is used

status                                     No                           Initial status for the case. If left blank, default status is used

phone_log                             No                           Phone notes for the case

queue_name                         No                           Name of the queue to dispatch the case to. If left blank, the case is

                                                                                not initially dispatched

cr_date                                   No                           Case creation date. If left blank, current date/time is used

phone_end_date                  No                           If there is a phone log, this is the date/time that the call ended. If left

                                                                                blank, the case creation time is used

user_name                             No                           The user who created the case. If left blank, the current user performs

the create

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules).

                                                                                and prior warning time?

int_fld1, int_fld2                   No                           Names of additional fields to write

str_fld1, str_fld2

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. These values are only used if the

str_val1, str_val2                                                 corresponding field name field is filled with a valid field name

date_val1

fld_list                                    Yes                         List of additional field names to write. List must be present, but does not

                                                                                need to have any items in the list

type_list                                                Yes                         List of additional field data types to write. List must be present, but does not

                                                                                need to have any items in the list

val_list                                   Yes                         List of additional field values to write. List must be present, but does not

                                                                                need to have any items in the list

**Returns**

**Value                                     Meaning                                                                                                                                               **

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

**Examples  **

 Create a new case. Specify the site of 'White House', and contact of Bill Clinton. Also, generate a time bomb. All other information is defaulted.

**Field version:**

**JavaScript:**

var ret_int = fccs.create_case("White House", "Bill", "Clinton",

          "555-555-1234", "", "", "", "", 0, "", "", "",

          "", "", "", "", "", "", "", "", true, "", 0,

          "", 0, "", "", "", "", "", "");

   if (ret_int == 0)

   {

      WScript.Echo("The ID of the created case is: " + fccs.ret_id_num);

   }

**Visual Basic:**

   Dim ret_int    As Integer

ret_int = fccs.create_case("White House", "Bill", "Clinton", _

          "555-555-1234", "", "", "", "", 0, "", "", "", _

          "", "", "", "", "", "", "", "", True, "", 0, _

          "", 0, "", "", "", "", "", "")

   If ret_int = 0 Then

      MsgBox "The ID of the created case is: " & fccs.ret_id_num

   End If

**List version:**

**JavaScript:**

var ret_int = fccs.create_case_list("White House", "Bill", "Clinton",

          "555-555-1234", "", "", "", "", 0, "", "", "",

          "", "", "", "", "", "", "", "", true);

   if (ret_int == 0)

   {

      WScript.Echo("The ID of the created case is: " + fccs.ret_id_num);

   }

**Visual Basic:**

   Dim ret_int     As Integer

ret_int = fccs.create_case_list("White House", "Bill", "Clinton", _

          "555-555-1234", "", "", "", "", 0, "", "", "", _

          "", "", "", "", "", "", "", "", True)

   If ret_int = 0 Then

      MsgBox "The ID of the created case is: " & fccs.ret_id_num

   End If

 Create a case for Bill Clinton at the White House. The problem is for MS Word, Version 7.0 (serial number 1234). The case is on contract 'Hardware Support', and the case is given a title. It is entered by marty on November 23, 1997 at 10PM. The case_type is a Problem with High priority and Medium severity. The initial case status is Solving. Include some phone notes, the call lasted 15 minutes, and the case is dispatched to the Important queue. There are no time bombs generated, and some additional fields are also filled in.

**Field version:**

**JavaScript:**

var ret_int = fccs.create_case("White House", "Bill", "Clinton",

          "555-555-1234", "MS Word", "7.0", "Software",

          "1234", 0, "ABCD", "The title", "Problem",

          "High", "Medium", "Solving", "Some phone notes",

          "Important", "11/23/97 22:00:00", "11/23/97 22:15:00",

          "marty", true, "x_create_int1", 1,

          "x_create_int2", 456, "x_summary2", "More text",

          "", "", "", "");

   if (ret_int == 0)

   {

      WScript.Echo("The ID of the created case is: " + fccs.ret_id_num);

   }

**Visual Basic:**

   Dim ret_int    As Integer

ret_int = fccs.create_case("White House", "Bill", "Clinton", _

          "555-555-1234", "MS Word", "7.0", "Software", _

          "1234", 0, "ABCD", "The title", "Problem", _

          "High", "Medium", "Solving", "Some phone notes", _

          "Important", "11/23/97 22:00:00", "11/23/97 22:15:00", _

          "marty", True, "x_create_int1", 1, _

          "x_create_int2", 456, "x_summary2", "More text", _

          "", "", "", "")

   If ret_int = 0 Then

      MsgBox "The ID of the created case is: " & fccs.ret_id_num

   End If

**List version:**

**JavaScript:**

var fld_list  = Server.CreateObject("FCFL.FCList");

var type_list = Server.CreateObject("FCFL.FCList");

var val_list  = Server.CreateObject("FCFL.FCList");

fld_list.AppendItem("x_create_int1");

type_list.AppendItem("Long");

val_list.AppendItem("1");

fld_list.AppendItem("x_ create_int2");

type_list.AppendItem("Long");

val_list.AppendItem("456");

fld_list.AppendItem("x_summary2");

type_list.AppendItem("String");

val_list.AppendItem("More text");

var ret_int = fccs.create_case_list("White House", "Bill", "Clinton",

          "555-555-1234", "MS Word", "7.0", "Software",

          "1234", 0, "ABCD", "The title", "Problem",

          "High", "Medium", "Solving", "Some phone notes",

          "Important", "11/23/97 22:00:00", "11/23/97 22:15:00",

          "marty", true, fld_list, type_list, val_list);

   if (ret_int == 0)

   {

      WScript.Echo("The ID of the created case is: " + fccs.ret_id_num);

   }

**Visual Basic:**

   Dim ret_int    As Integer

Dim fld_list   As New FCList

Dim type_list  As New FCList

Dim val_list   As New FCList

fld_list.AppendItem("x_create_int1")

type_list.AppendItem("Long")

val_list.AppendItem("1")

fld_list.AppendItem("x_ create_int2")

type_list.AppendItem("Long")

val_list.AppendItem("456")

fld_list.AppendItem("x_summary2")

type_list.AppendItem("String")

val_list.AppendItem("More text")

ret_int = fccs.create_case_list("White House", "Bill", "Clinton", _

          "555-555-1234", "MS Word", "7.0", "Software", _

          "1234", 0, "ABCD", "The title", "Problem", _

          "High", "Medium", "Solving", "Some phone notes", _

          "Important", "11/23/97 22:00:00", "11/23/97 22:15:00", _

          "marty", True, fld_list, type_list, val_list)

   If ret_int = 0 Then

      MsgBox "The ID of the created case is: " & fccs.ret_id_num

   End If