### preclose_subcase

---

Public Function preclose_subcase(case_id As String) As Integer

**Description**

This API is used if you wish to see all of the summed times (such as phone log time, billable and non-billable expense, etc) for a subcase about to be closed. This is particularly useful in web applications, where you wish to display the captured times for a subcase, so that a user can modify them (the actual times).

If you wish to just close a subcase (and have the times automatically summed), you do not need to call this API. In that case, just call on _close_subcase_.

The results of the API are returned in the output string _ret_id_num_. While the results are **_not_** an id_number, they are returned in this string. See the Results section for details of the format of the string.

**Note**: There are a number of bugs with the default Clarify close subcase summation on the form. There are not sufficient fields defined in the close_case record for the graphical fields they show. Hence, the data doesn't always make sense. For example, the "total phone time captured" should be the total of the phone time captured for the case and for all general subcases. But the GUI form points that field to the total for the phone logs captured for the case (not showing the subcase). Hence, this API defines the data as captured from the real data. How you present it is up to you.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

subcase_id                            Yes                         The subcase to sum

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Cannot find the specified subcase

-2                                             The specified subcase is already closed

The results of the API are returned in the string _ret_id_num_. The values are separated by a pipe ("|") character. They are:

* 1. Captured phone time
* 2. Captured research time
* 3. Captured non-billable time
* 4. Captured billable time
* 5. Captured non-billable expenses
* 6. Captured billable expenses

**Examples  **

 Preclose subcase number 'C154-1'. Get the value for the captured phone logs, and for the captured billable expenses.

**JavaScript:**

var ret_int = fccs.preclose_subcase("C154-1");

var c_phone = fc_session.GetItem(fccs.ret_id_num, 1, 1, "|");

var c_bill = fc_session.GetItem(fccs.ret_id_num, 6, 6, "|");

**Visual Basic:**

   Const PIPE      =  "|"

   Dim ret_int     As Integer

Dim c_phone     As Long

Dim t_phone     As Long

Dim c_bill      As Long

Dim t_bill      As Long

ret_int = fccs.preclose_subcase("C154-1")

c_phone = CLng(fc_session.GetItem(fccs.ret_id_num, 1, 1, PIPE))

c_bill = CLng(fc_session.GetItem(fccs.ret_id_num, 6, 6, PIPE))