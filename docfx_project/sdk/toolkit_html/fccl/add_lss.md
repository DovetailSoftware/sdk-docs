add_lss
-------

Public Function add_lss(ByVal site_id As String, _
                        ByVal loc_name As String, ByVal is_active As Boolean, _
                        ByVal loc_rank As Integer) As Integer

**Description**

This API is used to relate sites to the inventory locations that service them. The site and location must be specified, and the rank (from 1 upwards) of the order in which the locations service the site. The active flag denotes if the servicing is currently active.

#### Parameters
**Parameter Name**                **Required?**             **Description**

site_id                                    Yes                         Name of the site to be serviced

loc_name                               Yes                         Name of the servicing location

is_active                                                Yes                         Is the servicing active?

loc_rank                                 Yes                         Which servicing location is this. Ranks start at 1 and increase

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Site parameter value missing

-2                                             Location parameter value missing

-3                                             Invalid edit_type (not 0, 1, or 2). Internal error - should never be seen

-4                                             Servicing record already exists

-6                                             The specified site was not found

-7                                             The specified location not found

-8                                             New rank is greater than total number of items already in the list

ret_objid                                Output                   Returns the objid of the \[newly created\] service location

**Examples**

 Austin should service site 1 first.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.add_lss("1", "Austin", True, 1)

**Javascript:**

var ret_int = fccl.add_lss("1", "Austin", true, 1);

 Houston should service site 1 next.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.add_lss("1", "Houston", True, 2)

**Javascript:**

var ret_int = fccl.add_lss("1", "Houston", true, 2);