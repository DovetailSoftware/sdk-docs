### Remove(IDbDataParameter) Method

The parameter to remove from the collection.

Removes a parameter from the collection.

Syntax

```vbnet
'Declaration

Public Overloads Sub Remove( _
   ByVal _param_ As IDbDataParameter _
) 
```

```csharp
public void Remove( 
   IDbDataParameter _param_
)
```

#### Parameters

_param_

The parameter to remove from the collection.

Remarks

If the parameter passed in is null or does not already exist in the collection, nothing will happen and no error will be thrown. Otherwise, the parameter will be removed from the collection.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Remove.md)