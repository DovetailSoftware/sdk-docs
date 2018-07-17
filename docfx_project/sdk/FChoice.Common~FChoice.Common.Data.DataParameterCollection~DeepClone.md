     DeepClone Method                                                   

DeepClone Method

Performs a deep clone of the entire collection and clones (not just a reference copy) each individual parameter

Syntax

```vbnet
```csharp

'Declaration
 

Public Function DeepClone() As [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)

public [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md) DeepClone()

#### Return Value

The newly cloned collection

Remarks

The cloned collection will be a complete clone that will be completely disassociated from the original. Any changes made to either collection will **NOT** be reflected in the other collection.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)