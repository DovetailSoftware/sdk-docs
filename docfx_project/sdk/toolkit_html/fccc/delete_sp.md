delete_sp
---------

```
Public Function delete_sp(ByVal sp_objid As Long) As Integer
```

#### Description

This API is used to delete a site_part in Clarify, and then unrelate the site_part from all other related records. Several Contracts customers have needed this function, so it was added.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| sp_objid | Yes | Objid of the site_part |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Could not find the specified site_part |

#### Examples

Delete a site_part with an objid of 268435457.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fc_cc.delete_sp(268435457)
```
