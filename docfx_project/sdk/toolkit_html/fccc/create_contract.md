create_contract
---------------

create_contract_list
----------------------

CreateContract
--------------

CreateContractList
------------------

Public Function create_contract(ByVal contract_id As String, _
                ByVal title_str As String, ByVal create_date As String, _
                ByVal acct_id As String, ByVal acct_name As String, _
                ByVal first_name As String, ByVal last_name As String, _
                ByVal phone_num As String, ByVal type_str As String, _
                ByVal term_str As String, ByVal curr_str As String, _
                ByVal new_status As String, ByVal admin_name As String, _
                ByVal bill_to_site_id As String, ByVal ship_to_site_id As String, _
                ByVal eff_date As String, ByVal exp_date As String, _
                ByVal start_date As String, ByVal end_date As String, _
                ByVal user_name As String, ByVal queue_name As String, _
                ByVal warranty As Boolean, ByVal evergreen As Boolean, _
                ByVal renew_prior As Long, ByVal gen_time_bombs As Boolean, _
                ByVal int_fld1 As String, ByVal int_val1 As Long, _
                ByVal int_fld2 As String, ByVal int_val2 As Long, _
                ByVal str_fld1 As String, ByVal str_val1 As String, _
                ByVal str_fld2 As String, ByVal str_val2 As String, _
                ByVal date_fld1 As String, ByVal date_val1 As String) As Integer

Public Function create_contract_list(ByVal contract_id As String, _
                ByVal title_str As String, ByVal create_date As String, _
                ByVal acct_id As String, ByVal acct_name As String, _
                ByVal first_name As String, ByVal last_name As String, _
                ByVal phone_num As String, ByVal type_str As String, _
                ByVal term_str As String, ByVal curr_str As String, _
                ByVal new_status As String, ByVal admin_name As String, _
                ByVal bill_to_site_id As String, ByVal ship_to_site_id As String, _
                ByVal eff_date As String, ByVal exp_date As String, _
                ByVal start_date As String, ByVal end_date As String, _
                ByVal user_name As String, ByVal queue_name As String, _
                ByVal warranty As Boolean, ByVal evergreen As Boolean, _
                ByVal renew_prior As Long, ByVal gen_time_bombs As Boolean, _
                Optional fld_list As Variant, Optional type_list As Variant, _
                Optional val_list As Variant) As Integer

**Description**

These APIs are used to create new contracts. Each contract requires a unique, valid title. Everything else is optional. You may specify either an account or contact for a contract (or neither), you may specify a contract ID or let the API auto-generate the contract ID for you. You may specify the user who created the contract as well as the contract's administrator, and you may specify additional fields. You may have a creation time bomb generated (for notifications). The objid of the contract created is returned. You may also specify a bill-to and ship-to site. These sites will be related to the default schedule. If empty, no site is related. If you do not wish to associate an account or contact against the contract, leave the account and contact parameters empty. You may also initially dispatch the contract. If you specify a queue name, the contract will be dispatched to that queue.

**Note:** _CreateContract_ and _CreateContractList_ are the same methods as _create_contract_ and _create_contract_list_ respectively.  They are alternate entry points to preserve backwards compatibility to **Clear Basic API Toolkit for Clear Contracts** naming.

#### Parameters
**Parameter Name**                **Required?**             **Description**

contract_id                            No                           Input/Output to either set or return the the newly created contract ID

title_str                                  Yes                         The title for the new contract, must be unique

create_date                           No                           Date the contract was created.  Will default to current time.

acct_id                                   No                           Account ID for related account.

acct_name                             No                           Name of the account to which the contract is related to .

first_name                             No                           First name of contact associated with the case

last_name                              No                           Last name of contact associated with the case

phone_num                           No                           Phone number of contact associated with the case

type_str                                 No                           Type of contract.  Will use default list value if not supplied

term_str                                 No                           Terms of contract.  Will use default list value if not supplied

curr_str                                  No                           Currency for contract.  Will use default if value not supplied

New_status                           No                           Status of the contract.  Will use default if value not supplied

admin_name                          No                           Administrator of the contract.  Will use current user if not supplied         

bill_to_site_id                      No                           Site ID of site to use for bill-to site of the schedule. If empty, no site is used

ship_to_site_id                    No                           Site ID of site to use for ship-to site of the schedule. If empty, no site is used

eff_date                                 No                           Effective date for the contract.  Will use current date if not supplied

exp_date                                No                           Expiration date for the contract.  Will use current date if not supplied

start_date                              No                           Date service begins.  Will use current date if not supplied

