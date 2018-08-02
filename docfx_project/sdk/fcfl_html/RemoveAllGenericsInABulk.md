_RemoveAllGenericsInABulk_
--------------------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Sub RemoveAllGenericsInABulk(BulkName As String)
```

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| BulkName | Yes | Name of the bulk to clear out |

#### Description

This method removes (and closes) all generics in a Bulk object that you identify by name. This is useful if you don't remember which generics are in the Bulk object. If the Bulk is not the empty bulk, this method will also close and reclaim the memory for the bulk.

**Example**

This example removes all items from a Bulk.

**Visual Basic:**
```
fc_session.RemoveAllGenericsInABulk "MyBulk"
```