     RemoveAt Method (DataParameterCollection)                                                   

RemoveAt Method (DataParameterCollection)

The index of the parameter to remove.

Removes the parameter at the specified index from the collection.

Syntax

```vbnet
```csharp

'Declaration
 

Public Sub RemoveAt( _
   ByVal _index_ As [Integer](#) _
) 

public void RemoveAt( 
   [int](#) _index_
)

#### Parameters

_index_

The index of the parameter to remove.

Remarks

All parameters with higher indexes then this parameter will be shifted down one in index to fill the gap.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)