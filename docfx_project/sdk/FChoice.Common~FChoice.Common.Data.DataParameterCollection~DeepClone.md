### DeepClone Method

Performs a deep clone of the entire collection and clones (not just a reference copy) each individual parameter

#### Syntax

```vbnet
'Declaration

Public Function DeepClone() As DataParameterCollection
```

```csharp
public DataParameterCollection DeepClone()
```

#### Return Value

The newly cloned collection

#### Remarks

The cloned collection will be a complete clone that will be completely disassociated from the original. Any changes made to either collection will **NOT** be reflected in the other collection.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)