_create_dr_labor_
-------------------

Public Function create_dr_labor(ByVal demand_dtl_objid As Long, _

                          ByVal labor_type As String, _

                          ByVal start_time As String, _

                          ByVal duration As Long, _

                          ByVal billable As Integer, _

                          ByVal bill_to As String, _

                          ByVal wrk_center As String, _

                          ByVal tl_rate As Double, _

                          ByVal perf_by As String, _

                          ByVal creation_time As String) As Integer

**Description**

This API allows labor performed to be logged against a depot repair part.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

demand_dtl_objid                Yes                         Object ID of specified part request.

labor_type                             No                           Labor type for this Depot Repair change. Will use default if not supplied.

start_time                              Yes                         Time and date at which labor began.

duration                                                 Yes                         Length of time required to do the work, in seconds.

billable                                   No                           Indicates whether labor is billable.

bill_to                                     No                           Indicates who is billed for the labor. Will use default if not supplied.

wrk_center                            No                           Indicates where labor was perfromed.

tl_rate                                     No                           This is the labor rate for the performing employee.

perf_by                                  No                           Indicates the technician who performed the labor. Will default to the

                                                                                current Clarify user if not supplied.

creation_time                        No                           Indicates the time this action is logged. Will default to the current time if a

different time is not supplied.

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Specified Start Time is not a valid date/time value

-2                                             Specified Duration in seconds is not more than zero

-3                                             Specified Labor Type is not in database

-4                                             Specified Bill To Labor is not in database

-5                                             Specified Work Center is not in database

-6                                             Specified User is not in database

-7                                             Related Part Request record is not in database

ret_objid                                Output                   Returns the objid of the newly created time log record

**Examples  **

 Create a billable labor segment against Part Repair 268435465. The default labor type was used, it started at 1:00 pm on September 9th, 1998, and lasted 10 minutes (600 seconds). All other defaults are used.

**JavaScript:**

var ret_int = fcdr.create_dr_labor(268435465, "", "09/09/1998 13:00", 600, 1,

                             "", 0, "", 0, "", "", "", "")

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcdr.create_dr_labor(268435465, "", "09/09/1998 13:00", 600, 1, _

                             "", 0, "", 0, "", "", "", "")