end_date                               No                           Date service ends.  Will use current date if not supplied

user_name                             No                           Owner of the contract.  Will use current user if not supplied

queue_name                         No                           Queue to dispatch newly created contract to

warranty                                                No                           Warranty flag for contract

evergreen                              No                           Evergreen flag for contract

renew_prior                           No                           Days to renew prior to expiry date

gen_time_bombs                 No                           Flag to create time bombs.  Default is FALSE

fld_list                                    No                           List of fields to set

type_list                                                No                           List of data types for each field in fld_list

val_list                                   No                           List of values to set for each field in fld_list

int_fld1, int_fld2                   No                           Names of additional fields to write

str_fld1, str_fld2

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. These values are only used if the

str_val1, str_val2                                                 corresponding field name field is filled with a valid field name

date_val1

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Found zero or many accounts.  Your criteria must return one and only one account.

-2                                             Found zero or many contacts.  Your criteria must return one and only one account.

-3                                             Could not find user specified

-4                                             Could not find WipBin specified

-5                                             Could not find Currency specified

-6                                             Could not find user record for administrator specified

-7                                             Could not find status specified

-8                                             Could not find appropriate activity element for the create event

-9                                             Could not find specified queue

-10                                           Could not find contract type specified

-11                                           Could not find contract terms specified

-12                                           User did not specify required field for title

-13                                           Stored procedure for numbering scheme not found

-14                                           Service end date before Service start date

-15                                           Contract expiry date before effective date

-16                                           Contract is not unique

-17                                           Specified bill-to site does not exist

-18                                           Specified ship-to site does not exist

-19                                           Could not find default price program of US Std Price List

ret_id_num                            Output                   Returns the id of the newly created contract

ret_objid                                Output                   Returns the objid of the newly created contract

**Examples**

 Create a new contract with title 'White House'. Specify the account of 'Major Movers', and contact of 'George Bush'. Also, generate a time bomb. All other information is defaulted.  Contract ID and objid are returned.

**Field version:**

**JavaScript:**

var ret_int = cl_cc.create_contract_list( "", "White House", _
                "", "", "White House", "George", "Bush", _
                "", "", "", "", "", "", "", "", "", _
                "", "", "", "", "", "", "", "", "TRUE", _
                "", 0, "", "", "", "")

**Visual Basic:**

Dim ret_int      As Integer

Dim objid        As Long

Dim contract_id  As String

ret_int = cl_cc.create_contract_list( "", "White House", _
                "", "", "White House", "George", "Bush", _
                "", "", "", "", "", "", "", "", "", _
                "", "", "", "", "", "", "", "", "TRUE", _
                "", 0, "", "", "", "")

If ret_int = 0 Then

  contract_id = fc_cc.ret_id_num

  objid = fc_cc.ret_objid

End If

**List version:**

**JavaScript:**

var fld_list  = Server.CreateObject("FCFLCompat.FCList");

var type_list = Server.CreateObject("FCFLCompat.FCList");

var val_list  = Server.CreateObject("FCFLCompat.FCList");

var ret_int;

fld_list.AppendItem("x_close_int1");

type_list.AppendItem("Long");

val_list.AppendItem("1");

fld_list.AppendItem("x_close_int2");

type_list.AppendItem("Long");

val_list.AppendItem("456");

fld_list.AppendItem("x_summary2");

type_list.AppendItem("String");

val_list.AppendItem("More text");

fld_list.AppendItem("x_other_date");

type_list.AppendItem("Date");

val_list.AppendItem("1/1/99");

var ret_int = cl_cc.create_contract_list(contract_id, "White House", _
                "", "", "White House", "George", "Bush", "", _
                "", "", "", "", "", "", "", "", "", "", _
                "", "", "", "", "", "", "TRUE", _
                fld_list, type_list, val_list)

**Visual Basic:**

 Dim ret_int             As Integer

Dim objid               As Long

Dim contract_id         As String

Dim fld_list            As New FCFLCOMPAT.FCLIST

Dim type_list           As New FCFLCOMPAT.FCLIST

Dim val_list            As New FCFLCOMPAT.FCLIST

fld_list.ItemType = "String"

type_list.ItemType = "String"

val_list.ItemType = "String"

ret_int = cl_cc.create_contract_list(contract_id, "White House", _
                "", "", "White House", "George", "Bush", "", _
                "", "", "", "", "", "", "", "", "", "", _
                "", "", "", "", "", "", "TRUE", _
                fld_list, type_list, val_list)

If ret_int = 0 Then

  contract_id = fc_cc.ret_id_num

  objid = fc_cc.ret_objid

End If