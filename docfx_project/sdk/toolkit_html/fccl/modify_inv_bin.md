modify_inv_bin
----------------

Public Function modify_inv_bin(ByVal old_name As String, _
                               ByVal new_name As String, ByVal loc_name As String, _
                               ByVal is_active As Boolean)

**Description**

This API is used to modify the name or the active flag of an existing bin. You may not move the bin to another location with this API, only rename it at the existing location.

#### Parameters
**Parameter Name**                **Required?**             **Description**

old_name                               Yes                         Previous name for the bin

new_name                             Yes                         New name for the bin. If the bin isn't changing names, this argument can

                                                                                be left blank

loc_name                               Yes                         Name of the inventory location where the bin is located

is_active                                                Yes                         Is the bin active (True) or inactive (False)

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Missing old name parameter

-2                                             Missing new name parameter

-3                                             Missing location name parameter

-4                                             The specified location is not found

-5                                             The bin name already exists at that location

**Examples**

 Rename "Bin 42" to "Bin 42a" in Austin.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.modify_inv_bin("Bin 42", "Bin42a", "Austin", True)

**Javascript:**

var ret_int = fccl.modify_inv_bin("Bin 42", "Bin42a", "Austin", True);

 Make bin "Bin ABZ" in San Jose inactive.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.modify_inv_bin("Bin ABZ", "", "San Jose", False)

**Javascript:**

var ret_int = fccl.modify_inv_bin("Bin ABZ", "", "San Jose", False);