### RemoveAllGenerics

**Object and Type**

Object  : FCBulk

Type    : Method

**Prototype**

```
Public Sub RemoveAllGenerics()
```

#### Description

This method removes (and closes) all generics in a Bulk object. This is useful if you don't remember which generics are in the Bulk object. If the Bulk is not the empty bulk, this method will also close and reclaim the memory for the bulk.

**Example**

This example removes all items from a Bulk.

**Visual Basic:**
```
boCase.Bulk.RemoveAllGenerics
```