create_interact
---------------

create_interact_list
----------------------

Public Function create_interact(ByVal the_title As String, _

                     ByVal the_notes As String, ByVal first As String, _

                     ByVal last As String, ByVal phone As String, _

                     ByVal zipcode As String, ByVal reason1 As String, _

                     ByVal reason2 As String, ByVal prod_name As String, _

                     ByVal direction As String, ByVal the_type As String, _

                     ByVal origin As String, ByVal done_in_one As Boolean, _

                     ByVal result As String, ByVal fee_based As Boolean, _

                     ByVal pay_option As String, ByVal lead_source As String, _

                     ByVal start_date As String, ByVal duration As Long, _

                     ByVal wait_time As Long, ByVal entered_time As Long, _

                     ByVal user_name As String, ByVal gen_time_bomb As Boolean, _

                     ByVal int_fld1 As String, ByVal int_val1 As Long, _

                     ByVal str_fld1 As String, ByVal str_val1 As String, _

                     ByVal str_fld2 As String, ByVal str_val2 As String, _

                     ByVal date_fld1 As String, ByVal date_val1 As String) As Integer

Public Function create_interact_list(ByVal the_title As String, _

                     ByVal the_notes As String, ByVal first As String, _

                     ByVal last As String, ByVal phone As String, _

                     ByVal zipcode As String, ByVal reason1 As String, _

                     ByVal reason2 As String, ByVal prod_name As String, _

                     ByVal direction As String, ByVal the_type As String, _

                     ByVal origin As String, ByVal done_in_one As Boolean, _

                     ByVal result As String, ByVal fee_based As Boolean, _

                     ByVal pay_option As String, ByVal lead_source As String, _

                     ByVal start_date As String, ByVal duration As Long, _

                     ByVal wait_time As Long, ByVal entered_time As Long, _

                     ByVal user_name As String, ByVal gen_time_bomb As Boolean, _

                     Optional fld_list As Variant, Optional type_list As Variant, _

                     Optional val_list As Variant) As Integer

**Description**

This API creates an interaction in Clarify. An interaction stores information on communications with contacts. This API saves the reason for the interaction, if the interaction is product related, how much time was spent with the contact, and so on. It actually creates an interact record and an activity log entry, and allows time bomb records to be created.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

the_title                                 No                           Title of the interaction

the_notes                              No                           Notes for the interaction

first                                         Yes                         Contact First Name

last                                          Yes                         Contact Last Name

phone                                     Yes                         Contact Phone

zipcode                                  No                           Contact Zip Code

reason1                                  No                           Choice from Interaction Reason_1 User-Defined List

reason2                                  No                           Choice from Interaction Reason_2 User-Defined List

prod_name                            No                           Choice from Interaction Product User-Defined List

direction                                                No                           Choice from Interaction Direction User-Defined List

the_type                                                No                           Choice from Interaction Type User-Defined List

origin                                      No                           Choice from Interaction Origin User-Defined List

done_in_one                        Yes                         Indicates whether interaction is done-in-one (true) or not (false)

result                                      No                           Choice from Interaction Result Code User-Defined List

fee_based                              Yes                         Indicates whether interaction is fee-based (true) or not (false)

pay_option                           No                           Choice from Interaction Pay Option User-Defined List

lead_source                          No                           Name of person who provided lead

start_date                              No                           Interaction Start Date and Time

duration                                 No                           Length of  the Interaction

wait_time                               No                           Waiting time for the Interaction

entered_time                         No                           Entered Length of  the Interaction

user_name                             No                           User that performed the Interaction

gen_time_bomb                   Yes                         Should a time bomb be added to the system for business rule firing?

int_fld1, int_fld2                   No                           Names of additional fields on table_interact to write

str_fld1, str_fld2

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. These values are only used if the

str_val1, str_val2                                                 corresponding field name field is filled with a valid field name

date_val1

