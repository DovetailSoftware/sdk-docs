### RemoveAt Method (DataParameterCollection)

The index of the parameter to remove.

Removes the parameter at the specified index from the collection.

#### Syntax

```vbnet
'Declaration

Public Sub RemoveAt( _
   ByVal _index_ As Integer _
) 
```

```csharp
public void RemoveAt( 
   int _index_
)
```

#### Parameters

_index_

The index of the parameter to remove.

#### Remarks

All parameters with higher indexes then this parameter will be shifted down one in index to fill the gap.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)