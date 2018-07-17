modify_lss
----------

Public Function modify_lss(ByVal site_id As String, _

                           ByVal loc_name As String, ByVal loc_rank As Integer) As Integer

**Description**

This API is used to change the order of the locations servicing a site. The new rank is given to the item, and all other ranks are changed as necessary.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

site_id                                    Yes                         Name of the site to be serviced

loc_name                               Yes                         Name of the servicing location

loc_rank                                 Yes                         Which servicing location is this. Ranks start at 1 and increase

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Site parameter value missing

-2                                             Location parameter value missing

-3                                             Invalid edit_type (not 0, 1, or 2). Internal error - should never be seen

-4                                             Servicing record does not exist

-5                                             No change is needed for this rank

-6                                             The specified site was not found

-7                                             The specified location not found

-8                                             New rank is greater than total number of items already in the list

**Examples**

 Austin should service site 1 third.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.modify_lss("1", "Austin", 3)

**Javascript:**

var ret_int = fccl.modify_lss("1", "Austin", 3);

 Houston should service site 1 next.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.modify_lss("1", "Houston", 4)

**Javascript:**

var ret_int = fccl.modify_lss("1", "Houston", 4);