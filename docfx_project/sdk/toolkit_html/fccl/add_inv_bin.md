add_inv_bin
-------------

Public Function add_inv_bin(ByVal bin_name As String, _
        ByVal loc_name As String, ByVal is_active As Boolean)

**Description**

This API is used to add inventory bins to existing locations. The bin name can be set, as well as if it is an active bin or not.

#### Parameters
**Parameter Name**                **Required?**             **Description**

bin_name                               Yes                         The name of the new inventory bin

loc_name                               Yes                         Name of the inventory location where the bin is located

is_active                                                Yes                         Is the bin active (True) or inactive (False)

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Missing bin name parameter

-3                                             Missing location name parameter

-4                                             The specified location is not found

-5                                             The bin name already exists at that location

ret_objid                                Output                   Returns the objid of the newly created inventory bin

**Examples**

 Add a bin at the "Austin" site named "Bin 42". It is active

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.add_inv_bin("Bin 42", "Austin", True)

**Javascript:**

var ret_int = fccl.add_inv_bin("Bin 42", "Austin", true);

 Add an inactive bin named "Bin ABZ" in San Jose.

**Visual Basic:**

    Dim ret_int As Integer

ret_int = fccl.add_inv_bin("Bin ABZ", "San Jose", False)

**Javascript:**

var ret_int = fccl.add_inv_bin("Bin ABZ", "San Jose", false);