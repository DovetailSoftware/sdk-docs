preclose_case
-------------

Public Function preclose_case(case_id As String) As Integer

**Description**

This API is used if you wish to see all of the summed times (such as phone log time, billable and non-billable expense, etc) for a case about to be closed. This is particularly useful in web applications, where you wish to display the captured times for a case, so that a user can modify them (the actual times).

If you wish to just close a case (and have the times automatically summed), you do not need to call this API. In that case, just call on _close_case_.

The results of the API are returned in the output string _ret_id_num_. While the results are **_not_** an id_number, they are returned in this string. See the Results section for details of the format of the string.

**Note**: There are a number of bugs with the default Clarify close case summation on the form. There are not sufficient fields defined in the close_case record for the graphical fields they show. Hence, the data doesn't always make sense. For example, the "total phone time captured" should be the total of the phone time captured for the case and for all general subcases. But the GUI form points that field to the total for the phone logs captured for the case (not showing the subcase). Hence, this API defines the data as captured from the real data. How you present it is up to you.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| case_id | Yes | The case to sum |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified case

-2                                             The specified case is already closed

The results of the API are returned in the string _ret_id_num_. The values are separated by a pipe ("|") character. They are:

1) Total phone time (closed subcase and phone log for the case)

2) Captured phone time (case phone logs only)

3) Actual phone time (closed subcase only)

4) Total research time (closed subcase and research logs for the case)

5) Captured research time (case research logs only)

6) Actual research time (closed subcase only)

7) Total non-billable time (closed subcase and case time logs)

8) Captured non-billable time (case time logs only)

9) Total billable time (closed subcase and case time logs)

10) Captured billable time (case time logs only)

11) Total non-billable expenses (closed subcase and case expense logs)

12) Captured non-billable expenses (case time logs only)

13) Total billable expenses (closed subcase and case expense logs)

14) Captured billable expenses (case time logs only)

**Examples**

 Preclose case number 'C154'. Get the value for the captured and total phone logs, and for the captured and total billable expenses.

**JavaScript:**

var ret_int = fccs.preclose_case("C154");

var c_phone = fc_session.GetItem(fccs.ret_id_num, 2, 2, "|");

var t_phone = fc_session.GetItem(fccs.ret_id_num, 1, 1, "|");

var c_bill = fc_session.GetItem(fccs.ret_id_num, 14, 14, "|");

var t_bill = fc_session.GetItem(fccs.ret_id_num, 13, 13, "|");

**Visual Basic:**

   Const PIPE      =  "|"

   Dim ret_int     As Integer

Dim c_phone     As Long

Dim t_phone     As Long

Dim c_bill      As Long

Dim t_bill      As Long

ret_int = fccs.preclose_case("C154")

c_phone = CLng(fc_session.GetItem(fccs.ret_id_num, 2, 2, PIPE))

t_phone = CLng(fc_session.GetItem(fccs.ret_id_num, 1, 1, PIPE))

c_bill = CLng(fc_session.GetItem(fccs.ret_id_num, 14, 14, PIPE))

t_bill = CLng(fc_session.GetItem(fccs.ret_id_num, 13, 13, PIPE))