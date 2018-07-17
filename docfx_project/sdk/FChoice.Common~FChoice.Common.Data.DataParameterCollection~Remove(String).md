     Remove(String) Method                                                   

Remove(String) Method

The natural name of the parameter to remove from the collection.

Removes a parameter with the specified name from the collection.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub Remove( _
   ByVal _name_ As String _
) 

public void Remove( 
   string _name_
)

#### Parameters

_name_

The natural name of the parameter to remove from the collection.

Remarks

The **_name_** parameter is the natural name of the parameter. That is, the unaltered non-provider-specific name. For example, it would be the "name" value, not the "@name" value (for MS SQL Server) or ":name" (for Oracle).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Remove.md)