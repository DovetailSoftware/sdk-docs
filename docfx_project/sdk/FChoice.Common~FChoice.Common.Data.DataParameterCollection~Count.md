### Count Property (DataParameterCollection)

Retrieves the number of parameters actually contained in the DataParameterCollection.

#### Syntax

```vbnet
'Declaration

Public ReadOnly Property Count As Integer
```

```csharp
public int Count {get;}
```

#### Property Value

Count is always the actual number of parameters in the collection, not it's capacity. The Capacity is managed internally and will increase as necessary to handle new parameters.

#### Remarks

The number of parameters actually contained in the DataParameterCollection.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)