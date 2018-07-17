log_lead_phone
----------------

Public Function log_lead_phone(ByVal lead_objid As Long, _

                               ByVal the_text As String, _

                               ByVal iuo As String, _

                               ByVal first As String, _

                               ByVal last As String, _

                               ByVal phone As String, _

                               ByVal action As String, _

                               ByVal log_date As String, _

                               ByVal duration As Long, _

                               ByVal user_name As String, _

                               ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API allows you to log a phone for a lead. You must specify the objid of the lead (since no other information on the lead is unique), and the description (phone text).  You must also specify a contact for the log. If you want to use the lead as the contact (and not a real contact), then leave the first, last, and phone fields blank, and this will use the lead. You must specify the length of the phone call (in seconds).

There are a variety of optional items that you may set, including the action type of the call, when the call started, and who logged the call.

The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

lead_objid                             Yes                         The unique object ID of the lead

the_text                                  No                           Note text

iuo                                          No                           Internal Use Only optional text for the phone log

first                                         Yes                         First name of the related contact. If you wish to use the lead as the contact,

leave this field blank

last                                          Yes                         Last name of the related contact. If you wish to use the lead as the contact,

leave this field blank

phone                                     Yes                         Phone number of the related contact. If you wish to use the lead as the

contact, leave this field blank

action                                     No                           Phone Log Action Type. If blank, the default value of the code list is used

log_date                                                No                           When was the call logged? If blank, current date/time used

duration                                 Yes                         How long did the call last, in seconds

user_name                             No                           Who logged the note? If blank, current user is used

gen_time_bombs                 Yes                         Should a time bomb be created? Values are "True" or "False".

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Cannot find the specified lead

-2                                             The specified user is not found

-3                                             The PHONE LOG activity string is not found

-4                                             Cannot find the specified contact

-5                                             Cannot locate the specified phone log action type

-6                                             The duration is < 0

**Examples  **

 Sam logged a call on December 12, 2000 (at 11AM) for a lead. The text is "Hello there", and the call lasted 3 minutes and 15 seconds. Do not specify an action type. Use the lead as the contact. Generate time bombs.

**JavaScript:**

var ret_int = fcsfa.log_lead_phone(268435458, "Hello there", "", "", "", "",

                                   "", "12/12/2000 11:00:00",

                                   195, "sam", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.log_lead_phone(268435458, "Hello there", "", "", "", "", _

                               "", "12/12/2000 11:00:00", 195, "sam", True)

 Log another call for the same lead. Specify a contact and an action type, and log it at the current time and from the current user. The call lasted 30 seconds, and don't generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.log_lead_phone(268435458, "More notes", "", "Jane", "Doe",

                                   "555-1212", "Outgoing call", "",

                                   30, "", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.log_lead_phone(268435458, "More notes", "", "Jane", "Doe", _

                               "555-1212", "Outgoing call", _

                               "", 30, "", False)