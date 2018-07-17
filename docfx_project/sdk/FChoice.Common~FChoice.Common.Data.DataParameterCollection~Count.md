     Count Property (DataParameterCollection)                                                   

Count Property (DataParameterCollection)

Retrieves the number of parameters actually contained in the DataParameterCollection.

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property Count As [Integer](#)

public [int](#) Count {get;}

#### Property Value

Count is always the actual number of parameters in the collection, not it's capacity. The Capacity is managed internally and will increase as necessary to handle new parameters.

Remarks

The number of parameters actually contained in the DataParameterCollection.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)