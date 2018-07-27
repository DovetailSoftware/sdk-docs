### Clone Method (DataParameterCollection)

Creates a new collection using the same parameters.

#### Syntax

```vbnet
'Declaration

Public Function Clone() As DataParameterCollection
```

```csharp
public DataParameterCollection Clone()
```

#### Return Value

A new collection with copies of the references to the same parameters.

#### Remarks

Note that this is not a deep clone. A new collection is created with new references pointing to the same underlying parameter objects. For a true deep clone (both the collection AND the parameters, see the [DeepClone](FChoice.Common~FChoice.Common.Data.DataParameterCollection~DeepClone.md) method).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)