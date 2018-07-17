dispatch_fe
-----------

Public Function dispatch_fe(ByVal case_id As String, _

                  ByVal user_name As String, ByVal dispatch_time As String, _

      ByVal work_order As String, ByVal appointment_time As String, _

                  ByVal duration As Long, ByVal description As String, _

      ByVal cont_fname As String, ByVal cont_lname As String, _

      ByVal address1 As String, ByVal address2 As String, _

      ByVal city As String, ByVal state As String, _

      ByVal zipcode As String, ByVal main_phone As String, _

      ByVal alt_phone As String, ByVal site_id As Long, _

      ByVal pay_method As String, ByVal ref_number As String, _

      ByVal notes As String, ByVal requested_eta As String, _

      ByVal appt_confirm As Long, ByVal cell_text As String, _

      ByVal proxy As String, ByVal removed As Long, _

      ByVal gen_time_bomb As Boolean) As Integer

**Description**

This API creates a dispatch field engineer (work order) record. The caller may specify the appointment time and duration, text about the work order and other fields such as the payment method. The contact and site for the dispatch will be derived from the case/subcase. If this is not correct, the address for the site for the dispatch can be specified in the site_id field. If that is **mostly** correct, but some fields need to be overridden, they can in the extra phone and address fields supplied. Finally, a time bomb for the dispatch FE action can be generated, or not.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

case_id                                  Yes                         The case (or subcase) that the dispatch FE is for

user_name                             No                           The user who dispatched the FE request. If left blank, the current

user performs the dispatch

dispatch_time                       No                           When is the dispatch logged. If left blank, it will be logged at the current

                                                                                time

work_order                            No                           The ID of the work order. If left blank, "." is used for the work order

appointment_time                No                           When to add an appointment for the work order. If left blank, the current time

is used

duration                                 No                           The length (in seconds) of the appointment. If left blank, the duration is calculated

                                                                                from the start and end times

description                            No                           Description of the dispatch FE. If left blank, the description is set to the title

                                                                                of the case or subcase

cont_fname                           No                           Contact first name to override case/subcase contact

cont_lname                           No                           Contact last name to override case/subcase contact

address1                                                No                           Address line 1 (if override desired)

address2                                                No                           Address line 2 (if override desired)

city                                         No                           Address city (if override desired)

state                                       No                           Address state (if override desired)

zipcode                                  No                           Address zipcode (if override desired)

main_phone                          No                           Contact's phone (if override desired)

alt_phone                              No                           Alternate phone (if override desired)

site_id                                    No                           Site for dispatch if case/subcase site is not OK

pay_method                          No                           Payment method used. If left blank, default is used

ref_number                            No                           Reference number for work order

notes                                      No                           Notes about the work order

requested_eta                       No                           When should the engineer arrive (date/time). If left blank, the current time

is used as the time for arrival

appt_confirm                        No                           Is the appointment confirmed? Default is 0 (not)

cell_text                                 No                           Cell text for the appointment in schedule tracker

proxy                                      No                           Optional proxy field. Defaults to "" on the activity record if not specified

removed                                 No                           Optional remove field. Defaults to 0 on the activity record if not specified

gen_time_bomb                   Yes                         Should a time_bomb be created?

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Could not find Specified case/subcase in database

-2                                             Could not find the contact for specified case/subcase

-3                                             Cannot find the 'Field Dispatch' activity string with rank = 700

-4                                             Specified user name is not valid

-5                                             Specified PAY_METHOD not found in database

-6                                             The requested ETA is not a valid date

-7                                             Cannot find employee record for specified user

ret_objid                                The objid of the new dispatch_fe object is returned by this parameter.

**Examples**

 Dispatch an Engineer for case 3. "sa" logged the request, and we built up the work order number. Override all contact/site information, and generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

   ret_int = fcfo.dispatch_fe("3", "sa", "", "work order" & _

                               DatePart("m", Date), "", 0, "", _

                "Sam", "Tyson", "112 Jupiter Hollow", _

                "Shack #69", "Jupiter", "MN", "88775", _

                "512-418-2905", "",0,  "", "", "", "", _

                0, "", "", 0, True)

**JavaScript:**

   var ret_int = fcfo.dispatch_fe("3", "sa", "", "work order" &

                                  DatePart("m", Date), "", 0, "",

                   "Sam", "Tyson", "112 Jupiter Hollow",

                   "Shack #69", "Jupiter", "MN", "88775",

                   "512-418-2905", "",0,  "", "", "", "",

                   0, "", "", 0, true);

 Dispatch an engineer for subcase 42-2. Don't fill in any extra information. Don't generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

   ret_int = fcfo.dispatch_fe("42-2", "", "", "", "", 0, "", _

                "", "", "", "", "", "", "", "", "", _

                0,  "", "", "", "", 0, "", "", 0, False)

**JavaScript:**

   var ret_int = fcfo.dispatch_fe("42-2", "", "", "", "", 0, "",

                "", "", "", "", "", "", "", "", "",

                0,  "", "", "", "", 0, "", "", 0, false);