create_bom
----------

Public Function create_bom(ByVal parent_part As String, _
                           ByVal parent_dom As String, _
                           ByVal parent_rev As String, _
                           ByVal child_part As String, _
                           ByVal child_dom As String, _
                           ByVal child_rev As String, _
                           ByVal quantity As Long) As Integer

**Description**

This API places a revision of a part in a bill of materials for another part/revision. You must specify the parent part/rev as well as the child part/rev. Finally, you must specify how many of the child parts are contained in the parent part.

#### Parameters
**Parameter Name**                **Required?**             **Description**

parent_part                           Yes                         Part number of the parent part

parent_dom                           Yes                         Domain of the parent part

parent_rev                             Yes                         Mod_level of the parent part

child_part                              Yes                         Part number of the child part

child_dom                             Yes                         Domain of the child part

child_rev                               Yes                         Mod_level of the child part

quantity                                 Yes                         How many of the child part/rev are in the parent part/rev

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Quantity must be positive

-2                                             Parent part and child part may not be the same part

-3                                             Cannot find the parent part/rev

-4                                             Cannot find the child part/rev

-5                                             The parent part is already in the BOM of the child part. Cannot have circular BOMs

ret_objid                                Output                   Returns the objid of the new address

**Examples**

 Add 2 batteries (rev '') in the BOM of  "Computer rev 1.0".

**Visual Basic:**

Dim ret_int    As Integer

Dim bom_objid  As Long

ret_int = fcinter.create_bom("Computer", "Product","1.0", _
                             "Battery","Quantity", "", 2)

 If ret_int = 0 Then

      bom_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.create_bom("Computer", "Product","1.0",

                             "Battery","Quantity", "", 2);

 if (ret_int == 0){ var bom_objid = fcinter.ret_objid; }