modify_eco_item
-------------------

Public Function modify_eco_item(ByVal eco_mod_role_objid As Long, _
                          ByVal focus_type As Long, _
                          ByVal active As Long, _
                          ByVal eco_hdr_code As String, _
                          ByVal applies_to_mod As Long, _
                          ByVal results_in_mod As Long)

**Description**

This API modifies an existing labor or material detail.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| eco_mod_role_objid | Yes | The objid of the ECO item object to be modified. |
| focus_type | Yes | This points the ECO item to 5148 for ECO headers, or 329 for Mod levels. This can also be -1 to ignore any change to this item. |
| active | Yes | Sate of the ECO item, 1 for active, 0 for inactive. This can also be -1 to ignore any change to this item. |
| eco_hdr_code | No | ECO Code of the ECO Header this item will be switched to, or an empty string for no change. |
| applies_to_mod | No | Objid of part and revision affected by the ECO, or 0 for no change. |
| results_in_mod | No | Objid of resulting part and revision following implementation of the ECO, or 0 for no change. |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Invalid Role Name Specified

-2                                             Invalid Value for Active Indicator

-3                                             Specified ECO Mod Role is not in database

-4                                             Specified ECO Header is not in database

-5                                             Specified Applies-To Mod Level is not in database

-6                                             Specified Results-In Mod Level is not in database

-7                                             Specified Role Name and Apply-to Mod Level already exists in database

**Examples**

 Modify ECO item 268435460, to result in part 268435465.

**JavaScript:**

var ret_int = fcdr.modify_eco_item(268435460, -1, -1, "", 0, 268435465);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcdr. modify_eco_item(268435460, -1, -1, "", 0, 268435465)