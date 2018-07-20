### Remove(String) Method

The natural name of the parameter to remove from the collection.

Removes a parameter with the specified name from the collection.

Syntax

```vbnet
'Declaration

Public Overloads Sub Remove( _
   ByVal _name_ As String _
) 
```

```csharp
public void Remove( 
   string _name_
)
```

#### Parameters

_name_

The natural name of the parameter to remove from the collection.

Remarks

The **_name_** parameter is the natural name of the parameter. That is, the unaltered non-provider-specific name. For example, it would be the "name" value, not the "@name" value (for MS SQL Server) or ":name" (for Oracle).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Remove.md)