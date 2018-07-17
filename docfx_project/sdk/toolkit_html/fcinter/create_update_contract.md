create_update_contract
------------------------

create_update_contract_list
-----------------------------

Public Function create_update_contract(ByVal contract_id As String, _

                                       ByVal contract_type As String, _

                                 ByVal status As String, _

                                 ByVal po_number As String, _

                                 ByVal pay_options As String, _

                                 ByVal phone_resp As Long, _

                                 ByVal onsite_resp As Long, _

                                 ByVal hours_for_pm As String, _

                                 ByVal start_date As String, _

                                 ByVal expire_date As String, _

                                 ByVal unit_type As String, _

                                 ByVal units_purch As Double, _

                                 ByVal units_used As Double, _

                                 ByVal units_avail As Double, _

                                 ByVal spec_consid As Long, _

                                 ByVal notes As String, _

                                 ByVal int_fld1 As String, _

                                 ByVal int_val1 As Long, _

                                 ByVal int_fld2 As String, _

                                 ByVal int_val2 As Long, _

                                 ByVal str_fld1 As String, _

                                 ByVal str_val1 As String, _

                                 ByVal str_fld2 As String, _

                                 ByVal str_val2 As String, _

                                 ByVal date_fld1 As String, _

                                 ByVal date_val1 As String) As Integer

Public Function create_update_contract_list(ByVal contract_id As String, _

                                            ByVal contract_type As String, _

                                            ByVal status As String, _

                                            ByVal po_number As String, _

                                            ByVal pay_options As String, _

                                            ByVal phone_resp As Long, _

                                            ByVal onsite_resp As Long, _

                                            ByVal hours_for_pm As String, _

                                            ByVal start_date As String, _

                                            ByVal expire_date As String, _

                                            ByVal unit_type As String, _

                                            ByVal units_purch As Double, _

                                            ByVal units_used As Double, _

                                            ByVal units_avail As Double, _

                                            ByVal spec_consid As Long, _

                                            ByVal notes As String, _

                                            Optional fld_list As Variant, _

                                            Optional type_list As Variant, _

                                            Optional val_list As Variant) _

                                            As Integer

**Description**

These APIs create or update a contract. An existing contract can be updated, or a new contract can be created.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

contract_id                            No                           Contract Id, an existing one, or blank one for new contract

contract_type                       No                           Contract Type, from list. If no value given, default is used (create), or no

change is made (update)

status                                     No                           Contract Status, from list. If no value given, default is used (create), or no

change is made (update)

po_number                            No                           Purchase order number for the contract. If none given (update), no change is

made

pay_options                         No                           Payment options for the contract. If none is given (create), default is used. If

none is given (update), no change is made

phone_resp                           No                           How much time (in seconds) before we should call back. If <0 (update), no

change is made

onsite_resp                           No                           How much time (in seconds) before we should be on site. If <0 (update), no

change is made

hours_for_pm                       No                           The business hours for PM. If none given (update), no change is made

start_date                              No                           The effective date of this contract. If none given (update), no change is made

expire_date                            No                           The expiration date of this contract. If none given (update), no change is

made

units_used                            No                           The number of units used. If none given (update), no change is made

units_avail                            No                           The number of units available. If none given (update), no change is made

spec_consid                         No                           Turns the flag on/off for special considerations (0 = off, 1 = on). If no change

(update), then set to -1

notes                                      No                           Notes (special consid) to be added or changed on the contract. These notes

are only displayed if the spec_consid field = 1

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

-1                                             Specified Contract Type Not Found

-2                                             Specified Contract Status Not Found

-3                                             Specified Start Date is invalid

-4                                             Specified Expire Date is invalid

-5                                             Expire Date is earlier than the Start Date

-6                                             One of the Unit values is negative (-1 is allowed)

-7                                             Units Available does not equal Units Purchased minus Units Used

-8                                             Special Consideration needs to be 0 (false) or 1 (true)

ret_objid                                Output                   Returns the objid of the contract

**Examples**

 Create a new software support contract.  Use the default status. Assign a purchase order to it, and use 1 hour and 1 day as the response times. Set the start date and end date, and they purchased 50 phone calls. Add some special considerations to the contract.

**Visual Basic:**

Dim ret_int        As Integer

Dim contract_objid As Long

ret_int = fcinter.create_update_contract("","Software Support", _

                                         "", "PO1234", _

                                         "", 3600, 86400, "", _

                                         "1/1/2000 8:00:00", _

                                         "12/31/2000 8:00:00", "Call",_

                                         50, 0, 50, 1, "Good contract!", _

                                         "", 0, "", _

                                            0, "", "", "", "", "", "")

 If ret_int = 0 Then

      contract_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.create_update_contract("","Software Support",

                                         "", "PO1234",

                                         "", 3600, 86400, "",

                                         "1/1/2000 8:00:00",

                                         "12/31/2000 8:00:00", "Call",

                                         50, 0, 50, 1, "Good contract!",

                                         "", 0, "",

                                            0, "", "", "", "", "", "");

 if (ret_int == 0){ var contract_objid = fcinter.ret_objid; }