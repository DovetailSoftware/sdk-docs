create_onsite_log
-------------------

Public Function create_onsite_log(ByVal object_type As String, _

                  ByVal object_id As String, ByVal creation_time As String, _

                  ByVal last_modified As String, ByVal notes As String, _

                  ByVal resolution As String, ByVal user_name As String, _

                  ByVal perf_by As String) As Integer

**Description**

This API allows creation of an onsite log that is related to a case or subcase. The object type and id of the focus object  (the case or subcase) must be supplied, and the other parameters are all optional.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

object_type                           Yes                         The type of focus object that this onsite log is tied to. (CASE or SUBCASE)

object_id                               Yes                         The id number of the focus object

creation_time                        No                           The time this onsite log is created. If left blank, it will be set to the current time

last_modified                        No                           The last time a change was made to this onsite log

notes                                      No                           The note text for this onsite log

resolution                              No                           Value from the Resolution Code list

user_name                             No                           The user who is creating the onsite log. If left blank, the current user

performs the create

perf_by                                  No                           The user that is performing the actions associated to the onsite log

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Object type must be 'case' or 'subcase'

-2                                             Cannot find performing user in database

-3                                             Cannot find RESOLUTION code in database

-4                                             Cannot find employee record for user in database

-5                                             Cannot find subcase in database

-6                                             Cannot find the 'T & E log' activity string with rank = 1800

-7                                             Cannot find specified case in database

ret_objid                                The objid of the new onsite log object is returned by this parameter.       

**Examples  **

 Create a new onsite log related to Case "3". The creation time is 4:00 pm on September 10, 1998. A sample note is shown, and the resolution will be the list default. The user and performing user will both default to the current Clarify user. Once created, the new objid will be placed in the ol_objid variable.

**Visual Basic:**

   Dim ret_int  As Integer

Dim ol_objid As Long

ret_int = fcfo.create_onsite_log("CASE", "3", _

"09/10/98 16:00:00", "", _

"New Onsite Log note", "", "", "")

   If ret_int = 0 Then

     ol_objid = fcfo.ret_objid

   End If

**JavaScript:**

var ret_int = fcfo.create_onsite_log("CASE", "3",

  "09/10/98 16:00:00", "",

  "New Onsite Log note", "", "", "");

if (ret_int == 0){ var ol_objid = fcfo.ret_objid; }

 Create a new onsite log related to subcase "4-1". All other parameters will default.

**Visual Basic:**

   Dim ret_int  As Integer

Dim ol_objid As Long

ret_int = fcfo.create_onsite_log("SUBCASE", "4-1", "", "", _

                                  "", "", "", "")

   If ret_int = 0 Then

     ol_objid = fcfo.ret_objid

   End If

**JavaScript:**

var ret_int = fcfo.create_onsite_log("SUBCASE", "4-1", "", "",

                                     "", "", "", "");

if (ret_int == 0){ var ol_objid = fcfo.ret_objid; }