     Remove(IDbDataParameter) Method                                                   

Remove(IDbDataParameter) Method

The parameter to remove from the collection.

Removes a parameter from the collection.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub Remove( _
   ByVal _param_ As [IDbDataParameter](#) _
) 

public void Remove( 
   [IDbDataParameter](#) _param_
)

#### Parameters

_param_

The parameter to remove from the collection.

Remarks

If the parameter passed in is null or does not already exist in the collection, nothing will happen and no error will be thrown. Otherwise, the parameter will be removed from the collection.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Remove.md)