create_update_site
--------------------

create_update_site_list
-------------------------

Public Function create_update_site(ByVal site_objid As Long, _
                                   ByVal site_id As String, _
                                   ByVal site_name As String, _
                                   ByVal site_type As String, _
                                   ByVal bus_org As String, _
                                   ByVal status As String, _
                                   ByVal region As String, _
                                   ByVal district As String, _
                                   ByVal industry_type As String, _
                                   ByVal appl_type As String, _
                                   ByVal prim_addr As Long, _
                                   ByVal ship_addr As Long, _
                                   ByVal bill_addr As Long, _
                                   ByVal parent_site As String, _
                                   ByVal supp_office As String, _
                                   ByVal prim_emp As Long, _
                                   ByVal sec_emp As Long, _
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

Public Function create_update_site_list(ByVal site_objid As Long, _
                                        ByVal site_id As String, _
                                        ByVal site_name As String, _
                                        ByVal site_type As String, _
                                        ByVal bus_org As String, _
                                        ByVal status As String, _
                                        ByVal region As String, _
                                        ByVal district As String, _
                                        ByVal industry_type As String, _
                                        ByVal appl_type As String, _
                                        ByVal prim_addr As Long, _
                                        ByVal ship_addr As Long, _
                                        ByVal bill_addr As Long, _
                                        ByVal parent_site As String, _
                                        ByVal supp_office As String, _
                                        ByVal prim_emp As Long, _
                                        ByVal sec_emp As Long, _
                                        Optional fld_list As Variant, _
                                        Optional type_list As Variant,__
                                        Optional val_list As Variant) As Integer

**Description**

These APIs either create or update a site in the database.  If the site_id is set to 0, it is considered an insert. Otherwise, it is an update. If you are performing an update, you may specify either the site_objid or the site_id (whichever is more convenient), or both. If you do not want to use the site_id, set it to the string "NOTSUPPLIED". In this case, the site_objid is is used to find the site to update. If the site_id is set to any other string value, it will be used.

For inserts, some of the data must be supplied: site_type, status, and a primary address (objid). For updates, any blank data is not changed. For string variables, this is a blank string "". For integer variables (such as the addresses and employees), use -1 to not change the data.

In addition (for updates), the APIs allow you to blank some of the data. Setting the parent_site or support office fields to "REMOVE" will cause the site to be unrelated from the other site. Setting the site name to "REMOVE" will do the same. Setting the integer fields to "-2" will cause them to be unrelated.

The primary address is required for inserts. If the shipping and billing addresses are not supplied, they are defaulted to the same value as the primary address. For updates, you must specify the address to change to. If the value is set to -1 then no change is made.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| site_objid | Yes | For inserts, this is set to zero. For updates, set it to the site objid. If (for updates) the site_id is set to "NOTSUPPLIED", this field must be specified. If the site_id is specified for updates, this field is ignored. |
| site_id | No | For inserts, if this variable is blank, a new site_id is generated. For inserts, if this field is supplied, it will be used for the new site. For updates, supply the site_id to update. For updates, if this field is set to "NOTSUPPLIED", the site_objid is used to identify the site. |
| site_name | No | The name of the site. For updates, if you set it to "REMOVE", the site name will be cleared |
| site_type | No | Required for inserts. Must be one of: "CUST, INTR, RSEL, INDV". For updates, only changed if the value is supplied |
| bus_org | No | What account is this site in? If blank, the default site is used |
| status | No | Required for inserts. One of "ACTIVE, INACTIVE, OBSOLETE". For updates, only changed if the value is supplied |
| region | No | Region for the site. For updates, if blank, no change is made, and if set to "REMOVE", the field is cleared. |
| district | No | District of the site. For updates, if blank, no change is made, and if set to "REMOVE", the field is cleared. |
| industry_type | No | Value from the INDUSTRY_TYPE code list. For inserts,  if this is blank, the default value of the list is used. For updates, if blank, no change is made |
| appl_type | No | Value from the PRIMARY_USE code list. For inserts,  if this is blank, the default value of the list is used. For updates, if blank, no change is made |
| prim_addr | No | Objid of the primary address for the site. For inserts, this must be supplied. For updates, if set to -1, no change is made |
| ship_addr | No | Shipping address of the site. If set to -1 (for inserts), the primary address is used. If set to -1 for updates, no change is made |
| bill_addr | No | Billing address of the site. If set to -1 (for inserts), the primary address is used. If set to -1 for updates, no change is made |
| parent_site | No | Optional site_id of parent site. If left blank, no change is made (updates), and relation is not set (inserts). If you wish to clear the relation (updates), set the value to "REMOVE" |
| supp_office | No | Optional site_id of support office. If left blank, no change is made (updates), and relation is not set (inserts). If you wish to clear the relation (updates), set the value to "REMOVE" |
| prim_emp | No | Optional objid of primary support employee. If set to -1, no change is made (updates), or the relation is not set (inserts). If set to -2, the relation is unrelated |
| sec_emp | No | Optional objid of secondary support employee. If set to -1, no change is made. (updates), or the relation is not set (inserts). If set to -2, the relation is unrelated |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Site type is not valid or is not supplied (inserts)

-2                                             Status is not valid or is not supplied (inserts)

-3                                             The supplied industry type is not found

-4                                             The supplied application type is not found

-5                                             Could not locate specified parent site

-6                                             Could not locate specified support office site

-7                                             Could not locate specified primary employee

-8                                             Could not locate specified secondary employee

-9                                             Shipping address specified is not valid

-10                                           Billing address specified is not valid

-11                                           Primary address is not valid or is not supplied (inserts)

-12                                           Site with objid = ### cannot be found

-13                                           The parent site cannot be the same as this site

-14                                           The support office site cannot be the same as this site

-15                                           The supplied Site Id is already used for a different site

-16                                           The supplied account is not found

-17                                           Cannot find the 'Changed Primary' activity string with rank = 8100

-18                                           Cannot find the 'Changed Bill To' activity string with rank = 8200

-19                                           Cannot find the 'Changed Ship To' activity string with rank = 8300 |
| ret_objid | Output | Returns the objid of the site

**Examples**

 Add a new site. Set it with a site name, make it a customer site, and active. Set region/district to North/Northeast. Use the default industry type, and application type. Set the primary address and the billing address. Set a parent site, and a primary employee.

**Visual Basic:**

Dim ret_int    As Integer

Dim site_objid As Long

ret_int = fcinter.create_update_site(0, "", "My Site", "CUST", _
                                     "", "Active", _
                                     "North", "Northeast", _
                                     "", "", 268435457, -1, 268435459, _
                                     "42", "", 268435666, -1, _
                                     "", 0, "",_
                                     0, "", "", "", "", "", "")

 If ret_int = 0 Then

      site_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.create_update_site(0, "", "My Site",

                                     "CUST", "", "Active",

                                     "North", "Northeast",

                                     "", "", 268435457, -1, 268435459,

                                     "42", "", 268435666, -1, "", 0, "",

                                     0, "", "", "", "", "", "");

 if (ret_int == 0){ var site_objid = fcinter.ret_objid; }

 Add a new site with site_id of 'INTER123'. Set it with a site name, make it a customer site, and active. Set region/district to North/Northeast. Use the default industry type, and application type. Set the primary address and the billing address. Set a parent site, and a primary employee.

**Visual Basic:**

Dim ret_int    As Integer

Dim site_id    As String

site_id = "INTER123"

ret_int = fcinter.create_update_site(0, site_id, _
                                     "My Site", "CUST", _
                                     "", "Active", _
                                     "North", "Northeast", "", _
                                     "", 268435457, _
                                     -1, 268435459, _
                                     "42", "", 268435666, -1, _
                                     "", 0, "", 0, _
                                     "", "", "", "", "", "")

**Javascript:**

var site_id = "INTER123"

var ret_int = fcinter.create_update_site(0, site_id, "My Site",

                                     "CUST", "", "Active",

                                     "North", "Northeast", "",

                                     "", 268435457, -1, 268435459,

                                     "42", "", 268435666, -1,

                                     "", 0, "", 0,

                                     "", "", "", "", "", "");

 Update site '42'. Set the support office to site "56", and clear out the primary support employee and parent site.

**Visual Basic:**

Dim ret_int    As Integer

Dim site_id    As String

site_id = "42"

ret_int = fcinter.create_update_site(268435600, site_id, "", _
                                     "", "", "", _
                                     "", "", "", "", -1, -1, -1, _
                                     "REMOVE", "56", -2, -1, "", 0, _
 "", 0, "", "", "", "", "", "")

**Javascript:**

var site_id = "42"

var ret_int = fcinter.create_update_site(268435600, site_id, "",

                                     "", "", "",

                                     "", "", "", "", -1, -1, -1,

                                     "REMOVE", "56", -2, -1, "", 0,

                                     "", 0, "", "", "", "", "", "");