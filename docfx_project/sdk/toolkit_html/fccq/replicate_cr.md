replicate_cr
------------

Public Function replicate_cr (ByVal cr_id As String, _

ByVal user_name As String, _

                              ByVal rep_date As String, _

                              ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified change request to be replicated (copied) to a new CR. The new CR has all of the same fields/values/relations as the original (including relations to solutions) with a few exceptions:

1. It has a new CR ID generated for it

2. There is extra text placed in the CR history to show the start and end of the replicated CR history

3. A new activity log entry is added to show the replication (one is added to the original record as well)

The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

cr_id                                       Yes                         The change request to replicate

user_name                             No                           The user who replicated the change request. If left blank, the current user

performs the replication

rep_date                                                No                           When was the change request replicated. If this parameter is left blank, the

replication occurs at the current time

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors; sets objid and id_number of new bug object in ret_objid (Long) and ret_id_num (String) global variables

-1                                             Cannot find the specified change request

-2                                             The change request is currently closed

-3                                             Cannot find the specified user

-4                                             Cannot find gbst_elm rank  8400 for string REPLICATE CR

-5                                             Cannot find gbst_elm rank 11800 for string REPLICATE TO

-6                                             Cannot find the specified user's employee record for relating time bomb

ret_objid                                Output                   Returns the objid of the replicated change request

ret_id_num                            Output                   Returns the id of the replicated change request

**Examples  **

 Tony replicates CR '10' at 10PM on November 23rd of 1997. Generate a time bomb.

**Visual Basic:**

Dim replicate_objid  As Long

Dim replicate_id_num As String

Dim ret_int          As Integer

ret_int = fccq.replicate_cr("10", "tony", _

                            "11/23/97 22:00:00", True)

 If ret_int = 0 Then

   replicate_objid = fccq.ret_objid

   replicate_id_num = fccq.ret_id_num

   End If

**JavaScript:**

var ret_int = fccq.replicate_cr("10", "tony",

                            "11/23/97 22:00:00", true);

 if (ret_int == 0) {

   var replicate_objid = fccq.ret_objid;

   var replicate_id_num = fccq.ret_id_num;

   }