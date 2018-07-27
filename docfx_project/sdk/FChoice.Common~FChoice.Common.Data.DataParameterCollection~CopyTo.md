### CopyTo Method (DataParameterCollection)

Copies the parameters in this collection to the specified collection.

Copies the parameters in this collection to the specified array or another DataParameterCollection.

#### Overload List

| Overload | Description |
| --- | --- |
| [CopyTo(DataParameterCollection)](FChoice.Common~FChoice.Common.Data.DataParameterCollection~CopyTo(DataParameterCollection).md) | Copies the parameters in this collection to the specified collection.   |
| [CopyTo(Array,Int32)](FChoice.Common~FChoice.Common.Data.DataParameterCollection~CopyTo(Array,Int32).md) | Copies the parameters in this collection to the specified array.   |

#### Remarks

The overload that takes a destination DataParameterCollection performs a shallow copy. That is, each element is **NOT** cloned, but a reference to the same parameter is copied into the destination collection.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)