fld_list                                    Yes                         List of additional field names on table_interact to write.

List must be present, but does not need to have any items in the list

type_list                                                Yes                         List of additional field data types to write. List must be present, but does not

                                                                                need to have any items in the list

val_list                                   Yes                         List of additional field values to write. List must be present, but does not

                                                                                need to have any items in the list

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Specified User not found

-2                                             Supplied Reason1 code is invalid

-3                                             Supplied Reason2 code is invalid

-4                                             Supplied Product Name is invalid

-5                                             Supplied Direction is invalid

-6                                             Supplied Type is invalid

-7                                             Supplied Origin is invalid

-8                                             Supplied Result Code is invalid

-9                                             Supplied Pay Option is invalid

-10                                           Specified Lead source not found

-11                                           Specified Contact not found

-12                                           Interaction duration is negative or equal zero

-13                                           Bad wait time supplied. Must be > 0

-14                                           Cannot find the activity string with rank = 500

-15                                           Specified User's Employee record not found

ret_objid                                Output                   Returns the objid of the Interaction

ret_id_num                            Output                   Returns the Interaction id number

**Examples**

 Create a new Interaction

**Visual Basic:**

the_title = ""

the_notes = ""

first = "Joe"

last = "Contact"

phone = "512-123-4567"

zipcode = "02021"

reason1 = "Order"

reason2 = ""

prod_name = ""

direction = "Inbound"

the_type = "Call"

origin = "800#"

done_in_one = True

result = "Placed Order"

fee_based = False

pay_option = "Credit Card"

lead_source = ""

start_date = "12/27/2002 10:30"

duration = 5

wait_time = 0

entered_time = 0

user_name = "sam"

gen_time_bomb = False

int_fld1 = ""

int_val1 = 0

str_fld1 = ""

str_val1 = ""

str_fld2 = ""

str_val2 = ""

date_fld1 = ""

date_val1 = ""

   ret_int = fcinter.create_interact(the_title, the_notes, first, last, _

                     phone, zipcode, reason1, reason2, _

                     prod_name, direction, the_type, origin, _

                     done_in_one, result, fee_based, pay_option, _

                     lead_source, start_date, duration, _

                     wait_time, entered_time, user_name, _

                     gen_time_bomb, _

                     int_fld1, int_val1, _

                     str_fld1, str_val1, _

                     str_fld2, str_val2, _

                     date_fld1, date_val1)

   If ret_int = 0

      InteractionObjid = fcinter.ret_objid

      InteractionId = fcinter.ret_id_num

   End If

**Javascript:**

the_title = "";

the_notes = "";

first = "Joe";

last = "Contact";

phone = "512-123-4567";

zipcode = "02021";

reason1 = "Order";

reason2 = "";

prod_name = "";

direction = "Inbound";

the_type = "Call";

origin = "800#";

done_in_one = True;

result = "Placed Order";

fee_based = False;

pay_option = "Credit Card";

lead_source = "";

start_date = "12/27/2002 10:30";

duration = 5;

wait_time = 0;

entered_time = 0;

user_name = "sam";

gen_time_bomb = False;

int_fld1 = "";

int_val1 = 0;

str_fld1 = "";

str_val1 = "";

str_fld2 = "";

str_val2 = "";

date_fld1 = "";

date_val1 = "";

   var ret_int = fcinter.create_interact(the_title, the_notes, first, last,

                     phone, zipcode, reason1, reason2,

                     prod_name, direction, the_type, origin,

                     done_in_one, result, fee_based, pay_option,

                     lead_source, start_date, duration,

                     wait_time, entered_time, user_name,

                     gen_time_bomb,

                     int_fld1, int_val1,

                     str_fld1, str_val1,

                     str_fld2, str_val2,

                     date_fld1, date_val1);

   if(ret_int == 0) {

      var InteractionObjid = fcinter.ret_objid;

      var InteractionId = fcinter.ret_id_num;

   }