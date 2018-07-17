change_cr_state
-----------------

Public Function change_cr_state(ByVal cr_id As String, _

                ByVal new_status As String, new_condition As String, _

                ByVal change_date As String, _

                ByVal notes As String, ByVal user_name As String, _

                ByVal gen_time_bombs As Boolean, _

                ByVal wipbin As String, ByVal test_case As String, _

                ByVal int_release As String, ByVal master_cr As String, _

                ByVal int_fld1 As String, ByVal int_val1 As Long, _

                ByVal int_fld2 As String, ByVal int_val2 As Long, _

                ByVal str_fld1 As String, ByVal str_val1 As String, _

                ByVal str_fld2 As String, ByVal str_val2 As String, _

                ByVal date_fld1 As String, ByVal date_val1 As String) As Integer

**Description**

This API causes the specified change request to have its status and/or condition changed. This function is basically a wrapper function for multiple APIs (change_cr_status, fix_cr, close_cr, fix_failed, reopen_cr, and duplicate_cr).  Depending on the current condition of the CR and the new_condition parameter, the appropriate API will be called.

<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none"><tbody><tr><td width="223" valign="top" style="width:167.1pt;border:solid black 1.0pt;
  background:black;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt"><b>Current CR Condition</b></p></td><td width="223" valign="top" style="width:167.1pt;border:solid black 1.0pt;
  border-left:none;background:black;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt"><b>new_condition</b></p></td><td width="223" valign="top" style="width:167.1pt;border:solid black 1.0pt;
  border-left:none;background:black;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt"><b>Which API is called</b></p></td></tr><tr><td width="223" valign="top" style="width:167.1pt;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">Any</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">Same as Current CR condition</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">change_cr_status</p></td></tr><tr><td width="223" valign="top" style="width:167.1pt;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">Any</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">CR Fixed</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">fix_cr</p></td></tr><tr><td width="223" valign="top" style="width:167.1pt;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">Any</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">CR Closed</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">close_cr</p></td></tr><tr><td width="223" valign="top" style="width:167.1pt;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">Any</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">CR Closed/Duplicate</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">duplicate_cr</p></td></tr><tr><td width="223" valign="top" style="width:167.1pt;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">CR Fixed</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">CR Open</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">fix_failed</p></td></tr><tr><td width="223" valign="top" style="width:167.1pt;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">CR Closed</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">CR Open</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">reopen_cr</p></td></tr><tr><td width="223" valign="top" style="width:167.1pt;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">CR Closed/Duplicate</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">CR Open</p></td><td width="223" valign="top" style="width:167.1pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="margin-right:22.5pt">reopen_cr</p></td></tr></tbody></table>

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

cr_id                                       Yes                         The change request Id to change status for

new_status                           No                           The new status for the change request. If blank, the default status is used

new_condition                     Yes                         The new condition for the change request

change_date                         No                           When was the CR status changed. If this parameter is left blank, the CR is

status changed at the current time

notes                                      No                           Notes for the status change

user_name                             No                           The user who changed the status. If left blank, the current user performs

the change status

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

wipbin                                    No                           The WIPBin to place the change request in. If left blank, the default WIPBin

                                                                                is used (for reopen_cr)

test_case                               No                           Test case string for closure (for close_cr and fix_failed)

int_release                             No                           Release information for the closure (for close_cr and fix_failed)

master_cr                               No                           The ID of the master (parent) CR (for duplicate_cr)

int_fld1, int_fld2                   No                           Names of additional fields to write.  Must use "" if not using

str_fld1, str_fld2                                                   these parameters

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. Must use "" (string) or 0 (long)

str_val1, str_val2                                                 if not using these parameters

date_val1

**Returns**

All return codes are defined by which API is called, as this API is simply a wrapper.

**Examples  **

 Change status for change request number '10' to a new status and condition. The change status is performed by the current user and is changed at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = FCCQ.change_cr_state("10",strNewStatus,strNewCondition,"", 

             strReason,"",true, "",test_case,int_release,master_cr,                                                                                    

             "",0,"",0,"","","","","","")