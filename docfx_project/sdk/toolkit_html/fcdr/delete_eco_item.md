_delete_eco_item_
-------------------

```
Public Function delete_eco_item(ByVal eco_item_objid As Long) As Integer
```

#### Description

This API will delete an ECO item object.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| eco_item_objid | Yes | The objid of the ECO item object to be deleted. |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Specified ECO Item is not in database |

#### Examples

Delete ECO Item 268435463.

**JavaScript:**

var ret_int = fcdr. delete_eco_item(268435463);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcdr. delete_eco_item(268435463)