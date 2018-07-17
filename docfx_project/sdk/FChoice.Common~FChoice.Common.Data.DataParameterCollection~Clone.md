     Clone Method (DataParameterCollection)                                                   

Clone Method (DataParameterCollection)

Creates a new collection using the same parameters.

Syntax

```vbnet
```csharp

'Declaration
 

Public Function Clone() As [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)

public [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md) Clone()

#### Return Value

A new collection with copies of the references to the same parameters.

Remarks

Note that this is not a deep clone. A new collection is created with new references pointing to the same underlying parameter objects. For a true deep clone (both the collection AND the parameters, see the [DeepClone](FChoice.Common~FChoice.Common.Data.DataParameterCollection~DeepClone.md) method).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)