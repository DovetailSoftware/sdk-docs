_create_eco_item_
-------------------

Public Function create_eco_item( _

                         ByVal focus_type As Long, _

                         ByVal active As Long, _

                         ByVal eco_hdr_code As String, _

                         ByVal apply_mod_level As Long, _

                         ByVal result_mod_level As Long) As Integer

**Description**

This API is used to create new ECO items. It requires that a valid ECO Header be specified. The objid of the ECO item created is returned in the object property _ret_objid_  (FCDR.ret_objid).

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

focus_type                            Yes                         This points the ECO item to 5148 for ECO headers, or 329 for Mod levels.

active                                     Yes                         Sate of the ECO item, 1 for active, 0 for inactive.

eco_hdr_code                      Yes                         ECO Code of the ECO Header this item will be attached to.

apply_mod_level                 Yes                         Objid of part and revision affected by the ECO.

result_mod_level                 Yes                         Objid of resulting part and revision following implementation of the ECO..

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Invalid Focus Type Specified

-2                                             Invalid Value for Active Indicator

-3                                             Specified ECO Header is not in database

-4                                             Specified Apply-to Mod Level is not in database

-5                                             Specified Results-in Mod Level is not in database

-6                                             Specified Role Name and Apply-to Mod Level already in database

ret_objid                                Output                   Returns the objid of the newly created ECO Item

**Examples  **

 Create a new ECO item. It will relate to ECO Header "8", be active, and change part 268435464 to part 268435465.

**JavaScript:**

var ret_int = fcdr.create_eco_item(5148, 1, "8", 268435464, 268435465);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcdr.create_eco_item(5148, 1, "8", 268435464, 268435465)